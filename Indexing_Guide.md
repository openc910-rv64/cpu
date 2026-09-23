# C910 IDU — RTL Analysis & DeepWiki Indexing Guide

## 1. Repository Identity & Scope

`c910-idu` is a dependency-pruned RTL isolation of the **Instruction Decode Unit (IDU)** from the XuanTie/T-Head C910 RISC-V processor, extracted for standalone analysis and DeepWiki/ReadWiki indexing — not as a complete core implementation.

Intended uses: module-hierarchy analysis, signal tracing, decode/control-path analysis, hazard/stall/flush analysis, dependency analysis, AI-assisted RTL exploration.

## 2. Repository Boundary

This repo contains **IDU + the RTL required to elaborate it**. It does **not** contain IFU, EXU, LSU, BIU, MMU, ROB, or other C910 stages, even though the original source tree includes them.

**Rule:** an unresolved reference to a sibling-stage module is an *intentional boundary*, not evidence of a broken extraction. Classify every unresolved reference (§8) before treating it as a gap.

```
External repo ──interface──► IDU (primary target) ──interface──► External repo
```

## 3. Directory Structure & Classification

| Path | Classification | Notes |
|---|---|---|
| `Dependency_RTL/idu/` | **Primary target** | Analyze first, deepest indexing priority |
| `Dependency_RTL/cpu/` | CPU-integration dependency | Shared interfaces/typedefs IDU consumes — not IDU logic itself |
| `Dependency_RTL/common/` | Shared dependency | Macros/utilities — relevant only where they sit on an IDU dependency path |
| `Dependency_RTL/clk/` | Clock/implementation dependency | Clock-gating cells IDU instantiates — not functional datapath |
| `Dependency_RTL/fpga/` | Implementation/technology dependency | FPGA substitutes for ASIC primitives, only relevant where they affect IDU behavior |
| `Docs/README.md` | Navigation guide | This file |
| `Docs/Detailed_doc.md` | Functional/microarchitectural doc | Architectural *intent* — verify against RTL, don't treat as ground truth |
| `Docs/Instantiation.md` | CPU-level instantiation/port binding | Structural reference — verify against RTL |
| `Docs/Module_hierarchy (1).json` | Machine-readable instantiation tree | Structural source of truth for "what instantiates what" |
| `Docs/filelists/` | Compile scope/order | Authoritative for what's included and in what order |

**Do not give non-`idu` directories equal architectural weight.** They exist only to support elaborating or understanding `idu`.

## 4. Analysis/Indexing Priority

```
1. Dependency_RTL/idu/                         (deepest indexing)
2. Module_hierarchy (1).json + Instantiation.md + filelists/   (structural graph)
3. Detailed_doc.md                             (functional supplement, verify vs RTL)
4. Dependency_RTL/{cpu,common,clk,fpga}         (resolve references only)
```

## 5. Module Identity Template

Fill in from actual RTL/hierarchy JSON — do not assume values from directory or file naming alone.

| Field | Value |
|---|---|
| Top-level IDU module name | *(from hierarchy JSON root)* |
| File path | *(from filelist)* |
| Parent module (CPU top) | *(from Instantiation.md)* |
| Direct child modules | *(from hierarchy JSON)* |
| Clock/reset ports | *(from RTL port list)* |

## 6. Source-of-Truth Precedence

When RTL, hierarchy, filelists, and docs disagree, resolve in this order — and **report the discrepancy explicitly rather than silently picking a winner**:

```
RTL implementation  >  structural connectivity (hierarchy/filelists)  >  documentation (Detailed_doc.md / Instantiation.md)
```

- **Structural truth** — module declarations, instances, ports, filelists → answers "how is it connected?"
- **Functional truth** — assignments, always blocks, FSMs, expressions → answers "what does it do?"
- **Documented intent** — Detailed_doc.md, comments → answers "what was it meant to do?" (not authoritative over RTL)

## 7. Interface Boundary Documentation

Document every top-level IDU port from the actual RTL — do not infer semantics from port names. For each port record: direction, width, function, and external endpoint (which sibling stage or shared block it connects to).

Group by category as a documentation checklist (fill from RTL, don't pre-populate with assumed signals):
- Instruction/fetch inputs (from IFU side)
- Register/operand/dependency inputs
- Pipeline control inputs (stall/flush/kill/valid — verify actual polarity and semantics per signal, never assume from name)
- Downstream outputs (to issue/execute side)
- Clock/reset

## 8. Known External / Blackboxed Modules

For every instantiated-but-not-present module, classify as one of:

- **External sibling subsystem** (e.g. IFU/EXU/LSU-side module)
- **Technology primitive** (clock-gating cell, memory macro, standard cell)
- **FPGA/simulation substitute**
- **Unknown — requires source-tree investigation** (do not guess; mark explicitly)

Never invent the function of an unresolved module.

## 9. Filelists & Compile Order

Compile/elaboration scope and order must be read from `Docs/filelists/` directly — do not assume directory listing order or infer order from the conceptual dependency direction below; that's a mental model only, not a substitute for the filelist:

```
definitions/includes → shared dependencies → leaf modules → intermediate IDU modules → IDU top
```

Flag anything non-obvious: generated files, macro-gated inclusion, forward dependencies.

## 10. Module Hierarchy JSON

`Module_hierarchy (1).json` is authoritative for **structural** relationships (instantiation tree). Cross-check against RTL instances and `Instantiation.md`. It answers "what instantiates what," not "why" — functional role comes from RTL analysis (§6), not the hierarchy file.

## 11. Per-Module Analysis Protocol

For each module worth indexing in depth, record:

- **Identity**: name, file, parent, children
- **Interface**: inputs/outputs, widths, clock, reset
- **State**: registers, memories, FSM state
- **Combinational behavior**: decode/mux/arithmetic/compare/control-gen logic, preserving actual priority ordering (don't flatten `if/else if` into equal-priority conditions)
- **Sequential behavior**: reset value/polarity, enable, hold, flush, stall handling per register
- **Dependencies**: instantiated modules, macros, packages
- **Architectural role**: why the module exists in the IDU pipeline

## 12. Signal Tracing Protocol

Trace both directions for any signal worth documenting:

- **Backward**: signal → assignment → source expression → input → originating module, until reaching instruction bits, architectural state, register-file output, external interface, clock/reset, or a constant.
- **Forward**: signal → consumer logic → derived signal → module output, until reaching a pipeline register or external interface boundary.

Don't stop tracing merely because a signal crosses a module boundary within `idu`.

## 13. Control-Signal Semantics

Never assume meaning from naming convention (`valid`, `stall`, `flush`, `kill`, `enable`, `bubble`). For each, document from RTL: source, polarity, assertion condition, consumers, and the actual state change it produces.

## 14. Cross-Reference Matrix

| Question | Preferred source |
|---|---|
| What modules exist? | RTL + hierarchy JSON |
| Who instantiates what? | RTL + hierarchy JSON |
| What ports/widths exist? | RTL |
| How are modules connected? | RTL + Instantiation.md |
| What compiles, in what order? | filelists |
| What was intended? | Detailed_doc.md |
| What actually happens? | RTL |
| What's external to this repo? | README §2/§8 + hierarchy + RTL |

## 15. Multi-Repository Boundary Handling

The full C910 is expected to be split into sibling repos (`c910-ifu`, `c910-idu`, `c910-exu`, `c910-lsu`, ...), each following primary-subsystem + dependencies + documented-external-interfaces structure. When a signal crosses into a sibling repo, document what it is, what it means, when it changes, and that the downstream implementation lives in the sibling repo — don't fabricate that implementation.

## 16. Confidence Classification

Label conclusions as:
- **Confirmed** — directly from RTL
- **Strongly supported** — RTL + hierarchy/docs agree
- **Interpretation** — reasonable inference from docs/connectivity, not RTL-verified
- **Unknown** — cannot be established from this repo; never silently converted to an assumption

## 17. Avoid Directory-Only / Name-Only Reasoning

A module's relevance is determined by its actual dependency-graph position (RTL + instantiation + signal connectivity + filelist membership), not by which directory it sits in or what it's named. A `common/` module can be IDU-critical; a `cpu/` module can be irrelevant infrastructure. Verify before weighting.

## 18. DeepWiki Indexing Directive

Build the index as an IDU-centric knowledge graph:

```
filelists ──┐
            ▼
hierarchy JSON ──► IDU RTL (primary) ◄── Instantiation.md
                        │
                        ▼
            Dependencies (cpu/common/clk/fpga)
                        │
                        ▼
                 Detailed_doc.md (supplement)
```

Goal: for any module, signal, or instruction path, be able to state how it propagates through the IDU RTL, why each module participates, and where the IDU's architectural boundary begins/ends — every claim traceable to file → module → signal → RTL expression, per §16.
