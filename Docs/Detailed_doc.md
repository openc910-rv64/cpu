C910
User Manual
| This manual | supports | the CPU | version | R1S6 |
| ----------- | -------- | ------- | ------- | ---- |
| Revision 06 |          |         |         |      |
2026-02-12

Copyright©2001-2026C-SKYMicrosystemsCo.,Ltd. Allrightsreserved.
ThisdocumentisthepropertyofC-SKYMicrosystemsCo.,Ltd. anditsaffiliates("C-SKY"). Thisdocumentmayonly
bedistributedto: (i)aC-SKYpartyhavingalegitimatebusinessneedfortheinformationcontainedherein,or(ii)
anon-C-SKYpartyhavingalegitimatebusinessneedfortheinformationcontainedherein. Nolicense,expressed
orimplied,underanypatent,copyrightortradesecretrightisgrantedorimpliedbytheconveyanceofthisdocu-
ment.Nopartofthisdocumentmaybereproduced,transmitted,transcribed,storedinaretrievalsystem,translated
intoanylanguageorcomputerlanguage,inanyformorbyanymeans,electronic,mechanical,magnetic,optical,
chemical,manual,orotherwisewithoutthepriorwrittenpermissionofC-SKY.
TrademarksandPermissions
TheC-SKYLogoandrelatedbrandtrademarks(includingXuanTie)aretrademarksofC-SKY.Allotherproductsor
servicenamesarethepropertyoftheirrespectiveowners.
Notice
Thepurchasedproducts,servicesandfeaturesarestipulatedbythecontractmadebetweenC-SKYandthecustomer.
Allorpartoftheproducts,servicesandfeaturesdescribedinthisdocumentmaynotbewithinthepurchasescope
ortheusagescope. Unlessotherwisespecifiedinthecontract,allstatements,information,andrecommendations
inthisdocumentareprovided"ASIS"withoutwarranties,guaranteesorrepresentationsofanykind,eitherexpress
orimplied.
Theinformationinthisdocumentissubjecttochangewithoutnotice.Everyefforthasbeenmadeinthepreparation
ofthisdocumenttoensureaccuracyofthecontents,butallstatements,information,andrecommendationsinthis
documentdonotconstituteawarrantyofanykind,expressorimplied.
杭州中天微系统有限公司C-SKYMicrosystemsCo.,Ltd.
Address: Room201,2/F,Building5,No.699WangshangRoad,ChangheStreet,BinjiangDistrict,Hangzhou,Zhe-
jiang,China
Website:www.xrvm.cn
Copyright©2001-2026杭州中天微系统有限公司，保留所有权利.
本文档的所有权及知识产权归属于杭州中天微系统有限公司及其关联公司(合称“中天微”)。本文档仅能分派给：(i)拥
有合法雇佣关系，并需要本文档信息的中天微员工，或(ii)非中天微关联但拥有合法合作关系，并且需要本文档信息的
合作方。未经中天微明示同意，不能擅自使用该文档。在未经中天微的书面许可的情形下，任何法律实体不得复制本
文档的任何部分，不得将本文档传播、转录、储存在检索系统中以及翻译成任何语言或计算机语言。
商标申明
中天微的LOGO和相关品牌商标（如XuanTie玄铁）归中天微所有，未经中天微的书面同意，任何法律实体不得使用中
天微的商标或者商业标识。
注意
您购买的产品、服务等应受中天微商业合同和服务条款的约束，本文档中描述的全部或部分产品、服务可能不在您的
购买或使用范围之内。除非另有约定，中天微对本文档内容不做任何明示或默示的声明和保证。
由于产品和服务升级或其他原因，本文档内容会不定期进行更新。除非另有约定，本文档仅作为使用指导，本文档中
的所有陈述、信息和建议不构成任何明示或暗示的担保。在法律允许的范围内，中天微不对任何第三方使用本文档产
生的损失承担任何法律责任。
杭州中天微系统有限公司C-SKYMicrosystemsCo.,Ltd.
地址:中国浙江省杭州市滨江区长河街道网商路699号5号楼2楼201室
网址:www.xrvm.cn
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved i

| Revision | History                     |            |
| -------- | --------------------------- | ---------- |
| Revision | Description                 | Date       |
| 01       | Releasefirstofficialversion | 2021-07-31 |
02 Addsimplifiedscenariosforthepower-downprocedure 2021-09-17
03 Updatetheaddressencodingdescriptionofpmpaddrregister 2021-10-25
| 04  | Updatevarioustextandfigures            | 2022-08-21 |
| --- | -------------------------------------- | ---------- |
| 05  | AddSYSMAPconfigurationreferencecontent | 2023-03-02 |
| 06  | Updatethemanualtemplate                | 2025-05-10 |
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved ii

Catalogue
Catalogue
1 Overview 1
1.1 Introduction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1
1.2 Features . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1
1.2.1 KeyArchitecturalFeaturesofC910MP . . . . . . . . . . . . . . . . . . . . 1
1.2.2 KeyFeaturesofC910Core . . . . . . . . . . . . . . . . . . . . . . . . . 2
1.3 ConfigurableOptions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 3
1.4 XuanTieExtendedArchitecture . . . . . . . . . . . . . . . . . . . . . . . . . . . 3
1.5 VersionCompatibility . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 4
1.6 NamingConvention . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 4
1.6.1 Symbols . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 4
1.6.2 Terms . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 5
2 C910Overview 7
2.1 StructureDiagram . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 7
2.2 In-CoreSubsystems . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 7
2.2.1 IFU . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 8
2.2.2 IDU . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 8
2.2.3 ExecutionUnit . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 8
2.2.4 LSU . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 8
2.2.5 RTU . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 9
2.2.6 MMU . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 9
2.2.7 PMP . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 9
2.3 Multi-CoreSubsystems . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 9
2.3.1 CIU . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 9
2.3.2 L2Cache . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 9
2.3.3 MasterDeviceInterface . . . . . . . . . . . . . . . . . . . . . . . . . . . 10
2.3.4 DCP . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10
2.3.5 PLIC . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10
2.3.6 Timer . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10
2.4 InterfaceOverview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10
3 InstructionSets 12
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved iii

Catalogue
3.1 RVBaseInstructionSets . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 12
3.1.1 IntegerInstructionSet(RV64I) . . . . . . . . . . . . . . . . . . . . . . . 12
3.1.2 MultiplicationandDivisionInstructionsSet(RV64M) . . . . . . . . . . . . 15
3.1.3 AtomicInstructionSet(RV64A) . . . . . . . . . . . . . . . . . . . . . . . 16
3.1.4 Single-PrecisionFloating-PointInstructionSet(RV64F) . . . . . . . . . . . 17
3.1.5 CompressedInstructionSet(RV64C) . . . . . . . . . . . . . . . . . . . . 20
3.2 XuanTieExtendedInstructionSet . . . . . . . . . . . . . . . . . . . . . . . . . . 22
3.2.1 ArithmeticOperationInstructions . . . . . . . . . . . . . . . . . . . . . . 22
3.2.2 BitManipulationInstructions . . . . . . . . . . . . . . . . . . . . . . . . 23
3.2.3 MemoryAccessInstructions . . . . . . . . . . . . . . . . . . . . . . . . 24
3.2.4 CacheInstructions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 28
3.2.5 Multi-CoreSynchronizationInstructions . . . . . . . . . . . . . . . . . . 29
3.2.6 Half-precisionFloating-pointInstructions . . . . . . . . . . . . . . . . . 30
4 CPUModeandRegister 33
4.1 CPUMode . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 33
4.2 RegisterView . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 34
4.3 General-PurposeRegisters(GPRs) . . . . . . . . . . . . . . . . . . . . . . . . . 35
4.4 Floating-PointRegisters . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 35
4.4.1 TransferDatabetweenFloating-PointandGPRs . . . . . . . . . . . . . . 36
4.4.2 MaintaintheConsistencyofRegisterPrecision . . . . . . . . . . . . . . . 36
4.5 SystemControlRegisters . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 37
4.5.1 StandardControlandStatusRegisters(CSRs) . . . . . . . . . . . . . . . 37
4.5.2 ExtendedCSRs . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 40
4.6 DataFormat . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 43
4.6.1 IntegerDataFormat . . . . . . . . . . . . . . . . . . . . . . . . . . . . 43
4.6.2 Floating-PointDataFormat . . . . . . . . . . . . . . . . . . . . . . . . . 43
4.7 Big-EndianandLittle-Endian . . . . . . . . . . . . . . . . . . . . . . . . . . . . 44
5 ExceptionandInterrupt 46
5.1 Overview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 46
5.2 Exception . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 48
5.2.1 ExceptionHandling . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 48
5.2.2 ExceptionReturn . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 49
5.2.3 ImpreciseExceptions . . . . . . . . . . . . . . . . . . . . . . . . . . . . 50
5.3 Interrupt . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 50
5.3.1 InterruptPriorities . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 50
5.3.2 InterruptResponse . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 51
5.3.3 InterruptReturn . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 51
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved iv

Catalogue
6 MemoryModel 52
6.1 Overview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 52
6.1.1 MemoryAttributes . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 52
6.1.2 MemoryConsistencyModel . . . . . . . . . . . . . . . . . . . . . . . . . 54
6.1.3 SYSMAPConfigurationReference . . . . . . . . . . . . . . . . . . . . . . 54
6.2 MMU . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 56
6.2.1 MMUOverview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 56
6.2.2 TLBOrganization . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 56
6.2.3 AddressTranslationProcess . . . . . . . . . . . . . . . . . . . . . . . . 57
6.2.4 SystemControlRegisters . . . . . . . . . . . . . . . . . . . . . . . . . . 59
6.2.4.1 MMUAddressTranslationRegister(SATP) . . . . . . . . . . . . . . . 59
6.2.4.2 MMUControlRegister(SMCIR) . . . . . . . . . . . . . . . . . . . . . 60
6.2.4.3 MMUIndexRegister(SMIR) . . . . . . . . . . . . . . . . . . . . . . 61
6.2.4.4 MMUEntryHiRegister(SMEH) . . . . . . . . . . . . . . . . . . . . . 62
6.2.4.5 MMUEntryLoRegister(SMEL) . . . . . . . . . . . . . . . . . . . . . 63
6.3 MMUParityCheck . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 65
6.4 PMP . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 65
6.4.1 PMPOverview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 65
6.4.2 PMPControlRegisters . . . . . . . . . . . . . . . . . . . . . . . . . . . . 66
6.4.2.1 PMPCFGRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . 66
6.4.2.2 PMPADDRRegister . . . . . . . . . . . . . . . . . . . . . . . . . . 69
6.5 MemoryAccessOrder . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 69
7 MemorySubsystem 70
7.1 MemorySubsystemOverview . . . . . . . . . . . . . . . . . . . . . . . . . . . 70
7.2 L1I-Cache . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 70
7.2.1 Overview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 70
7.2.2 BranchPrediction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 70
7.2.3 LoopAccelerationBuffer . . . . . . . . . . . . . . . . . . . . . . . . . . 71
7.2.4 BranchHistoryTable . . . . . . . . . . . . . . . . . . . . . . . . . . . . 71
7.2.5 BranchJumpTargetPredictor . . . . . . . . . . . . . . . . . . . . . . . . 71
7.2.6 IndirectBranchPredictor . . . . . . . . . . . . . . . . . . . . . . . . . . 72
7.2.7 ReturnAddressPredictor . . . . . . . . . . . . . . . . . . . . . . . . . . 72
7.2.8 FastJumpTargetPredictor . . . . . . . . . . . . . . . . . . . . . . . . . 73
7.3 L1D-Cache . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 73
7.3.1 Overview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 73
7.3.2 L1D-CacheCoherence . . . . . . . . . . . . . . . . . . . . . . . . . . . 74
7.3.3 ExclusiveAccess . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 74
7.4 L2Cache . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 75
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved v

Catalogue
7.4.1 L2CacheOverview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 75
7.4.2 CacheCoherence . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 76
7.4.3 Structure . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 76
7.4.4 RAMLatency . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 76
7.5 AcceleratedMemoryAccess . . . . . . . . . . . . . . . . . . . . . . . . . . . . 79
7.5.1 L1I-CacheInstructionPrefetch . . . . . . . . . . . . . . . . . . . . . . . 79
7.5.2 Multi-ChannelDataPrefetchofL1D-Cache . . . . . . . . . . . . . . . . . 79
7.5.3 L1AdaptiveWriteAllocationMechanism . . . . . . . . . . . . . . . . . . 80
7.5.4 L2PrefetchMechanism . . . . . . . . . . . . . . . . . . . . . . . . . . . 80
7.6 L1/L2CacheOperationInstructionandRegister . . . . . . . . . . . . . . . . . . 80
7.6.1 ExtendedL1CacheRegisters . . . . . . . . . . . . . . . . . . . . . . . . 80
7.6.2 ExtendedL2CacheRegisters . . . . . . . . . . . . . . . . . . . . . . . . 81
7.6.3 L1/L2CacheOperationInstructions . . . . . . . . . . . . . . . . . . . . . 81
7.7 L1/L2CacheProtectionMechanism . . . . . . . . . . . . . . . . . . . . . . . . 82
7.7.1 L1I-CacheParityCheck . . . . . . . . . . . . . . . . . . . . . . . . . . . 83
7.7.2 L1D-CacheECCCheck . . . . . . . . . . . . . . . . . . . . . . . . . . . 83
7.7.3 L2ECCCheck . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 84
8 SecurityDesign 86
8.1 SecurityRequirement . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 86
8.2 ProcessorSecurityModel . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 86
8.3 SystemSecurityArchitecture . . . . . . . . . . . . . . . . . . . . . . . . . . . . 88
8.3.1 SecureMemoryManagement . . . . . . . . . . . . . . . . . . . . . . . . 88
8.3.2 SecureInterrupts . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 92
8.3.3 SecureAccessControl . . . . . . . . . . . . . . . . . . . . . . . . . . . . 97
8.3.4 SecureDebug . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 98
9 InterruptController 99
9.1 CLINTInterruptController . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 99
9.1.1 AddressMappingofCLINTRegister . . . . . . . . . . . . . . . . . . . . . 99
9.1.2 SoftwareInterrupts . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 110
9.1.3 Timer . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 111
9.1.4 TimerInterrupts . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 112
9.2 PLIC . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 113
9.2.1 ArbitrationofInterrupts . . . . . . . . . . . . . . . . . . . . . . . . . . . 113
9.2.2 RequestandResponseofInterrupts . . . . . . . . . . . . . . . . . . . . 114
9.2.3 InterruptCompletion . . . . . . . . . . . . . . . . . . . . . . . . . . . . 114
9.2.4 PLICRegisterAddressMapping . . . . . . . . . . . . . . . . . . . . . . . 115
9.2.5 InterruptPriorityConfigurationRegister(PLIC_PRIO) . . . . . . . . . . . . 121
9.2.6 InterruptPendingRegister(PLIC_IP) . . . . . . . . . . . . . . . . . . . . 122
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved vi

Catalogue
9.2.7 InterruptEnableRegister(PLIC_IE) . . . . . . . . . . . . . . . . . . . . . 122
9.2.8 PLICPermissionControlRegister(PLIC_CTRL) . . . . . . . . . . . . . . . . 123
9.2.9 PLICThresholdRegister(PLIC_TH) . . . . . . . . . . . . . . . . . . . . . . 124
9.2.10 InterruptResponse/CompletionRegister(PLIC_CLAIM) . . . . . . . . . . . 124
9.3 Multi-CoreInterrupts . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 125
9.3.1 MultipleCoresRespondtoExternalInterruptsinParallel . . . . . . . . . . 125
9.3.2 SendSoftwareInterruptsacrossCores . . . . . . . . . . . . . . . . . . . 125
10 BusInterface 126
10.1 AXIMasterDeviceInterface . . . . . . . . . . . . . . . . . . . . . . . . . . . . 126
10.1.1 FeaturesoftheAXIMasterDeviceInterface . . . . . . . . . . . . . . . . . 126
10.1.2 OutstandingCapabilityoftheMasterDeviceInterface . . . . . . . . . . . 126
10.1.3 SupportedTransferTypes . . . . . . . . . . . . . . . . . . . . . . . . . . 128
10.1.4 SupportedResponseTypes . . . . . . . . . . . . . . . . . . . . . . . . . 128
10.1.5 BehaviorsinDifferentBusResponses . . . . . . . . . . . . . . . . . . . . 128
10.1.6 AXIMasterDeviceMasterDeviceInterfac . . . . . . . . . . . . . . . . . . 129
10.2 DeviceCoherencePort(DCP) . . . . . . . . . . . . . . . . . . . . . . . . . . . . 133
10.2.1 FeaturesofDCP . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 133
10.2.2 SupportedTransferTypes . . . . . . . . . . . . . . . . . . . . . . . . . . 133
10.2.3 SupportedResponseTypes . . . . . . . . . . . . . . . . . . . . . . . . . 134
10.2.4 ResponsesunderDifferentBehaviors . . . . . . . . . . . . . . . . . . . . 134
10.2.5 DCPSignals . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 134
11 Debug 138
11.1 DebugFeatures . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 138
11.2 ConnectionbetweenDebugandCPUcore . . . . . . . . . . . . . . . . . . . . . 139
11.3 DebugInterfaceSignals . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 140
12 PowerManagement 143
12.1 PowerDomain . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 143
12.2 OverviewofLow-PowerMode . . . . . . . . . . . . . . . . . . . . . . . . . . . 143
12.3 CoreWFIProcess . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 143
12.4 Single-CorePower-DownProcess . . . . . . . . . . . . . . . . . . . . . . . . . 144
12.5 ClusterPower-DownProcess(HardwareClearingoftheL2Cache) . . . . . . . . 145
12.6 Power-DownProcess(SoftwareClearingoftheL2Cache) . . . . . . . . . . . . . 147
12.7 Simplified Scenario: Overall Cluster Power-Down Process (Hardware Clearing of
theL2cache) . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 148
12.8 SimplifiedScenario: OverallClusterPower-DownProcess(SoftwareClearingofthe
L2cache) . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 149
12.9 Low-powerRelatedProgrammingModelsandInterfaceSignals . . . . . . . . . 150
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved vii

Catalogue
12.9.1 ChangesintheProgrammingModel . . . . . . . . . . . . . . . . . . . . 150
12.9.2 InterfaceSignals . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 151
13 PerformanceMonitorUnit(PMU) 153
13.1 PMUOverview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 153
13.2 PMUProgrammingModel . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 153
13.2.1 BasicFeaturesofPMU . . . . . . . . . . . . . . . . . . . . . . . . . . . 153
13.2.2 PMUEventOverflowInterrupts . . . . . . . . . . . . . . . . . . . . . . . 154
13.3 PMUControlRegisters . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 154
13.3.1 mcounterenRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . 154
13.3.2 ScounterenRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . 155
13.3.3 mcountinhibitRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . 156
13.3.4 MachineWriteEnableRegister(mcounterwen) . . . . . . . . . . . . . . . 157
13.3.5 MachinePerformanceMonitorEventSelectRegister . . . . . . . . . . . . 157
13.4 EventCounters . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 160
14 ProgramInstances 162
14.1 OptimalCPUPerformanceConfiguration . . . . . . . . . . . . . . . . . . . . . . 162
14.2 MMUSetupInstance . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 163
14.3 PMPSetupInstance . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 166
14.4 CacheInstance . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 167
14.4.1 CacheEnablingInstance . . . . . . . . . . . . . . . . . . . . . . . . . . 167
14.4.2 SynchronizationInstancebetweenInstructionCacheandDataCache . . . 169
14.4.3 SynchronizationInstancebetweenTLBandDataCache . . . . . . . . . . 169
14.5 SynchronizationPrimitiveInstance . . . . . . . . . . . . . . . . . . . . . . . . . 169
14.6 PLICSetupInstance . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 170
14.7 PMUSetupInstance . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 171
15 AppendixAStandardInstructions 172
15.1 AppendixA-1IInstructions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 172
15.1.1 ADD——TheSignedAddInstruction . . . . . . . . . . . . . . . . . . . . . 172
15.1.2 ADDI——TheSignedImmediateAddInstruction . . . . . . . . . . . . . . . 173
15.1.3 ADDIW——TheSignedImmediateAddInstructionfortheLower32Bits . . . 173
15.1.4 ADDW——TheSignedAddInstructionfortheLower32Bits . . . . . . . . . 173
15.1.5 AND——TheBitwiseANDInstruction . . . . . . . . . . . . . . . . . . . . . 174
15.1.6 ANDI——TheImmediateBitwiseANDInstruction . . . . . . . . . . . . . . 174
15.1.7 AUIPC——TheAddUpperImmediatetoPCInstruction . . . . . . . . . . . . 175
15.1.8 BEQ——TheBranch-If-EqualInstruction . . . . . . . . . . . . . . . . . . . 175
15.1.9 BGE——TheSignedBranch-If-Greater-than-or-EqualInstruction . . . . . . 176
15.1.10 BGEU——TheUnsignedBranch-If-Greater-than-or-Equalinstruction . . . . 177
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved viii

Catalogue
15.1.11 BLT——TheSignedBranch-If-Less-thanInstruction . . . . . . . . . . . . . 177
BLTU——TheUnsignedBranch-If-Less-thanInstruction
| 15.1.12 |     |     |     | . . | . . . | . . . | . . . 178 |
| ------- | --- | --- | --- | --- | ----- | ----- | --------- |
15.1.13 BNE——TheBranch-If-Not-EqualInstruction . . . . . . . . . . . . . . . . 179
15.1.14 CSRRC——TheControlandStatusRegisterRead/ClearInstruction . . . . . 179
CSRRCI——TheCSRRead/ClearImmediateInstruction
| 15.1.15 |     |     |     | . . . | . . . | . . . | . . . 180 |
| ------- | --- | --- | --- | ----- | ----- | ----- | --------- |
15.1.16 CSRRS——TheCSRRead/SetInstruction . . . . . . . . . . . . . . . . . . . 180
15.1.17 CSRRSI——TheCSRRead/SetImmediateInstruction . . . . . . . . . . . . . 181
15.1.18 CSRRW——TheCSRRead/WriteInstruction . . . . . . . . . . . . . . . . . 182
15.1.19 CSRRWI——TheCSRRead/WriteImmediateInstruction . . . . . . . . . . . 182
EBREAK——TheBreakpointInstruction
| 15.1.20 | . . | . . . | . . . | . . . | . . . | . . . | . . . 183 |
| ------- | --- | ----- | ----- | ----- | ----- | ----- | --------- |
15.1.21 ECALL——TheEnvironmentCallInstruction . . . . . . . . . . . . . . . . . 183
15.1.22 FENCE——TheMemorySynchronizationInstruction . . . . . . . . . . . . . 184
FENCE.I——TheInstructionStreamSynchronizationInstruction
| 15.1.23 |     |     |     |     | .   | . . . | . . . 184 |
| ------- | --- | --- | --- | --- | --- | ----- | --------- |
15.1.24 JAL——TheInstructionforDirectlyJumpingtoaSubroutine . . . . . . . . . 185
15.1.25 JALR——TheJumpandLinkRegisterInstruction . . . . . . . . . . . . . . . 185
15.1.26 LB——TheSignedExtendedByteLoadInstruction . . . . . . . . . . . . . . 186
15.1.27 LBU——TheunsignedExtendedByteLoadInstruction . . . . . . . . . . . . 186
LD——TheDoublewordLoadInstruction
| 15.1.28 | .   | . . . | . . . | . . . | . . . | . . . | . . . 187 |
| ------- | --- | ----- | ----- | ----- | ----- | ----- | --------- |
15.1.29 LH——TheSignedExtendedHalfwordLoadInstruction . . . . . . . . . . . 187
15.1.30 LHU——TheUnsignedExtendedHalfwordLoadInstruction . . . . . . . . . 188
LUI——TheUpperImmediateLoadInstruction
| 15.1.31 |     | .   | . . . | . . . | . . . | . . . | . . . 188 |
| ------- | --- | --- | ----- | ----- | ----- | ----- | --------- |
15.1.32 LW——TheSignedExtendedWordLoadInstruction . . . . . . . . . . . . . 189
15.1.33 LWU——TheUnsignedExtendedWordLoadInstruction . . . . . . . . . . . 189
15.1.34 MRET——TheExceptionReturnInstructioninM-mode . . . . . . . . . . . . 190
15.1.35 OR——TheBitwiseORInstruction . . . . . . . . . . . . . . . . . . . . . . 190
ORI——TheImmediateBitwiseORInstruction
| 15.1.36 |     | .   | . . . | . . . | . . . | . . . | . . . 191 |
| ------- | --- | --- | ----- | ----- | ----- | ----- | --------- |
15.1.37 SB——TheByteStoreInstruction . . . . . . . . . . . . . . . . . . . . . . . 191
15.1.38 SD——TheDoublewordStoreInstruction . . . . . . . . . . . . . . . . . . 192
SFENCE.VMA——TheVirtualMemorySynchronizationInstruction
| 15.1.39 |     |     |     |     |     | . . . | . . . 192 |
| ------- | --- | --- | --- | --- | --- | ----- | --------- |
15.1.40 SH——TheHalfwordStoreInstruction . . . . . . . . . . . . . . . . . . . . 193
15.1.41 SLL——TheLogicalLeftShiftinstruction . . . . . . . . . . . . . . . . . . . 193
SLLI——TheImmediateLogicalLeftShiftInstruction
| 15.1.42 |     |     | .   | . . . | . . . | . . . | . . . 194 |
| ------- | --- | --- | --- | ----- | ----- | ----- | --------- |
15.1.43 SLLIW——TheImmediateLogicalLeftShiftInstructionontheLower32Bits . 194
SLLW——TheLogicalLeftShiftInstructionontheLower32Bits
| 15.1.44 |     |     |     |     | .   | . . . | . . . 195 |
| ------- | --- | --- | --- | --- | --- | ----- | --------- |
15.1.45 SLT——TheSignedSet-If-Less-thanInstruction . . . . . . . . . . . . . . . 195
15.1.46 SLTI——TheSignedSet-If-Less-than-ImmediateInstruction . . . . . . . . . 196
SLTIU——TheUnsignedSet-If-Less-than-ImmediateInstruction
| 15.1.47 |     |     |     |     | .   | . . . | . . . 196 |
| ------- | --- | --- | --- | --- | --- | ----- | --------- |
15.1.48 SLTU——TheUnsignedSet-If-Less-thanInstruction . . . . . . . . . . . . . 197
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved ix

Catalogue
15.1.49 SRA——TheArithmeticRightShiftInstruction . . . . . . . . . . . . . . . . 197
15.1.50 SRAI——TheImmediateArithmeticRightShiftInstruction . . . . . . . . . . 198
15.1.51 SRAIW——TheImmediateArithmeticRightShiftInstructionontheLower32
Bits . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 198
15.1.52 SRAW——TheArithmeticRightShiftInstructionontheLower32Bits . . . . 198
15.1.53 SRET——TheExceptionReturnInstructioninS-mode . . . . . . . . . . . . 199
15.1.54 SRL——TheLogicalRightShiftInstruction . . . . . . . . . . . . . . . . . . 199
15.1.55 SRLI——TheImmediateLogicalRightShiftInstruction . . . . . . . . . . . . 200
15.1.56 SRLIW——TheImmediateLogicalRightShiftInstructionontheLower32Bits 200
15.1.57 SRLW——TheLogicalRightShiftInstructionontheLower32Bits . . . . . . 201
15.1.58 SUB——TheSignedSubtractInstruction . . . . . . . . . . . . . . . . . . . 201
15.1.59 SUBW——TheSignedSubtractInstructionontheLower32Bits . . . . . . . 201
15.1.60 SW——TheWordStoreInstruction . . . . . . . . . . . . . . . . . . . . . . 202
15.1.61 WFI——TheInstructionforEnteringtheLowPowerMode . . . . . . . . . . 202
15.1.62 XOR——TheBitwiseXORInstruction . . . . . . . . . . . . . . . . . . . . . 203
15.1.63 XORI——TheImmediateBitwiseXORInstruction . . . . . . . . . . . . . . . 203
15.2 AppendixA-2MInstructions . . . . . . . . . . . . . . . . . . . . . . . . . . . . 204
15.2.1 DIV——TheSignedDivideInstruction . . . . . . . . . . . . . . . . . . . . 204
15.2.2 DIVU——TheUnsignedDivideInstruction . . . . . . . . . . . . . . . . . . 204
15.2.3 DIVUW——TheUnsignedDivideInstructionontheLower32Bits . . . . . . 205
15.2.4 DIVW——TheSignedDivideInstructionontheLower32Bits . . . . . . . . 205
15.2.5 MUL——TheSignedMultiplyInstruction . . . . . . . . . . . . . . . . . . . 206
15.2.6 MULH——TheSignedMultiplyUpperBitExtractionInstruction . . . . . . . 206
15.2.7 MULHSU——TheSignedandUnsignedMultiplyUpperBitExtractionInstruction207
15.2.8 MULHU——TheUnsignedMultiplyUpperBitExtractionInstruction . . . . . 207
15.2.9 MULW——TheSignedMultiplyInstructionontheLower32Bits . . . . . . . 208
15.2.10 REM——TheSignedRemainderInstruction . . . . . . . . . . . . . . . . . 208
15.2.11 REMU——TheUnsignedRemainderDivideInstruction . . . . . . . . . . . . 209
15.2.12 REMUW——TheUnsignedRemainderDivideInstructionontheLower32Bits 209
15.2.13 REMW——TheSignedRemainderDivideInstructionontheLower32Bits . . 210
15.3 AppendixA-3AInstructions . . . . . . . . . . . . . . . . . . . . . . . . . . . . 210
15.3.1 AMOADD.D——TheAtomicAddInstruction . . . . . . . . . . . . . . . . . 210
15.3.2 AMOADD.W——TheAtomicAddInstructionontheLower32Bits . . . . . . 211
15.3.3 AMOAND.D——TheAtomicBitwiseANDInstruction . . . . . . . . . . . . . 212
15.3.4 AMOAND.W——TheAtomicBitwiseANDInstructionontheLower32Bits . . 213
15.3.5 AMOMAX.D——TheAtomicSignedMaximumInstructionontheLower32Bits214
15.3.6 AMOMAX.W——TheAtomicSignedMaximumInstructionontheLower32Bits215
15.3.7 AMOMAXU.D——TheAtomicUnsignedMaximumInstruction . . . . . . . . 216
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved x

Catalogue
15.3.8 AMOMAXU.W——The Atomic Unsigned Maximum Instruction on the Lower
32Bits . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 217
15.3.9 AMOMIN.D——TheAtomicSignedMinimumInstruction . . . . . . . . . . . 218
15.3.10 AMOMIN.W——TheAtomicSignedMinimumInstructionontheLower32Bits 219
15.3.11 AMOMINU.D——TheAtomicUnsignedMinimumInstruction . . . . . . . . . 220
15.3.12 AMOMINU.W——TheAtomicUnsignedMinimumInstructionontheLower32
Bits . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 221
15.3.13 AMOOR.D——TheAtomicBitwiseORInstruction . . . . . . . . . . . . . . . 222
15.3.14 AMOOR.W——TheAtomicBitwiseORInstructionontheLower32Bits . . . . 223
15.3.15 AMOSWAP.D——TheAtomicSwapInstruction . . . . . . . . . . . . . . . . 224
15.3.16 AMOSWAP.W——TheAtomicSwapInstructionontheLower32Bits . . . . . 225
15.3.17 AMOXOR.D——TheAtomicBitwiseXORInstruction . . . . . . . . . . . . . 226
15.3.18 AMOXOR.W——TheAtomicBitwiseXORInstructionontheLower32Bits . . 227
15.3.19 LR.D——TheDoublewordLoad-reservedInstruction . . . . . . . . . . . . 228
15.3.20 LR.W——TheWordLoad-reservedInstruction . . . . . . . . . . . . . . . . 229
15.3.21 SC.D——TheDoublewordConditionalStoreInstruction . . . . . . . . . . . 230
15.3.22 SC.W——TheWordConditionalStoreInstruction . . . . . . . . . . . . . . . 231
15.4 AppendixA-4Finstructions . . . . . . . . . . . . . . . . . . . . . . . . . . . . 232
15.4.1 FADD.S——TheSingle-PrecisionFloating-pointAddInstruction . . . . . . . 232
15.4.2 FCLASS.S——TheSingle-PrecisionFloating-PointClassificationInstruction . 233
15.4.3 FCVT.L.S——The Instruction to Convert a Single-Precision Floating-Point
NumbertoaSignedLongInteger . . . . . . . . . . . . . . . . . . . . . 234
15.4.4 FCVT.LU.S——The Instruction to Convert a Single-Precision Floating-Point
NumbertoaUnsignedLongInteger . . . . . . . . . . . . . . . . . . . . 235
15.4.5 FCVT.S.L——The Instruction to Convert a Signed Long Integer to a Single-
PrecisionFloating-PointNumber . . . . . . . . . . . . . . . . . . . . . . 236
15.4.6 FCVT.S.LU——TheInstructiontoConvertaUnsignedLongIntegertoaSingle-
PrecisionFloating-PointNumber . . . . . . . . . . . . . . . . . . . . . . 237
15.4.7 FCVT.S.W——TheInstructiontoConvertaSignedIntegertoaSingle-Precision
Floating-PointNumber . . . . . . . . . . . . . . . . . . . . . . . . . . . 238
15.4.8 FCVT.S.WU——The Instruction to Convert a Unsigned Integer to a Single-
PrecisionFloating-PointNumber . . . . . . . . . . . . . . . . . . . . . . 239
15.4.9 FCVT.W.S——The Instruction to Convert a Single-Precision Floating-Point
NumbertoaSignedInteger . . . . . . . . . . . . . . . . . . . . . . . . 240
15.4.10 FCVT.WU.S——The Instruction to Convert a Single-Precision Floating-Point
NumbertoaUnsignedInteger . . . . . . . . . . . . . . . . . . . . . . . 241
15.4.11 FDIV.S——TheSingle-PrecisionFloating-PointDivideinstruction . . . . . . 242
15.4.12 FEQ.S——TheSingle-PrecisionFloating-PointCompareEqualInstruction . . 243
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xi

Catalogue
15.4.13 FLE.S——TheSingle-PrecisionFloating-PointCompareLessthanorEqualto
Instruction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 244
15.4.14 FLT.S——TheSingle-PrecisionFloating-PointCompareLessthanInstruction 244
15.4.15 FLW——TheSingle-PrecisionFloating-PointLoadInstruction . . . . . . . . 245
15.4.16 FMADD.S——TheSingle-PrecisionFloating-PointMultiply-AddInstruction . 246
15.4.17 FMAX.S——TheSingle-PrecisionFloating-PointMaxmumInstruction . . . . 247
15.4.18 FMIN.S——TheSingle-PrecisionFloating-PointMinimumInstruction . . . . 247
15.4.19 FMSUB.S——TheSingle-PrecisionFloating-PointMultiply-SubtractInstruction248
15.4.20 FMUL.S——TheSingle-PrecisionFloating-PointMultiplyInstruction . . . . . 249
15.4.21 FMV.W.X——TheSingle-PrecisionFloating-PointWriteTransferInstruction . 250
15.4.22 FMV.X.W——The Single-Precision Floating-Point Register Read Transfer In-
struction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 250
15.4.23 FNMADD.S——The Single-Precision Floating-Point Negate-(Multiply-Add)
Instruction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 251
15.4.24 FNMSUB.S——The Single-Precision Floating-Point Negate-(Multiply-
Subtract)Instruction . . . . . . . . . . . . . . . . . . . . . . . . . . . . 252
15.4.25 FSGNJ.S——TheSingle-PrecisionFloating-PointSign-InjectionInstruction . 253
15.4.26 FSGNJN.S——The Single-Precision Floating-Point Negate Sign-Injection In-
struction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 253
15.4.27 FSGNJX.S——TheSingle-PrecisionFloating-PointXORSign-InjectionInstruc-
tion . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 254
15.4.28 FSQRT.S——TheSingle-PrecisionFloating-PointSquare-RootInstruction . . 254
15.4.29 FSUB.S——TheSingle-PrecisionFloating-PointSubtractInstruction . . . . . 255
15.4.30 FSW——TheSingle-PrecisionFloating-PointStoreInstruction . . . . . . . . 256
15.5 AppendixA-6CInstructions . . . . . . . . . . . . . . . . . . . . . . . . . . . . 257
15.5.1 C.ADD——TheSignedAddInstruction . . . . . . . . . . . . . . . . . . . . 257
15.5.2 C.ADDI——TheSignedImmediateAddInstruction . . . . . . . . . . . . . . 258
15.5.3 C.ADDIW——TheSignedImmediateAddInstructionontheLower32Bits . . 258
15.5.4 C.ADDI4SPN——TheInstructiontoAddImmediateScaledby4toStackPointer259
15.5.5 C.ADDI16SP——TheInstructiontoAddImmediateScaledby16toStackPointer260
15.5.6 C.ADDW——TheSignedAddInstructionontheLower32Bits . . . . . . . . 260
15.5.7 C.AND——TheBitwiseANDInstruction . . . . . . . . . . . . . . . . . . . . 261
15.5.8 C.ANDI——TheImmediateBitwiseANDInstruction . . . . . . . . . . . . . 262
15.5.9 C.BEQZ——TheBranch-if-equal-to-zeroInstruction . . . . . . . . . . . . . 263
15.5.10 C.BNEZ——TheBranch-if-not-equal-to-zeroInstruction . . . . . . . . . . . 264
15.5.11 C.EBREAK——TheBreakpointInstruction . . . . . . . . . . . . . . . . . . . 265
15.5.12 C.FLD——TheFloating-pointDoublewordLoadInstruction . . . . . . . . . 265
15.5.13 C.FLDSP——TheInstructiontoLoadFloating-pointDoublewordfromaStack 266
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xii

Catalogue
15.5.14 C.FSD——TheInstructiontoStoreDoublewordintoaStack . . . . . . . . . 267
15.5.15 C.FSDSP——TheInstructiontoStoreFloating-pointDoublewordintoaStack 268
15.5.16 C.J——TheUnconditionalJumpInstruction . . . . . . . . . . . . . . . . . . 268
15.5.17 C.JALR——TheJumpandLinkRegisterInstruction . . . . . . . . . . . . . . 269
15.5.18 C.JR——TheJumptoRegisterInstruction . . . . . . . . . . . . . . . . . . . 269
15.5.19 C.LD——TheDoublewordLoadInstruction . . . . . . . . . . . . . . . . . . 270
15.5.20 C.LDSP——TheInstructiontoLoadDoublewordfromStack . . . . . . . . . 271
15.5.21 C.LI——TheImmediateTransferInstruction . . . . . . . . . . . . . . . . . 271
15.5.22 C.LUI——TheUpperBitImmediateTransferInstruction . . . . . . . . . . . 272
15.5.23 C.LW——TheWordLoadInstruction . . . . . . . . . . . . . . . . . . . . . 273
15.5.24 C.LWSP——TheLoadWordfromStackPointerInstruction . . . . . . . . . . 274
15.5.25 C.MV——TheDataTransferInstruction . . . . . . . . . . . . . . . . . . . . 274
15.5.26 C.NOP——TheNo-operationInstruction . . . . . . . . . . . . . . . . . . . 275
15.5.27 C.OR——TheBitwiseORInstruction . . . . . . . . . . . . . . . . . . . . . 275
15.5.28 C.SD——TheDoublewordStoreInstruction . . . . . . . . . . . . . . . . . 276
15.5.29 C.SDSP——TheInstructiontoStoreDoublewordintoaStack . . . . . . . . 277
15.5.30 C.SLLI——TheImmediateLogicalLeftShiftInstruction . . . . . . . . . . . . 277
15.5.31 C.SRAI——TheImmediateArithmeticRightShiftInstruction . . . . . . . . . 278
15.5.32 C.SRLI——TheImmediateLogicalRightShiftInstruction . . . . . . . . . . . 279
15.5.33 C.SW——TheWordStoreInstruction . . . . . . . . . . . . . . . . . . . . . 280
15.5.34 C.SWSP——AStoreWordtoStackPointerInstruction . . . . . . . . . . . . 280
15.5.35 C.SUB——TheSignedSubtractInstruction . . . . . . . . . . . . . . . . . . 281
15.5.36 C.SUBW——TheSignedSubtractInstructionontheLower32Bits . . . . . . 282
15.5.37 C.XOR——TheBitwiseXORInstruction . . . . . . . . . . . . . . . . . . . . 283
15.6 AppendixA-8PseudoInstructionList . . . . . . . . . . . . . . . . . . . . . . . 283
16 AppendixBXuanTieExtendedInstructions 289
16.1 AppendixB-1CacheInstructions . . . . . . . . . . . . . . . . . . . . . . . . . . 289
16.1.1 DCACHE.CALL——TheInstructionthatClearsAllDirtyTableEntriesintheD-
Cache . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 289
16.1.2 DCACHE.CIALL——The Instruction to Clear All Dirty Table Entries in the D-
CacheandInvalidatestheD-Cache . . . . . . . . . . . . . . . . . . . . . 290
16.1.3 DCACHE.CIPA——The Instruction to Clear Dirty Table Entries by Specified
PhysicalAddressesintheD-CacheandInvalidatestheD-Cache . . . . . . 290
16.1.4 DCACHE.CISW——TheInstructiontoClearDirtyTableEntriesintheD-Cache
bytheSpecifiedWay/SetandInvalidatestheD-Cache . . . . . . . . . . . 291
16.1.5 DCACHE.CIVA——TheInstructiontoClearDirtyTableEntriesbySpecifiedVir-
tualAddressesintheD-CacheandInvalidatestheD-Cache . . . . . . . . 292
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xiii

Catalogue
16.1.6 DCACHE.CPA——The Instruction to Clear Dirty Table Entries by Specified
PhysicalAddressesinD-CACHE . . . . . . . . . . . . . . . . . . . . . . . 292
16.1.7 DCACHE.CPAL1——The Instruction to Clear Dirty Table Entries by Specified
PhysicalAddressesinL1D-CACHE . . . . . . . . . . . . . . . . . . . . . 293
16.1.8 DCACHE.CVA——TheInstructiontoClearDirtyTableEntriesbySpecifiedVir-
tualAddressesinD-CACHE . . . . . . . . . . . . . . . . . . . . . . . . . 294
16.1.9 DCACHE.CVAL1——The Instruction to Clear Dirty Table Entries by Specified
VirtualAddressesinL1D-CACHE . . . . . . . . . . . . . . . . . . . . . . 294
16.1.10 DCACHE.IPA——The DCACHE Invalid Instruction by Specified Physical Ad-
dresses . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 295
16.1.11 DCACHE.ISW——TheDCACHEInvalidationInstructionbySpecifiedSet/Way . 295
16.1.12 DCACHE.IVA——TheDCACHEInvalidationInstructionbySpecifiedVirtualAd-
dresses . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 296
16.1.13 DCACHE.IALL——TheInstructiontoInvalidateAllTableEntriesintheD-Cache297
16.1.14 ICACHE.IALL——TheInstructiontoInvalidateAllTableEntriesintheI-Cache 297
16.1.15 ICACHE.IALLS——TheInstructiontoInvalidateAllTableEntriesintheI-Cache
throughBroadcasting . . . . . . . . . . . . . . . . . . . . . . . . . . . . 298
16.1.16 ICACHE.IPA——TheInstructiontoInvalidateTableEntriesbySpecifiedPhys-
icalAddressesintheI-Cache . . . . . . . . . . . . . . . . . . . . . . . . 298
16.1.17 ICACHE.IVA——TheInstructiontoInvalidateTableEntriesbySpecifiedVirtual
AddressesintheI-Cache . . . . . . . . . . . . . . . . . . . . . . . . . . 299
16.1.18 DCACHE.CSW——The Instruction to Clear Dirty Table Entries in the D-Cache
bySpecifiedSet/Way . . . . . . . . . . . . . . . . . . . . . . . . . . . . 300
16.2 AppendixB-2Multi-CoreSynchronizationInstructions . . . . . . . . . . . . . . . 300
16.2.1 SYNC——TheSynchronizationInstruction . . . . . . . . . . . . . . . . . . 301
16.2.2 SYNC.I——TheInstructionforSynchronizingtheClearingOperation . . . . . 301
16.2.3 SYNC.IS——TheBroadcastInstructionforSynchronizingtheClearingOperation302
16.2.4 SYNC.S——TheInstructiontoSynchronizeandBroadcast . . . . . . . . . . 302
16.3 AppendixB-3ArithmeticOperationInstructions . . . . . . . . . . . . . . . . . . 303
16.3.1 ADDSL——TheShiftandAddInstructioninRegisters . . . . . . . . . . . . 303
16.3.2 MULA——TheMultiply-AddInstruction . . . . . . . . . . . . . . . . . . . 303
16.3.3 MULAH——TheMultiply-AddInstructionontheLower16Bits . . . . . . . . 304
16.3.4 MULAW——TheMultiply-AddInstructionontheLower32Bits . . . . . . . . 304
16.3.5 MULS——TheMultiply-SubtractInstruction . . . . . . . . . . . . . . . . . 305
16.3.6 MULSH——TheMultiply-SubtractInstructionontheLower16Bits . . . . . . 305
16.3.7 MULSW——TheMultiply-SubtractInstructionontheLower32Bits . . . . . . 305
16.3.8 MVEQZ——TheTransferInstructionIfRegisterValueisZero . . . . . . . . . 306
16.3.9 MVNEZ——TheTransferInstructionIfRegisterValueisnotZero . . . . . . . 306
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xiv

Catalogue
16.3.10 SRRI——TheRotateRightInstruction . . . . . . . . . . . . . . . . . . . . . 307
16.3.11 SRRIW——TheRotateRightInstructionontheLower32Bits . . . . . . . . . 307
16.4 AppendixB-4BitwiseOperationInstruction . . . . . . . . . . . . . . . . . . . . 308
16.4.1 EXT——TheInstructiontoExtracttheSignBitandExtendinginConsecutive
BitsofaRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 308
16.4.2 EXTU——TheZeroExtensionInstructiontoExtractConsecutiveBitsofaRegister308
16.4.3 FF0——TheInstructiontoFindtheFirstBitWiththeValueof0inaRegister . 309
16.4.4 FF1——TheInstructiontoFindtheFirstBitWiththeValueof1inaRegister . 309
16.4.5 REV——TheInstructiontoReversetheByteOrder . . . . . . . . . . . . . . 310
16.4.6 REVW——TheInstructiontoReversestheByteOrderontheLower32Bits . . 310
16.4.7 TST——TheInstructiontoTestBitswiththeValueof0 . . . . . . . . . . . . 311
16.4.8 TSTNBZ——Zero-ByteTestInstruction . . . . . . . . . . . . . . . . . . . . 311
16.5 AppendixB-5StoreInstructions . . . . . . . . . . . . . . . . . . . . . . . . . . 312
16.5.1 FLRD——The Instruction to Shift and Load Doubleword in Floating-Point
Registers . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 312
16.5.2 FLRW——TheInstructiontoShiftandLoadWordinFloating-PointRegisters 313
16.5.3 FLURD——The Doubleword Load Instruction to Shift the Low 32 Bits of
Floating-pointRegisters . . . . . . . . . . . . . . . . . . . . . . . . . . 313
16.5.4 FLURW——The Load Word Instruction to Shift the Low 32 Bits of Floating-
pointRegisters . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 314
16.5.5 FSRD——The Instruction to Shift and Doubleword Store in Floating-Point
Registers . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 315
16.5.6 FSRW——TheInstructiontoShiftandStoreWordinFloating-PointRegisters 315
16.5.7 FSURD——TheDoublewordStoreInstructiontoShiftLow32BitsinFloating-
pointRegisters . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 316
16.5.8 FSURW——TheWordStoreInstructiontoShiftLow32BitsinFloating-point
Registers . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 316
16.5.9 LBIA——Sign-ExtendedByteLoadwithBaseAuto-IncrementInstruction . . 317
16.5.10 LBIB——TheByteLoadInstructiontoAuto-incrementtheBaseAddressand
ExtendSignedBits . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 317
16.5.11 LBUIA——TheBase-addressAuto-incrementInstructiontoExtendZeroBits
andLoadBytes . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 318
16.5.12 LBUIB——TheByteLoadInstructiontoAuto-incrementtheBaseAddressand
ExtendZeroBits . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 319
16.5.13 LDD——Dual-RegisterLoadInstruction . . . . . . . . . . . . . . . . . . . 319
16.5.14 LDIA——TheBase-addressAuto-incrementInstructiontoLoadDoublewords
andExtendSignedBits . . . . . . . . . . . . . . . . . . . . . . . . . . . 320
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xv

Catalogue
16.5.15 LDIB——The Doubleword Load Instruction to Auto-increment the Base Ad-
dressandExtendtheSignedBits . . . . . . . . . . . . . . . . . . . . . . 320
16.5.16 LHIA——The Base-address Auto-increment Instruction to Load Halfwords
andExtendSignedBits . . . . . . . . . . . . . . . . . . . . . . . . . . . 321
16.5.17 LHIB——TheHalfwordLoadInstructiontoAuto-incrementtheBaseAddress
andExtendSignedBits . . . . . . . . . . . . . . . . . . . . . . . . . . . 321
16.5.18 LHUIA——The Halfword Load Instruction to Auto-increment the Base Ad-
dressandExtendZeroBits . . . . . . . . . . . . . . . . . . . . . . . . . 322
16.5.19 LHUIB——The Halfword Load Instruction to Auto-increment the Base Ad-
dressandExtendZeroBits . . . . . . . . . . . . . . . . . . . . . . . . . 323
16.5.20 LRB——TheByteLoadInstructiontoShiftRegistersandExtendSignedBits . 323
16.5.21 LRBU——TheByteLoadInstructiontoShiftRegistersandExtendZeroBits . 324
16.5.22 LRD——TheDoublewordLoadInstructionwithRegisterShift . . . . . . . . 324
16.5.23 LRH——TheHalfwordLoadInstructiontoShiftRegistersandExtendSigned
Bits . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 325
16.5.24 LRHU——The Halfword Load Instruction to Shift Registers and Extend Un-
signedBits . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 325
16.5.25 LRW——TheWordLoadInstructiontoShiftRegistersandExtendSignedBits 326
16.5.26 LRWU——TheWordLoadInstructiontoShiftRegistersandExtendZeroBits 326
16.5.27 LURB——TheByteLoadInstructiontoShifttheLow32BitsofRegistersand
ExtendSignedBits . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 326
16.5.28 LURBU——TheByteLoadInstructiontoShifttheLow32BitsofRegistersand
ExtendZeroBits . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 327
16.5.29 LURD——TheDoublewordLoadInstructiontoShifttheLow32BitsofRegisters328
16.5.30 LURH——TheHalfwordLoadInstructiontoShifttheLow32BitsofRegisters
andExtendSignedBits . . . . . . . . . . . . . . . . . . . . . . . . . . . 328
16.5.31 LURHU——TheHalfwordLoadInstructiontoShifttheLow32BitsofRegisters
andExtendZeroBits . . . . . . . . . . . . . . . . . . . . . . . . . . . . 329
16.5.32 LURW——TheWordLoadInstructiontoShifttheLow32BitsofRegistersand
ExtendSignedBits . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 329
16.5.33 LURWU——TheWordLoadInstructiontoShift32BitsofRegistersandExtend
ZeroBits . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 330
16.5.34 LWD——TheWordLoadInstructioninDoubleRegisterswithSignExtension 330
16.5.35 LWIA——TheBase-addressAuto-incrementInstructiontoExtendSignedBits
andLoadWords . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 331
16.5.36 LWIB——TheWordLoadInstructiontoAuto-incrementtheBaseAddressand
ExtendSignedBits . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 332
16.5.37 LWUD——TheWordLoadInstructioninDoubleRegistersWithZeroExtension332
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xvi

Catalogue
16.5.38 LWUIA——TheBase-addressAuto-incrementInstructiontoExtendZeroBits
andLoadwords . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 333
16.5.39 LWUIB——The Word Load Instruction to Auto-increment the Base address
andExtendzerobits . . . . . . . . . . . . . . . . . . . . . . . . . . . . 333
16.5.40 SBIA——TheByteStoreInstructionwithAuto-incrementBase-address . . . 334
16.5.41 SBIB——TheByteStoreInstructiontoAuto-incrementtheBaseAddress . . 334
16.5.42 SDD——DualRegisterStoreInstruction . . . . . . . . . . . . . . . . . . . 335
16.5.43 SDIA——TheBase-addressAuto-incrementInstructiontoStoreDoublewords335
16.5.44 SDIB——TheDoublewordStoreInstructiontoAuto-incrementtheBaseAddress336
16.5.45 SHIA——TheBase-addressAuto-incrementInstructiontoStoreHalfwords . 336
16.5.46 SHIB——TheHalfwordStoreInstructiontoAuto-incrementtheBaseAddress 337
16.5.47 SRB——TheInstructiontoShiftandStoreBytesinRegisters . . . . . . . . . 337
16.5.48 SRD——TheInstructiontoShiftandStoreDoublewordfromRegisters . . . 338
16.5.49 SRH——TheInstructiontoShiftandStoreHalfwordinRegisters . . . . . . . 338
16.5.50 SRW——TheInstructiontoShiftandStoreWordinRegisters . . . . . . . . . 339
16.5.51 SURB——TheByteStoreInstructiontoShifttheLow32BitsofRegisters . . . 339
16.5.52 SURD——TheDoublewordStoreInstructiontoShifttheLow32BitsofRegisters340
16.5.53 SURH——TheHalfwordStoreInstructiontoShifttheLow32BitsofRegisters 340
16.5.54 SURW——TheWordStoreInstructiontoShifttheLow32BitsofRegisters . . 341
16.5.55 SWIA——TheBase-addressAuto-incrementInstructiontoStoresWords . . 341
16.5.56 SWIB——TheWordStoreInstructiontoAuto-incrementtheBaseAddress . . 342
16.5.57 SWD——TheInstructiontoStoretheLow32BitsofDoubleRegisters . . . . 342
16.6 AppendixB-6Half-PrecisionFloating-PointInstructions . . . . . . . . . . . . . . 343
16.6.1 FADD.H——TheHalf-precisionFloating-pointAddInstruction . . . . . . . . 343
16.6.2 FCLASS.H——TheHalf-precisionFloating-pointClassificationInstruction . . 344
16.6.3 FCVT.H.L——The Instruction to Convert a Signed Long Integer into a Half-
precisionFloating-pointNumber . . . . . . . . . . . . . . . . . . . . . . 345
16.6.4 FCVT.H.LU——The Instruction to Convert an Unsigned Long Integer into a
Half-precisionFloating-pointNumber . . . . . . . . . . . . . . . . . . . 346
16.6.5 FCVT.H.S——The Instruction to Convert a Single Precision Floating-point
NumbertoaHalf-precisionFloating-pointNumber . . . . . . . . . . . . 347
16.6.6 FCVT.H.W——The Instruction to Convert a Signed Integer into a Half-
precisionFloating-pointNumber . . . . . . . . . . . . . . . . . . . . . . 348
16.6.7 FCVT.H.WU——The Instruction to Convert an Unsigned Integer into a Half-
precisionFloating-pointNumber . . . . . . . . . . . . . . . . . . . . . . 349
16.6.8 FCVT.L.H——TheInstructiontoConvertaHalf-precisionFloating-pointData
toaSignedLongInteger . . . . . . . . . . . . . . . . . . . . . . . . . . 350
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xvii

Catalogue
16.6.9 FCVT.LU.H——The Instruction to Convert a Half-precision Floating-point
NumbertoanUnsignedLongInteger . . . . . . . . . . . . . . . . . . . 351
16.6.10 FCVT.S.H——TheInstructiontoConvertaHalf-precisionFloating-pointNum-
bertoaSinglePrecisionFloating-pointNumber . . . . . . . . . . . . . . 352
16.6.11 FCVT.W.H——TheInstructiontoConvertaHalf-precisionFloating-pointNum-
bertoaSignedInteger . . . . . . . . . . . . . . . . . . . . . . . . . . . 353
16.6.12 FCVT.WU.H——The Instruction to Convert a Half-precision Floating-point
NumbertoanUnsignedInteger . . . . . . . . . . . . . . . . . . . . . . 354
16.6.13 FDIV.H——TheHalf-precisionFloating-pointDivideInstruction . . . . . . . 355
16.6.14 FEQ.H——The Compare-if-equal-to Instruction of Half-precision Floating-
PointNumbers . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 356
16.6.15 FLE.H——The Compare-if-less-than-or-equal-to Instruction of Half-
precisionFloating-PointNumbers . . . . . . . . . . . . . . . . . . . . . 356
16.6.16 FLH——TheHalf-precisionFloating-pointLoadInstruction . . . . . . . . . 357
16.6.17 FLT.H——The Compare-if-less-than Instruction of Half-precision Floating-
PointNumbers . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 358
16.6.18 FMADD.H——TheHalf-precisionFloating-pointMultiply-addInstruction . . 358
16.6.19 FMAX.H——TheHalf-precisionFloating-pointMaximumInstruction . . . . . 359
16.6.20 FMIN.H——TheHalf-precisionFloating-pointMinimumInstruction . . . . . 360
16.6.21 FMSUB.H——TheHalf-precisionFloating-pointMultiply-subtractInstruction 360
16.6.22 FMUL.H——TheHalf-precisionFloating-pointMultiplyInstruction . . . . . . 361
16.6.23 FMV.H.X——TheHalfPrecisionFloating-pointWriteTransferInstruction . . . 362
16.6.24 FMV.X.H——TheHalfPrecisionFloating-pointReadTransferInstruction . . . 363
16.6.25 FNMADD.H——TheHalf-precisionFloating-pointNegate-(Multiply-add)In-
struction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 363
16.6.26 FNMSUB.H——TheHalf-precisionFloating-pointNegate-(Multiply-subtract)
Instruction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 364
16.6.27 FSGNJ.H——TheHalf-precisionFloating-pointSign-injectionInstruction . . 366
16.6.28 FSGNJN.H——The Half-precision Floating-point Sign-injection Negate In-
struction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 366
16.6.29 FSGNJX.H——TheHalf-precisionFloating-pointSignXORInjectionInstruction367
16.6.30 FSH——TheHalf-precisionFloating-pointStoreInstruction . . . . . . . . . 367
16.6.31 FSQRT.H——TheSquareRootInstructionofHalf-precisionFloating-point . . 368
16.6.32 FSUB.H——TheHalf-precisionFloating-pointSubtractInstruction . . . . . . 369
17 AppendixCControlandStatusRegisters(CSRs) 371
17.1 AppendixC-1Machine-levelControlandStatusRegitsers(CSRs) . . . . . . . . . 371
17.1.1 MachineInformationRegisterBank . . . . . . . . . . . . . . . . . . . . . 371
17.1.1.1 MachineVendorIDregister(MVENDORID) . . . . . . . . . . . . . . 371
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xviii

Catalogue
17.1.1.2 MachineArchitectureIDregister(MARCHID) . . . . . . . . . . . . . 371
17.1.1.3 MachineHardwareImplementationIDregister(MIMPID) . . . . . . . 371
17.1.1.4 MachineHartIDRegister(MHARTID) . . . . . . . . . . . . . . . . . 372
17.1.2 MachineExceptionConfigurationRegisterBank . . . . . . . . . . . . . . 372
17.1.2.1 MachineStatusRegister(MSTATUS) . . . . . . . . . . . . . . . . . . 372
17.1.2.2 MachineInstructionSetArchitectureRegister(MISA) . . . . . . . . . 375
17.1.2.3 MachineExceptionDelegationControlRegister(MEDELEG) . . . . . . 376
17.1.2.4 MachineInterruptDelegationControlRegister(MIDELEG) . . . . . . 376
17.1.2.5 MachineInterruptEnableRegister(MIE) . . . . . . . . . . . . . . . 376
17.1.2.6 MachineVectorBaseAddress(MTVEC) . . . . . . . . . . . . . . . . 378
17.1.2.7 MachineCounterEnableRegister(MCOUNTEREN) . . . . . . . . . . 378
17.1.3 MachineExceptionHandlingRegisterBank . . . . . . . . . . . . . . . . . 378
17.1.3.1 Machine Scratch Register for Exception Temporary Data Backup
(MSCRATCH) . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 378
17.1.3.2 MachineExceptionProgramCounterRegister(MEPC) . . . . . . . . 379
17.1.3.3 MachineExceptionCauseRegister(MCAUSE) . . . . . . . . . . . . . 379
17.1.3.4 MachineInterruptPendingRegister(MIP) . . . . . . . . . . . . . . . 379
17.1.4 MachineMemoryProtectionRegisterBank . . . . . . . . . . . . . . . . . 381
17.1.4.1 MachinePhysicalMemoryProtectionConfigurationRegiste(PMPCFG) 381
17.1.4.2 MachinePhysicalMemoryProtectionAddressRegister(PMPADDR) . 381
17.1.5 MachineCounterRegisterBank . . . . . . . . . . . . . . . . . . . . . . . 382
17.1.5.1 MachineCycleCounter(MCYCLE) . . . . . . . . . . . . . . . . . . . 382
17.1.5.2 MachineInstructionRetireCounter(MINSTRET) . . . . . . . . . . . . 382
17.1.5.3 MachineEventCounter(MHPMCOUNTERn) . . . . . . . . . . . . . . 382
17.1.6 MachineCounterConfigurationRegisterBank . . . . . . . . . . . . . . . 382
17.1.6.1 MachineEventSelecter(MHPMEVENTn) . . . . . . . . . . . . . . . . 382
17.1.7 MachineProcessorControlandStatusExtensionRegisterBank . . . . . . 383
17.1.7.1 MachineExtensionStatusRegister(MXSTATUS) . . . . . . . . . . . . 383
17.1.7.2 MachineHardwareConfigurationRegister(MHCR) . . . . . . . . . . 386
17.1.7.3 MachineHardwareOperationRegister(MCOR) . . . . . . . . . . . . 387
17.1.7.4 MachineL2CacheControlRegister(MCCR2) . . . . . . . . . . . . . 388
17.1.7.5 MachineL2CacheECCControlRegister(MCER2) . . . . . . . . . . . 390
17.1.7.6 MachineImplicitOperationRegister(MHINT) . . . . . . . . . . . . . 392
17.1.7.7 MachineResetRegister(MRMR) . . . . . . . . . . . . . . . . . . . . 394
17.1.7.8 MachineResetVectorBaseAddressRegister(MRVBR) . . . . . . . . 395
17.1.7.9 MachineL1CacheECCRegister(MCER) . . . . . . . . . . . . . . . . 396
17.1.7.10 MachineCounterWriteEnableRegister(MCOUNTERWEN) . . . . . . 397
17.1.7.11 MachineEventInterruptEnableRegister(MCOUNTERINTEN) . . . . . 398
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xix

Catalogue
17.1.7.12 MachineEventOverflowFlagRegister(MCOUNTEROF) . . . . . . . . 398
17.1.7.13 MachineL1CacheHardwareErrorInjectionRegisterMEICR . . . . . 399
17.1.7.14 MachineL2CacheHardwareErrorInjectionRegister(MEICR2) . . . . 400
17.1.8 MachineCacheAccessExtensionRegisterBank . . . . . . . . . . . . . . 400
17.1.8.1 MachineCacheInstructionRegister(MCINS) . . . . . . . . . . . . . 400
17.1.8.2 MachineCacheAccessIndexRegister(MCINDEX) . . . . . . . . . . . 401
17.1.8.3 MachineCacheAccessDataRegister(MCDATA0/1) . . . . . . . . . . 402
17.1.9 MachineProcessorIDRegisterBank . . . . . . . . . . . . . . . . . . . . 403
17.1.9.1 MachineProcessorIDRegister(MCPUID) . . . . . . . . . . . . . . . 403
17.1.9.2 On-ChipBusBaseAddressRegister(MAPBADDR) . . . . . . . . . . . 403
17.1.10 Multi-coreExtensionRegisterSet . . . . . . . . . . . . . . . . . . . . . . 403
17.1.10.1 SnoopEnableRegister(MSMPR) . . . . . . . . . . . . . . . . . . . 403
17.2 AppendixC-2SupervisorCSRs . . . . . . . . . . . . . . . . . . . . . . . . . . . 404
17.2.1 SupervisorExceptionConfigurationRegisterBank . . . . . . . . . . . . . 404
17.2.1.1 SupervisorStatusRegister(SSTATUS) . . . . . . . . . . . . . . . . . 404
17.2.1.2 SupervisorInterruptEnableRegister(SIE) . . . . . . . . . . . . . . 405
17.2.1.3 SupervisorTrapVectorBaseAddressRegister(STVEC) . . . . . . . . 405
17.2.1.4 SupervisorCounterAccessEnableRegister(SCOUNTEREN) . . . . . . 406
17.2.2 SupervisorExceptionHandlingRegisterBank . . . . . . . . . . . . . . . 406
17.2.2.1 SupervisorExceptionTemporaryDataBackupRegister(SSCRATCH) . 406
17.2.2.2 SupervisorExceptionReservedProgramCounterRegister(SEPC) . . . 406
17.2.2.3 SupervisorExceptionCauseRegister(SCAUSE) . . . . . . . . . . . . 406
17.2.2.4 SupervisorInterruptPendingStatusRegister(SIP) . . . . . . . . . . 406
17.2.3 SuperviosorAddressTranslationRegisterGroup . . . . . . . . . . . . . . 407
17.2.3.1 SuperviosorAddressTranslationRegister(SATP) . . . . . . . . . . . 407
17.2.4 SupervisorProcessorControlandStatusExtensionRegisterBank . . . . . 407
17.2.4.1 SupervisorExtensionStatusRegister(SXSTATUS) . . . . . . . . . . . 407
17.2.4.2 SupervisorHardwareControlRegister(SHCR) . . . . . . . . . . . . . 407
17.2.4.3 SupervisorL2CacheECCRegister(SCER2) . . . . . . . . . . . . . . 408
17.2.4.4 SupervisorL1CacheECCRegister(SCER) . . . . . . . . . . . . . . . 408
17.2.4.5 SupervisorEventOverflowInterruptEnableRegister(SCOUNTERINTEN)408
17.2.4.6 SupervisorEventOverflowFlagRegister(SCOUNTEROF) . . . . . . . 408
17.2.4.7 SupervisorCycleCounter(SCYCLE) . . . . . . . . . . . . . . . . . . 408
17.2.4.8 SupervisorRetireInstructionCounter(SINSTRET) . . . . . . . . . . . 409
17.2.4.9 SupervisorEventCounters(SHPMCOUNTERn) . . . . . . . . . . . . . 409
17.2.5 SupervisorMMUExtensionRegisters . . . . . . . . . . . . . . . . . . . . 409
17.2.5.1 SupervisorMMUControlRegister(SMCIR) . . . . . . . . . . . . . . . 409
17.2.5.2 SupervisorMMUControlRegister(SMIR) . . . . . . . . . . . . . . . 409
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xx

Catalogue
17.2.5.3 SupervisorMMUControlRegister(SMEH) . . . . . . . . . . . . . . . 409
17.2.5.4 SupervisorMMUControlRegister(SMEL) . . . . . . . . . . . . . . . 409
17.3 AppendixC-3RISC-VStandardUser-levelCSRs . . . . . . . . . . . . . . . . . . 410
17.3.1 UserFloating-pointControlRegisterBank . . . . . . . . . . . . . . . . . 410
17.3.1.1 Floating-PointExceptionAccumulatorStatusRegister(FFLAGS) . . . 410
17.3.1.2 Floating-pointDynamicRoundingModeRegister(FRM) . . . . . . . 410
17.3.1.3 Floating-PointControlandStatusRegister(FCSR) . . . . . . . . . . 410
17.3.2 UserCounter/TimerRegisterBank . . . . . . . . . . . . . . . . . . . . . 411
17.3.2.1 UserCycleCounter(CYCLE) . . . . . . . . . . . . . . . . . . . . . . 411
17.3.2.2 UserTimerCounter(TIME) . . . . . . . . . . . . . . . . . . . . . . . 412
17.3.2.3 UserRetiredInstructionsCounter(INSTRET) . . . . . . . . . . . . . . 412
17.3.2.4 UserEventCounter(HPMCOUNTERn) . . . . . . . . . . . . . . . . . 412
17.3.3 UserExtensionFloating-pointControlRegister . . . . . . . . . . . . . . . 412
17.3.3.1 UserFloating-pointExtensionControlRegister(FXCR) . . . . . . . . 412
18 Appendix D XuanTie C900 Multi-Core Synchronization Instructions and Program
Implementations 414
18.1 Overview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 414
18.2 RISC-VStandardInstructions . . . . . . . . . . . . . . . . . . . . . . . . . . . . 414
18.2.1 fenceInstruction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 414
18.2.2 fence.iInstruction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 415
18.2.3 sfence.vmaInstruction . . . . . . . . . . . . . . . . . . . . . . . . . . . 415
18.2.4 AMOInstruction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 415
18.2.5 Load-Reserved/Store-ConditionalInstruction . . . . . . . . . . . . . . . 416
18.3 XuanTieEnhancementInstruction . . . . . . . . . . . . . . . . . . . . . . . . . 418
18.3.1 sync.is . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 418
18.3.2 dcache.cipars1 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 418
18.3.3 icache.ivars1 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 418
18.4 SoftwareExamples . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 418
18.4.1 TLBMaintenance . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 418
18.4.1.1 TLBFlush . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 418
18.4.1.2 FlushTLBEntriesAssociatedwithaProcessBasedonASID . . . . . . 419
18.4.1.3 FlushTLBEntriesBasedonVA . . . . . . . . . . . . . . . . . . . . 419
18.4.1.4 FlushTLBEntriesBasedonVAandASID . . . . . . . . . . . . . . . 419
18.4.2 InstructionAreaSynchronization . . . . . . . . . . . . . . . . . . . . . . 420
18.4.2.1 In-CoreGlobalInstructionAreaSynchronization . . . . . . . . . . . 420
18.4.2.2 Multi-CoreGlobalInstructionAreaSynchronization . . . . . . . . . 420
18.4.2.3 XuanTieMulti-CorePreciseInstructionAreaSynchronization . . . . . 420
18.4.3 DMASynchronization . . . . . . . . . . . . . . . . . . . . . . . . . . . . 420
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xxi

Catalogue
18.4.3.1 XuanTieMulti-CorePreciseDMASynchronizationwithThreeDirections420
18.4.4 ReferenceImplementationofAtomic . . . . . . . . . . . . . . . . . . . . 421
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xxii

FigureCatalogue
Figure Catalogue
1.1 SymbolList . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 5
2.1 C910MPMicroarchitecture . . . . . . . . . . . . . . . . . . . . . . . . . . . . 7
2.2 C910InterfacesOverview . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11
4.1 RegisterView . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 34
4.2 IntegerDataStructureinRegisters . . . . . . . . . . . . . . . . . . . . . . . . 43
4.3 Floating-PointDataStructureinRegisters . . . . . . . . . . . . . . . . . . . . 44
4.4 DataStructureinMemory . . . . . . . . . . . . . . . . . . . . . . . . . . . . 44
6.1 AddressAttributeFormatinsysmap.hFile . . . . . . . . . . . . . . . . . . . . 53
6.2 PageTableStructure . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 58
6.3 SATPRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 59
6.4 SMCIRRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 60
6.5 SMIRRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 61
6.6 SMEHRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 62
6.7 SMELRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 63
6.8 OverallDistributionofPMPCFGRegisters . . . . . . . . . . . . . . . . . . . . . 66
6.9 PMPConfigurationRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . 66
6.10 pmpaddrRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 69
7.1 L2CacheStructure . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 76
8.1 RISC-VPrivilegeMode . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 87
8.2 ZonesandPrivilegeModesinXuanTieRISC-VProcessors . . . . . . . . . . . . 88
8.3 PMPConfigurationinDifferentZones . . . . . . . . . . . . . . . . . . . . . . 89
8.4 ConnecttheRequestertoIOPMP . . . . . . . . . . . . . . . . . . . . . . . . . 90
8.5 ConnecttheDestinationDevicetoIOPMP . . . . . . . . . . . . . . . . . . . . 90
8.6 SoCArchitectureBasedonPMPandIOPMPIsolation . . . . . . . . . . . . . . . 91
8.7 DCPProtection . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 92
8.8 M-modeInterruptDistributioninXuanTieRISC-VProcessors . . . . . . . . . . . 94
8.9 TheInterruptHandlingRuleWhentheProcessorRunsinZone#0 . . . . . . . . 96
8.10 TheInterruptHandlingRuleWhentheProcessorRunsinZone#1 . . . . . . . . 97
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xxiii

FigureCatalogue
9.1 MSIPRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 110
9.2 SSIPRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 110
9.3 CLINT_MTIMERegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 111
9.4 CLINT_STIMERegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 112
9.5 MachineTimerInterruptCompareValueRegister(HigherBit/LowerBit) . . . . . 112
9.6 SupervisorTimerInterruptCompareValueRegister(UpperBit/LowerBit) . . . . 112
9.7 AddressSpaceofPLIC&CLINT . . . . . . . . . . . . . . . . . . . . . . . . . . 121
9.8 InterruptPriorityConfigurationRegister(PLIC_PRIO) . . . . . . . . . . . . . . . 121
9.9 PLIC_IPxInterruptPendingRegister(PLIC_IP) . . . . . . . . . . . . . . . . . . 122
9.10 PLIC_IExInterruptEnableRegister(PLIC_IE) . . . . . . . . . . . . . . . . . . . 123
9.11 PLICPermissionControlRegister(PLIC_CTRL) . . . . . . . . . . . . . . . . . . 123
9.12 InterruptThreadRegister(PLIC_TH) . . . . . . . . . . . . . . . . . . . . . . . 124
9.13 InterruptResponse/CompletionRegister(PLIC_CLAIM) . . . . . . . . . . . . . 124
11.1 LocationoftheDebugInterfaceinCPUDebugEnvironment . . . . . . . . . . . 139
11.2 TheOverllMulti-coreDebugFramework . . . . . . . . . . . . . . . . . . . . . 140
13.1 MCOUNTERENRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 154
13.2 SCOUNTERENRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 155
13.3 MCOUNTINHIBITRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 157
13.4 MHPMEVENTRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 158
17.1 MachineStatusRegister(MSTATUS) . . . . . . . . . . . . . . . . . . . . . . . 372
17.2 MachineInterruptDelegationControlRegister(MIDELEG) . . . . . . . . . . . . 376
17.3 MachineInterruptEnableRegister(MIE) . . . . . . . . . . . . . . . . . . . . . 376
17.4 MachineVectorBaseAddress(MTVEC) . . . . . . . . . . . . . . . . . . . . . . 378
17.5 MachineExceptionCauseRegister(MCAUSE) . . . . . . . . . . . . . . . . . . 379
17.6 MachineInterruptPendingRegister(MIP) . . . . . . . . . . . . . . . . . . . . 380
17.7 MXSTATUSRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 384
17.8 MachineHardwareConfigurationRegister(MHCR) . . . . . . . . . . . . . . . . 386
17.9 MachineHardwareOperationRegister(MCOR) . . . . . . . . . . . . . . . . . . 387
17.10 MachineL2CacheControlRegister(MCCR2) . . . . . . . . . . . . . . . . . . . 389
17.11 MachineL2CacheECCControlRegister(MCER2) . . . . . . . . . . . . . . . . . 391
17.12 MachineImplicitOperationRegister(MHINT) . . . . . . . . . . . . . . . . . . 392
17.13 MachineResetRegister(MRMR) . . . . . . . . . . . . . . . . . . . . . . . . . 395
17.14 MRVBRRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 395
17.15 MCERRegitser . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 396
17.16 MCOUNTERWENRegitser . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 397
17.17 MCOUNTERINTENRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . 398
17.18 MCOUNTEROFRegitser . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 398
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xxiv

FigureCatalogue
17.19 MEICRRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 399
17.20 MEICR2Register . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 400
17.21 MachineCacheInstructionRegister(MCINS) . . . . . . . . . . . . . . . . . . . 401
17.22 MachineCacheAccessIndexRegister(MCINDEX) . . . . . . . . . . . . . . . . 401
17.23 MachineCacheAccessDataRegister(MCDATA) . . . . . . . . . . . . . . . . . 402
17.24 SupervisorStatusRegister(SSTATUS) . . . . . . . . . . . . . . . . . . . . . . . 404
17.25 SupervisorInterruptEnableregister(SIE) . . . . . . . . . . . . . . . . . . . . 405
17.26 SupervisorTrapVectorBaseAddressRegister(STVEC) . . . . . . . . . . . . . . 405
17.27 SIPRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 407
17.28 Floating-PointControlandStatusRegister(FCSR) . . . . . . . . . . . . . . . . 410
17.29 FXCRRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 412
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xxv

TableCatalogue
Table Catalogue
1.1 ConfigurableOptionsofC910MP . . . . . . . . . . . . . . . . . . . . . . . . . 3
3.1 IntegerInstructions(RV64I)List . . . . . . . . . . . . . . . . . . . . . . . . . 12
3.2 IntegerMultiplicationandDivisionInstruction(RV64M) . . . . . . . . . . . . . 16
3.3 AtomicInstruction(RV64A)List . . . . . . . . . . . . . . . . . . . . . . . . . . 16
3.4 RV64FInstructionSet . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 18
3.5 CompressedInstruction(RV64C)List . . . . . . . . . . . . . . . . . . . . . . . 20
3.6 ArithmeticOperationInstructionsSet . . . . . . . . . . . . . . . . . . . . . . 22
3.7 BitManipulationInstructionsSet . . . . . . . . . . . . . . . . . . . . . . . . . 23
3.8 MemoryAccessInstructionsSet . . . . . . . . . . . . . . . . . . . . . . . . . 24
3.9 CacheInstructionsList . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 28
3.10 Multi-CoreSynchronizationInstructions . . . . . . . . . . . . . . . . . . . . . 29
3.11 Half-precisionFloating-pointInstructionsSet . . . . . . . . . . . . . . . . . . 30
4.1 GPRs . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 35
4.2 Floating-PointRegisters . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 35
4.3 RISC-VStandardMachine-levelCSRs . . . . . . . . . . . . . . . . . . . . . . . 37
4.4 RISC-VStandardSupervisorCSRs . . . . . . . . . . . . . . . . . . . . . . . . 39
4.5 RISC-VStandardUser-levelCSRs . . . . . . . . . . . . . . . . . . . . . . . . . 39
4.6 ExtendedMachine-levelCSRsofC910 . . . . . . . . . . . . . . . . . . . . . . 40
4.7 ExtendedSupervisor-levelCSRsofC910 . . . . . . . . . . . . . . . . . . . . . 41
4.8 ExtendedUser-levelCSRsofC910 . . . . . . . . . . . . . . . . . . . . . . . . 42
5.1 VectorAssignmentforExceptionsandInterrupts . . . . . . . . . . . . . . . . 47
5.2 UpdatesofMtvaluponExceptionOccurrence . . . . . . . . . . . . . . . . . . 49
6.1 ClassificationofMemoryType . . . . . . . . . . . . . . . . . . . . . . . . . . 53
6.2 SYNCInstructionDescription . . . . . . . . . . . . . . . . . . . . . . . . . . . 54
6.3 MMUAddressTranslationMode . . . . . . . . . . . . . . . . . . . . . . . . . 59
6.4 XWRPermisssions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 64
6.5 DescriptionofPMPControlRegister . . . . . . . . . . . . . . . . . . . . . . . 66
6.6 ProtectionRegionCoding . . . . . . . . . . . . . . . . . . . . . . . . . . . . 67
7.1 SpecificDivisionofInstructionFunctionality . . . . . . . . . . . . . . . . . . . 73
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xxvi

TableCatalogue
7.2 ConfigurationofRAMLatency . . . . . . . . . . . . . . . . . . . . . . . . . . 77
7.3 ValidAccessLatencyofTAGRAM . . . . . . . . . . . . . . . . . . . . . . . . . 78
7.4 ValidAccessLatencyofDATARAM . . . . . . . . . . . . . . . . . . . . . . . . 78
7.5 L1/L2CacheOperationInstruction . . . . . . . . . . . . . . . . . . . . . . . . 81
7.6 ECC/ParityCheckDetect/CorrectCapabilityandInterruptReport . . . . . . . . 82
7.7 L1DataCacheCheck . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 84
7.8 L2ECCCheckGranularity . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 84
8.1 InterruptResponseModelinRISC-V . . . . . . . . . . . . . . . . . . . . . . . 93
9.1 Memory-mappedAddressesofCLINT . . . . . . . . . . . . . . . . . . . . . . 100
9.2 PLICRegisterAddressMapping . . . . . . . . . . . . . . . . . . . . . . . . . 115
10.1 OutstandingCapabilityoftheAXIMasterDeviceInterface . . . . . . . . . . . . 126
10.2 ARIDEncodingoftheAXIMasterDeviceInterface . . . . . . . . . . . . . . . . 127
10.3 AWIDEncodingoftheAXIMasterDeviceInterface . . . . . . . . . . . . . . . . 127
10.4 BusExceptionHandling . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 128
10.5 ChannelInterfaceSignalsofAXIProtocol . . . . . . . . . . . . . . . . . . . . 129
10.6 ResponseTypesofSlaveDevices . . . . . . . . . . . . . . . . . . . . . . . . . 134
10.7 DCPSignals . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 134
11.1 SignalsforDebugModuleandExternalInterface . . . . . . . . . . . . . . . . 140
11.2 CurrentCPUStatusIndicatedbyPM . . . . . . . . . . . . . . . . . . . . . . . 141
13.1 MCOUNTERENRegisterDescription . . . . . . . . . . . . . . . . . . . . . . . . 154
13.2 SCOUNTERENRegisterDescription . . . . . . . . . . . . . . . . . . . . . . . . 156
13.3 MCOUNTINHIBITRegister . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 157
13.4 MHPMEVENTRegisterDescription . . . . . . . . . . . . . . . . . . . . . . . . 158
13.5 CounterEventCorrespondenceList . . . . . . . . . . . . . . . . . . . . . . . 158
13.6 MachineEventCounterList . . . . . . . . . . . . . . . . . . . . . . . . . . . . 160
13.7 UserEventCountersList . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 160
13.8 SupervisorEventCountersList . . . . . . . . . . . . . . . . . . . . . . . . . . 161
15.1 RISC-VPseudoInstructionList . . . . . . . . . . . . . . . . . . . . . . . . . . 284
17.1 TheCorrespondingRelationshipofMCDATAandRAMType . . . . . . . . . . . 402
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved xxvii

Chapter1Overview
1 Overview
1.1 Introduction
C910MPisa64-bithigh-performancemulti-coreprocessorbasedontheRISC-Vinstructionsetar-
chitecture. Itistargetedatedgecomputingthatrequireshighperformance,suchasedgeservers,
edge computing cards, advanced machine vision, advanced video surveillance, autonomous
driving, mobile smart terminals, and 5G base stations. C910MP adopts a homogeneous multi-
core architecture, supporting 1 to 4 configurable cores. Each C910 core features a proprietary
microarchitecture design and optimizes high performance. Moreover high-performance tech-
nologies are introduced, such as a 3-way issue, 8-way execution superscalar architecture, and
multi-channel data prefetching. In addition, C910 core performs real-time detection and shuts
downinternalidlefunctionmodulestoreducedynamicpowerconsumptionofCPU.
1.2 Features
1.2.1 KeyArchitecturalFeaturesofC910MP
• SupportsHomogeneousmulti-corearchitectureandconfigurationof1to4C910cores.
• Supportsindependentpower-offofeachcoreandclusterpower-off.
• SupportsoneAXI4.0Masterinterfaceand128-bitbuswidth.
• SupportsoneconfigurableAXI4.0DeviceCoherencePort(DCP)and128-bitbuswidth.
• Supports two levels of caches provided: L1 cache running on the Harvard architecture
andL2sharedcache.
• L1 cache size is configurable, and instruction and data cache support 32KB and 64KB
separately,withacachelinesizeof64bytes.
• L1cachesupportsforTheModified,Exclusive,Shared,Invalid(MESI)coherenceprotocol,
andL2cachesupportsforModified,Owned,Exclusive,Shared,Invalid(MOESI)coherence
protocol.
• L2 cache supports for 16-way connection with configurable Error Correcting Code (ECC)
mechanism.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 1

Chapter1Overview
• L2cachesizeisconfigurable,supporting256KB/512KB/1MB/2MB/4MB/8MBwithacache
linesizeof64bytes.
• SupportsCoreLocalInterruptController(CLINT).
• SupportsTimers.
• Supportscustommulti-coredebugframeworkwithinterfacescompatiblewithRISC-V.
1.2.2 KeyFeaturesofC910Core
• RISC-V64GC[V]instructionarchitecture.
• SupportsLittle-endianmode.
• 9-stageto12-stagedeeppipelinedarchitecture.
• Supports3-wayissue,8-wayexecutionsuperscalararchitecture,fullytransparenttosoft-
ware.
• In-orderfetch,out-of-orderissue,out-of-ordercompletion,andin-orderretirement.
• Two-level Translation Lookaside Buffer (TLB) memory management units for vir-
tual/physicaladdresstranslationandmemorymanagement.
• InstructionCache(ICache)andDataCache(DCache)sizesareconfigurable,supporting
32KBand64KB,withacachelinesizeof64B.
• ICachecanbeconfiguredwithParityCheck,andDCachecanbeconfiguredwithECCor
ParityCheck.
• Supportsinstructionprefetchandauto-detectionanddynamicstartupofhardware.
• Low-poweraccesstechnologyforICachebranchprediction.
• Low-powerexecutiontechnologywithshort-loopcache.
• 64Kbtwo-levelmulti-wayparallelbranchpredictor.
• Configurablebranchtargetbufferwith1024/2048entries.
• Supports12-layerhardwarereturnaddressstack.
• Indirectjumpbranchpredictorwith256entries.
• Non-blockingissueandspeculativeexecution.
• Renamingtechnologybasedonphysicalregisters.
• Supportszero-latencymoveinstructions.
• Dualissueandfullout-of-orderexecutionforload/storeinstructions.
• Supportsconcurrentbusaccessforupto8readrequestsand8writerequests.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 2

Chapter1Overview
• Supportswritecombining.
• Supports8-wayDCachehardwareprefetchingandstrideprefetching.
• Supports configuration of floating-point execution unit, half-precision, and single-
precision.
| 1.3 Configurable | Options |     |     |     |     |     |
| ---------------- | ------- | --- | --- | --- | --- | --- |
ConfigurableoptionsofC910MPareillustratedinthefollowingTable1.1.
Table1.1: ConfigurableOptionsofC910MP
| ConfigurableUnit |     | ConfigurableOptions | DetailedInformation |                       |     |         |
| ---------------- | --- | ------------------- | ------------------- | --------------------- | --- | ------- |
| NumberofCores    |     | 1/2/3/4             | C910MP              | provides configurable |     | options |
for1to4cores.
| DCP |     | Yes/No | For peripherals | to            | access       | on-chip |
| --- | --- | ------ | --------------- | ------------- | ------------ | ------- |
|     |     |        | cache,          | ensuring data | consistency, | and     |
|     |     |        | DCP can         | be connected  | with         | Direct  |
MemoryAccess(DMA)
| L1ICache |     | 32K/64K | Configured | with the size | of 32KB | and |
| -------- | --- | ------- | ---------- | ------------- | ------- | --- |
64KB.
| L1DCache |     | 32K/64K | Configured | with the size | of 32KB | and |
| -------- | --- | ------- | ---------- | ------------- | ------- | --- |
64KB.
| L1ECC/Parity |     | Yes/No | ParitycheckforL1I-Cache |     |     |     |
| ------------ | --- | ------ | ----------------------- | --- | --- | --- |
ECCforL1D-Cache
| L2Cache     |          | Size:                 | Configured           | with the size | of 256KB | to  |
| ----------- | -------- | --------------------- | -------------------- | ------------- | -------- | --- |
|             |          | 256K/512K/1M/2M/4M/8M | 8MB.                 |               |          |     |
| L2ECC       |          | Yes/No                | ECCforL2Tag/DataRAM. |               |          |     |
| 1.4 XuanTie | Extended | Architecture          |                      |               |          |     |
C910 is compatible with XuanTie C-series extended architecture 1.0, which provides extensions
inthefollowingaspects:
• Operationinstructions: C910improvesoperationcapabilitieswithinteger,floating-point,
andload/storeinstructions,wellsupplementingtheRISC-Vbaseinstructionsets.
• Cacheoperations: C910providesuser-friendlycachemaintenanceoperationstoimprove
cacheefficiency.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 3

Chapter1Overview
• Memorymodel: C910managesaddressattributesefficientlytoimprovememoryaccess
efficiency.
• Control registers: C910 extends the features of control registers based on the standard
RISC-Varchitecture.
• Multi-coresynchronizationinstructions: C910adoptsmulti-coresynchronizationinstruc-
tionstoimproveefficiencyofmulticoreconsistencymaintenance.
• Platform-levelInterruptController(PLIC)extension: embeddedPLIC
1.5 Version Compatibility
C910iscompatiblewiththeRISC-Vstandard,andthedetailedinformationisasfollows:
• TheRISC-VInstructionSetManual,VolumeI:RISC-VUser-LevelISA,Version2.2.
• TheRISC-VInstructionSetManual,VolumeII:PrivilegedArchitecture,Version1.10.
• RISC-V“V”VectorExtension,Version0.7.1-20190610-Workshop-Release.
• AddmcountinhibitregisterinTheRISC-VInstructionSetManual,VolumeII:PrivilegedArchi-
tecture,Version20190125-Public-Review-draftforPerformanceMonitorUnit(PMU).
1.6 Naming Convention
1.6.1 Symbols
ThestandardsymbolsandoperatorsinthisdocumentisshowninFig.1.1.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 4

Chapter1Overview
Fig.1.1: SymbolList
1.6.2 Terms
• Logic1: ThelevelvaluecorrespondingtotheBooleanlogicvalueTRUE.
• Logic0: ThelevelvaluecorrespondingtotheBooleanlogicvalueFALSE.
• Set: Theactionofsettingoneormorebitstothelevelvaluecorrespondingtologic1.
• Clear: Theactionofsettingoneormorebitstothelevelvaluecorrespondingtologic0.
• Reservedbit: Abitreservedforfeatureextension. Thevalueofareservedbitis0unless
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 5

Chapter1Overview
otherwisespecified.
• Signal: Anelectricalvalueusedtotransferinformationbasedonitsstateorstatetransi-
tion.
• Pin: Anexternalelectricalandphysicalconnection. Onepincanconnecttomultiplesig-
nals.
• Enable: Theactionofswitchingadiscretesignaltoavalidstate:
– Switchavalidlow-levelsignalfromahighleveltoalowlevel.
– Switchavalidhigh-levelsignalfromalowleveltoahighlevel.
• Disable: Theactionofswitchingthestateofanenabledsignal:
– Switchavalidlow-levelsignalfromalowleveltoahighlevel.
– Switchavalidhigh-levelsignalfromahighleveltoalowlevel.
• LSB:Theleastsignificantbit. MSB:Themostsignificantbit.
• Signal,bitfield,andcontrolbit: representedbyageneralrule.
• Identifierfollowedbyavaluerange: Indicatesagroupofsignalsfromthemostsignifi-
cantbittotheleastsignificantbit.
Forexample,"addr[4:0]"indicatesagroupofaddressbuses,whereaddr[4]indicatesthe
mostsignificantbit,andaddr[0]indicatestheleastsignificantbit.
• Singleidentifier: Indicatesasinglesignal.
Forexample,"pad_cpu_rst_b"indicatesasinglesignal.
Insomecases,anidentifierfollowedbyanumberisusedtoexpressaspecificmeaning.
Forexample,"addr15"indicatesthe16thbitofagroupofbuses.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 6

Chapter2C910Overview
2 C910 Overview
2.1 Structure Diagram
ThestructurediagramofC910MPisshowninFig.2.1.
Fig.2.1: C910MPMicroarchitecture
2.2 In-Core Subsystems
C910mainlyconsistsofthefollowingin-coresubsystems: InstructionFetchUnit(IFU),Instruction
DecodingUnit(IDU),IntegerExecutionUnit(IU),Floating-pointUnit(FPU),Load/StoreUnit(LSU),
RetirementUnit(RTU),VirtualMemoryManagementunit(MMU),andPhysicalMemoryProtection
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 7

Chapter2C910Overview
(PMP)unit.
2.2.1 IFU
InstructionFetchUnit(IFU)enablestofetchuptoeightinstructionsatatimeandprocessthemin
parallel. Itimprovesaccessefficiencywithavarietyoftechnologies,suchasI-Cachewaypredic-
tion, instruction registers, loop acceleration buffers, and direct/indirect branch prediction. IFU
featureslowpowerconsumption,highbranchpredictionaccuracy,andhighprefetchefficiency.
2.2.2 IDU
InstructionDecodeUnit(IDU)enablestodecodethreeinstructionsanddetectdatacorrelationat
atime. IDUsupportsdatacorrelationbetweeninstructionsbyphysicalregisterrenamingtech-
nology, and perform out-of-order instruction dispatch to the next-level pipeline for execution.
IDUsupportsout-of-orderschedulinganddistributionofinstructions. Itmitigatesperformance
lossduetodatacorrelationthroughspeculativeissuing.
2.2.3 ExecutionUnit
ExecutionunitsincludeIUandFPU.
IUconsistsofArithmeticLogicUnit(ALU),MultiplicationUnit(MULT),DivisionUnit(DIV),andJump
Unit(BJU).ALUperforms64-bitintegeroperation. MULTsupports16*16,32*32,and64*64integer
multiplication. DIVadoptsthebase16SRTalgorithm,andthecycletimevarieswiththeoperation
numbers. BJUcancompletebranchpredictionerrorhandlingwithinasinglecycle.
FPUs consist of Floating-point Arithmetic Logic Unit (FALU), Floating-point Fused Multiply-add
Unit(FMAU),andFloating-pointDivideandSquareUnit(FDSU).FPUsupportshalf-precision,and
single-precisionoperations. FALUisusedtooperationssuchasaddition, subtraction, compar-
ison, conversion, register data transmission, sign-injection, and classification. FMAU performs
commonmultiplication,fusedmultiply-addandotheroperations. FDSUperformsfloating-point
divisionandsquareroot,andotheroperations.
2.2.4 LSU
LoadStoreUnit(LSU)supportsdualissueforscalarstore/loadinstructionsandfullout-of-order
executionforall the store/loadinstructions. LSU also supports non-blocking access to caches,
andbyte,halfword,word,doubleword,andquadwordstore/loadinstructions,andsignbit/zero
extensionforbyteandhalfwordloadinstructions. Store/loadinstructionscanbeexecutedina
pipeline,supportingathroughputofonedataaccesspercycle. LSUsupports8-waydatastream
hardwareprefetch, transferringdatatoL1D-Cacheinadvance. Intheeventofacachemiss, it
supportsparallelaccessoverthebus.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 8

Chapter2C910Overview
2.2.5 RTU
RTUconsistsofareorderbufferandaphysicalregisterstack. Andthereorderbuffercontrolsout-
of-order recycling and in-order retirement of instructions. The physical register stack controls
out-of-orderrecyclingandtransferofresults. RTUimprovestheinstructionretirementefficiency
through parallel recycling and fast retirement of instructions. Moreover, RTU supports parallel
retirementofuptothreeinstructionsperclockcycleandimplementspreciseexceptions.
2.2.6 MMU
MMUcomplieswithRISC-VSV39standard,converting39/48-bitvirtualaddressesto40-bitphys-
icaladdresses. C910MMUextendssoftwarebackfillmethodsandaddressattributes,basedon
thehardwarebackfillcriteriadefinedinSV39.
Fordetailedinformation,pleaserefertoMemoryModel.
2.2.7 PMP
PMPcomplieswithRISC-Vstandard,supports8/16entries,butdoesnotsupporttheNA4mode.
TheminimumgranularitysupportedbythePMPunitis4KB.
Fordetailedinformation,pleaserefertoMemoryModel.
2.3 Multi-Core Subsystems
C910multicoresubsystemcontainsDataCoherenceInterfaceUnit(CIU),L2cache,MasterDevice
Interface Unit, configurable AXI4.0 Device Coherence Port (DCP), Platform-level Interrupt Con-
troller(PLIC),timerandcustommulti-coresingle-portdebugframework.
2.3.1 CIU
CIUemploystheMESIprotocoltomaintaincoherenceamongL1datacaches. Twosnoopbuffers
are configured to handle multiple snoop requests in parallel and fully utilize the snoop band-
width. CIUadoptsanefficientdatabypassingmechanism. WhenasnooprequesthitsL1D-Cache
undersnoop,thedataisdirectlybypassedtotherequestinitiationcore. Inaddition,CIUsupports
broadcastingofinvalidTranslationLookasideBuffer(TLB)/I-Cacherequests, whichreducesthe
softwaremaintainingcostsofdatacoherencebetweenTLB/I-CacheandD-Cache.
2.3.2 L2Cache
L2cacheistightlycoupledtotheCIUtoenablesynchronousaccesswithL1D-Caches. L2cache
adopts a block-based pipelining architecture and can handle two access requests in parallel
withinonecycle. Itsupportsamaximumaccessbandwidthof1024bits. Theoperatingfrequency
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 9

Chapter2C910Overview
ofL2cacheisthesameasthatinC910. TAGRAMandDATARAMaccesslatencycanbeconfigured
bythesoftware.
2.3.3 MasterDeviceInterface
The master device interface supports AXI4.0 protocol, critical word first access, and clock ratio
configurationsbetweensystemandCPUclocks(1:1,1:2,1:3,1:4,1:5,1:6,1:7,1:8).
2.3.4 DCP
DCP supports AXI4.0 protocol, which supports for peripheral access to on-chip D-Cache. The
hardware achieves data coherence and is used to connect to external Direct Memory Access
(DMA).
2.3.5 PLIC
PLIC suports the sampling and distribution of up to 1023 external interrupt sources, level-
triggeredandpulse-triggeredinterrupts,and32levelsofinterruptpriority.
Fordetailedinformation,pleaserefertoInterruptController.
2.3.6 Timer
Multi-coresystemprovidesoneshared64-bitsystemtimer. Eachcorehasitsownprivatetimer
comparevalueregister. Valuesofthesystemtimerarecollectedandcomparedwiththoseinthe
privatetimercomparevalueregistertogeneratetimersignals.
Fordetailedinformation,pleaserefertoInterruptController.
2.4 Interface Overview
In terms of features, C910 is mainly classified into clock reset signal, bus system, interrupt sys-
tem,debugsystem,lowpowersystem,DFTsystem,andCPUrunningmonitoringsignal. Thekey
interfacesofC910areillustratedinFig.2.2.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 10

Chapter2C910Overview
Fig.2.2: C910InterfacesOverview
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 11

Chapter3InstructionSets
| 3 Instruction | Sets |     |     |
| ------------- | ---- | --- | --- |
Thischapter mainlydescribes the instruction sets implemented in C910, which aredivided into
twomainpats: RVbaseinstructionsetsandXuanTieextendedinstructionsets.
| 3.1 RV Base | Instruction | Sets |     |
| ----------- | ----------- | ---- | --- |
3.1.1 IntegerInstructionSet(RV64I)
Theintegerinstructionsetcanbecategorizedbyfeaturesasfollows:
• Add/Subtractinstructions
• Logicaloperationinstructions
• Shiftinstructions
• Compareinstructions
• Datatransferinstructions
• Branchjumpinstructions
• Memoryaccessinstructions
• CSRoperationinstructions
• Lowpowerinstructions
• Exception-returninstructions
• Specialfunctioninstructions
Table3.1: IntegerInstructions(RV64I)List
| Instruction | Description |     | ExecutionLatency |
| ----------- | ----------- | --- | ---------------- |
Add/SubtractInstructions
| ADD  | Asignedaddinstruction                 |     | 1   |
| ---- | ------------------------------------- | --- | --- |
| ADDW | Asignedaddinstructiononthelower32bits |     | 1   |
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 12

Chapter3InstructionSets
Table 3.1–continuedfrompreviouspage
| Instruction | Description                    |           |             |              | ExecutionLatency |
| ----------- | ------------------------------ | --------- | ----------- | ------------ | ---------------- |
| ADDI        | Asignedaddimmediateinstruction |           |             |              | 1                |
| ADDIW       | A signed add                   | immediate | instruction | on the lower | 32 1             |
bits
| SUB  | Asignedsubtractinstruction                 |     |     |     | 1   |
| ---- | ------------------------------------------ | --- | --- | --- | --- |
| SUBW | Asignedsubtractinstructiononthelower32bits |     |     |     | 1   |
LogicOperationInstructions
| AND  | AbitwiseANDinstruction.          |     |     |     | 1   |
| ---- | -------------------------------- | --- | --- | --- | --- |
| ANDI | AnimmediatebitwiseANDinstruction |     |     |     | 1   |
| OR   | AbitwiseORinstruction            |     |     |     | 1   |
| ORI  | AnimmediatebitwiseORinstruction  |     |     |     | 1   |
| XOR  | AbitwiseXORinstruction.          |     |     |     | 1   |
| XORI | AnimmediatebitwiseXORinstruction |     |     |     | 1   |
ShiftInstructions
| SLL   | Alogicalleftshiftinstruction                     |     |     |     | 1   |
| ----- | ------------------------------------------------ | --- | --- | --- | --- |
| SLLW  | Awordlogicalleftshiftinstructiononthelower32bits |     |     |     | 1   |
| SLLI  | Animmediatelogicalleftshiftinstruction           |     |     |     | 1   |
| SLLIW | Animmediatelogicalleftshiftinstructiononthelower |     |     |     | 1   |
32bits
| SRL   | Alogicalrightshiftinstruction                 |         |             |                | 1     |
| ----- | --------------------------------------------- | ------- | ----------- | -------------- | ----- |
| SRLW  | Alogicalrightshiftinstructiononthelower32bits |         |             |                | 1     |
| SRLI  | Animmediatelogicalrightshiftinstruction       |         |             |                | 1     |
| SRLIW | An immediate                                  | logical | right shift | instruction on | the 1 |
lower32bits
| SRA  | Anarithmeticrightshiftinstruction |             |             |              | 1    |
| ---- | --------------------------------- | ----------- | ----------- | ------------ | ---- |
| SRAW | An arithmetic                     | right shift | instruction | on the lower | 32 1 |
bits
| SRAI  | Animmediatearithmeticrightshiftinstruction      |     |     |     | 1   |
| ----- | ----------------------------------------------- | --- | --- | --- | --- |
| SRAIW | Animmediatearithmeticrightshiftinstructiononthe |     |     |     | 1   |
lower32bits
CompareInstructions
| SLT | Asignedset-if-less-thaninstruction |     |     |     | 1   |
| --- | ---------------------------------- | --- | --- | --- | --- |
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 13

Chapter3InstructionSets
Table 3.1–continuedfrompreviouspage
| Instruction | Description                                     |     |     | ExecutionLatency |
| ----------- | ----------------------------------------------- | --- | --- | ---------------- |
| SLTU        | Anunsignedset-if-less-thaninstruction           |     |     | 1                |
| SLTI        | Asignedset-if-less-than-immediateinstruction    |     |     | 1                |
| SLTIU       | Anunsignedset-if-less-than-immediateinstruction |     |     | 1                |
DataTransferInstructions
| LUI   | Aloadupperimmediateinstruction     |     |     | 1   |
| ----- | ---------------------------------- | --- | --- | --- |
| AUIPC | AnaddupperimmediatetoPCinstruction |     |     | 1   |
BranchJumpInstructions
| BEQ  | Abranch-if-equalinstruction                       |                    |               | 1     |
| ---- | ------------------------------------------------- | ------------------ | ------------- | ----- |
| BNE  | Abranch-if-not-equalinstruction                   |                    |               | 1     |
| BLT  | Asignedbranch-if-less-thaninstruction             |                    |               | 1     |
| BGE  | Asignedbranch-if-greater-than-or-equalinstruction |                    |               | 1     |
| BLTU | Anunsignedbranch-if-less-thaninstruction          |                    |               | 1     |
| BGEU | An unsigned                                       | branch-if-greater- | than-or-equal | in- 1 |
struction
| JAL  | Aninstructionfordirectlyjumpingtoasubroutine |     |     | 1   |
| ---- | -------------------------------------------- | --- | --- | --- |
| JALR | Anjumpandlinkregisterinstruction             |     |     | 1   |
MemoryAccessInstructions
| LB  | Asign-extendedbyte-loadinstruction |     |     | WEAKORDER |
| --- | ---------------------------------- | --- | --- | --------- |
LOAD:>=3
STORE:1
STRONGORDER
Variablecycles
| LBU | Anunsign-extendedbyte-loadinstruction     |     |     | Sameasabove |
| --- | ----------------------------------------- | --- | --- | ----------- |
| LH  | Asign-extendedhalfword-loadinstruction    |     |     | Sameasabove |
| LHU | Anunsign-extendedhalfword-loadinstruction |     |     | Sameasabove |
| LW  | Asign-extendedword-loadinstruction        |     |     | Sameasabove |
| LWU | Anunsign-extendedword-loadinstruction     |     |     | Sameasabove |
| LD  | Adoubleword-loadinstruction               |     |     | Sameasabove |
| SB  | Abyte-storeinstruction                    |     |     | Sameasabove |
| SH  | Ahalfword-storeinstruction                |     |     | Sameasabove |
| SW  | Aword-storeinstruction                    |     |     | Sameasabove |
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 14

Chapter3InstructionSets
Table 3.1–continuedfrompreviouspage
| Instruction | Description                  | ExecutionLatency |
| ----------- | ---------------------------- | ---------------- |
| SD          | Adoubleword-storeinstruction | Sameasabove      |
CSROperationInstructions
| CSRRW | CSRread/write | Blocked |
| ----- | ------------- | ------- |
Variablecycles
| CSRRS  | CSRread/set            | Sameasabove |
| ------ | ---------------------- | ----------- |
| CSRRC  | CSRread/clear          | Sameasabove |
| CSRRWI | CSRread/writeimmediate | Sameasabove |
| CSRRSI | CSRread/setimmediate   | Sameasabove |
| CSRRCI | CSRread/clearimmediate | Sameasabove |
LowPowerInstructions
| WFI | Aninstructionforenteringthelow-powermode | Variablecycles |
| --- | ---------------------------------------- | -------------- |
Exception-ReturnInstructions
MRET An exception return instruction in Machine Mode (M- Blocked
|     | mode) | Variablecycles |
| --- | ----- | -------------- |
SRET AnexceptionreturninstructioninSupervisorMode(S- Sameasabove
mode)
SpecialFunctionInstructions
| FENCE | Amemorysynchronizationinstruction | Variablecycles |
| ----- | --------------------------------- | -------------- |
FENCE.I Aninstructionstreamsynchronizationinstruction Blocked
Variablecycles
SFENCE.VMA Avirtualmemorysynchronizationinstruction Sameasabove
| ECALL  | Anenvironmentexceptioninstruction | 1   |
| ------ | --------------------------------- | --- |
| EBREAK | Abreakpointinstruction            | 1   |
Forspecificinstructiondescriptionsanddefinitions,pleaserefertoAppendixA-1IInstructions
3.1.2 MultiplicationandDivisionInstructionsSet(RV64M)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 15

Chapter3InstructionSets
|             | Table3.2: IntegerMultiplicationandDivisionInstruction(RV64M) |     |     |     |           |     |
| ----------- | ------------------------------------------------------------ | --- | --- | --- | --------- | --- |
| Instruction | Description                                                  |     |     |     | Execution | la- |
tency
| MUL  | Asignedmultiplyinstruction                      |     |     |     | 4   |     |
| ---- | ----------------------------------------------- | --- | --- | --- | --- | --- |
| MULW | Asignedmultiplyinstructiononthelower32bits      |     |     |     | 4   |     |
| MULH | Asignedmultiplyinstructionthatextractsupperbits |     |     |     | 4   |     |
MULHS A signed-unsigned multiply instruction that extracts upper 4
bits
| MULHU | Anunsignedmultiplyinstructionthatextractsupperbits |     |     |     | 4    |     |
| ----- | -------------------------------------------------- | --- | --- | --- | ---- | --- |
| DIV   | Asigneddivideinstruction.                          |     |     |     | 3-20 |     |
| DIVW  | Asigneddivideinstructiononthelower32bits           |     |     |     | 3-12 |     |
| DIVU  | Anunsigneddivideinstruction.                       |     |     |     | 3-20 |     |
| DIVUW | Anunsigneddivideinstructiononthelower32bits        |     |     |     | 3-12 |     |
| REM   | Asignedremainderinstruction                        |     |     |     | 3-20 |     |
| REMW  | Asignedremainderinstructiononthelower32bits        |     |     |     | 3-12 |     |
| REMU  | Anunsignedremainderinstruction.                    |     |     |     | 3-20 |     |
| REMUW | Anunsignedremainderinstructiononthelower32bits     |     |     |     | 3-12 |     |
Forspecificinstructiondescriptionsanddefinitions,pleaserefertoAppendixA-2MInstructions
3.1.3 AtomicInstructionSet(RV64A)
Table3.3: AtomicInstruction(RV64A)List
| Instruction | Description |     |     | ExecutionLatency |     |     |
| ----------- | ----------- | --- | --- | ---------------- | --- | --- |
LR.W Awordload-reservedinstruction. Thisinstructionissplitintomul-
|      |                                      |     |     | tiple atomic | instructions | for ex- |
| ---- | ------------------------------------ | --- | --- | ------------ | ------------ | ------- |
| LR.D | Adoublewordload-reservedinstruction. |     |     |              |              |         |
ecution.
| SC.W | Awordstore-conditionalinstruction. |                   |          |                  |           |            |
| ---- | ---------------------------------- | ----------------- | -------- | ---------------- | --------- | ---------- |
|      |                                    |                   |          | This instruction | splitting | may        |
| SC.D | A doubleword                       | store-conditional | instruc- |                  |           |            |
|      |                                    |                   |          | involve          | blocking  | execution, |
tion.
|           |          |                 |             | with unpredictable |     | instruction |
| --------- | -------- | --------------- | ----------- | ------------------ | --- | ----------- |
| AMOSWAP.W | Anatomic | swapinstruction | onthe lower |                    |     |             |
delays.
32bits.
| AMOSWAP.D | Anatomicswapinstruction. |                 |             |     |     |     |
| --------- | ------------------------ | --------------- | ----------- | --- | --- | --- |
| AMOADD.W  | An atomic                | add instruction | that on the |     |     |     |
lower32bits.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 16

Chapter3InstructionSets
|             |                                    | Table 3.3–continuedfrompreviouspage |     |                  |
| ----------- | ---------------------------------- | ----------------------------------- | --- | ---------------- |
| Instruction | Description                        |                                     |     | ExecutionLatency |
| AMOADD.D    | Anatomicaddinstruction.            |                                     |     |                  |
| AMOXOR.W    | AnatomicbitwiseXORinstructiononthe |                                     |     |                  |
lower32bits.
| AMOXOR.D | AnatomicbitwiseXORinstruction.     |     |     |     |
| -------- | ---------------------------------- | --- | --- | --- |
| AMOAND.W | AnatomicbitwiseANDinstructiononthe |     |     |     |
lower32bits.
| AMOAND.D | AnatomicbitwiseANDinstruction. |         |                |         |
| -------- | ------------------------------ | ------- | -------------- | ------- |
| AMOOR.W  | An atomic                      | bitwise | OR instruction | that on |
thelower32bits.
| AMOOR.D  | AnatomicbitwiseORinstruction |        |                 |        |
| -------- | ---------------------------- | ------ | --------------- | ------ |
| AMOMIN.W | An atomic                    | signed | MIN instruction | on the |
lower32bits.
| AMOMIN.D | AnatomicsignedMINinstruction      |     |     |     |
| -------- | --------------------------------- | --- | --- | --- |
| AMOMAX.W | AnatomicsignedMAXinstructiononthe |     |     |     |
lower32bits.
| AMOMAX.D  | AnatomicsignedMAXinstruction. |          |                 |     |
| --------- | ----------------------------- | -------- | --------------- | --- |
| AMOMINU.W | An atomic                     | unsigned | MIN instruction | on  |
thelower32bits.
| AMOMINU.D | AnatomicunsignedMINinstruction. |          |                 |     |
| --------- | ------------------------------- | -------- | --------------- | --- |
| AMOMAXU.W | An atomic                       | unsigned | MAX instruction | on  |
thelower32bits.
| AMOMAXU.D | AnatomicunsignedMAXinstruction. |     |     |     |
| --------- | ------------------------------- | --- | --- | --- |
Forspecificinstructiondescriptionsanddefinitions,pleaserefertoAppendixA-3AInstructions.
3.1.4 Single-PrecisionFloating-PointInstructionSet(RV64F)
Single-precisionfloating-pointinstructionsetcanbecategorizedbyfeaturesasfollows:
• Operationinstructions
• Signinjectioninstructions
• Datatransferinstructions
• Compareinstructions
• Datatypeconversioninstructions
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 17

Chapter3InstructionSets
• Memorystoreinstructions
• Floating-pointclassificationinstructions
Table3.4: RV64FInstructionSet
| Instruction | Description |     |     | ExecutionLatency |
| ----------- | ----------- | --- | --- | ---------------- |
OperationInstructions
| FADD.S  | Asingle-precisionfloating-pointaddinstruction.      |                |              | 3     |
| ------- | --------------------------------------------------- | -------------- | ------------ | ----- |
| FSUB.S  | Asingle-precisionfloating-pointsubtractinstruction. |                |              | 3     |
| FMUL.S  | Asingle-precisionfloating-pointmultiplyinstruction  |                |              | 4     |
| FMADD.S | A single-precision                                  | floating-point | multiply-add | in- 5 |
struction.
FMSUB.S Asingle-precisionfloating-pointmultiply-subtractin- 5
struction.
FNMADD.S A single-precision floating-point negate-(multiply- 5
add)instruction.
FNMSUB.S A single-precision floating-point negate- (multiply- 5
subtract)instruction.
FDIV.S Asingle-precisionfloating-pointdivideinstruction. 4-10
FSQRT.S Asingle-precisionfloating-pointsquare-rootinstruc- 4-10
tion.
SignInjectionInstructions
FSGNJ.S A single-precision floating-point sign-injection in- 3
struction.
FSGNJN.S Asingle-precisionfloating-pointsignnegateinjection 3
instruction.
FSGNJX.S Asingle-precisionfloating-pointsignXORinjectionin- 3
struction.
DataTransferInstructions
FMV.X.W Asingle-precisionfloating-pointread/moveinstruc- 1+1cyclesinspiltex-
|     | tion. |     |     | ecution |
| --- | ----- | --- | --- | ------- |
FMV.W.X Asingle-precisionfloating-pointwrite/moveinstruc- 1+1cyclesinspiltex-
|     | tion. |     |     | ecution |
| --- | ----- | --- | --- | ------- |
CompareInstructions
| FMIN.S | Asingle-precisionfloating-pointMINinstruction. |     |     | 3   |
| ------ | ---------------------------------------------- | --- | --- | --- |
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 18

Chapter3InstructionSets
Table 3.4–continuedfrompreviouspage
| Instruction | Description                                    | ExecutionLatency |
| ----------- | ---------------------------------------------- | ---------------- |
| FMAX.S      | Asingle-precisionfloating-pointMAXinstruction. | 3                |
FEQ.S A single-precision floating-point compare equal in- 3+1cyclesinspiltex-
|     | struction. | ecution |
| --- | ---------- | ------- |
FLT.S A single-precision floating-point compare less than 3+1cyclesinspiltex-
|     | instruction. | ecution |
| --- | ------------ | ------- |
FLE.S Asingle-precisionfloating-pointcomparelessthanor 3+1cyclesinspiltex-
|     | equaltoinstruction. | ecution |
| --- | ------------------- | ------- |
DataTypeConversionInstructions
FCVT.W.S An instruction that converts a single-precision 3+1cyclesinspiltex-
|     | floating-pointnumbertoasignedinteger. | ecution |
| --- | ------------------------------------- | ------- |
FCVT.WU.S An instruction that converts a single-precision 3+1cyclesinspiltex-
|     | floating-pointnumbertoanunsignedinteger. | ecution |
| --- | ---------------------------------------- | ------- |
FCVT.S.W An instruction that converts a signed integer to a 3+1cyclesinspiltex-
|     | single-precisionfloating-pointnumber. | ecution |
| --- | ------------------------------------- | ------- |
FCVT.S.WU An instruction that converts an unsigned integer to a 3+1cyclesinspiltex-
|     | single-precisionfloating-pointnumber. | ecution |
| --- | ------------------------------------- | ------- |
FCVT.L.S An instruction that converts a single-precision 3+1cyclesinspiltex-
|     | floating-pointnumbertoasignedlonginteger. | ecution |
| --- | ----------------------------------------- | ------- |
FCVT.LU.S An instruction that converts a single-precision 3+1cyclesinspiltex-
|     | floating-pointnumbertoanunsignedlonginteger. | ecution |
| --- | -------------------------------------------- | ------- |
FCVT.S.L Aninstructionthatconvertsasignedlongintegertoa 1+3cyclesinspiltex-
|     | single-precisionfloating-pointnumber. | ecution |
| --- | ------------------------------------- | ------- |
FCVT.S.LU Aninstructionthatconvertsanunsignedlonginteger 1+3cyclesinspiltex-
|     | toasingle-precisionfloating-pointnumber. | ecution |
| --- | ---------------------------------------- | ------- |
MemoryStoreInstructions
FLW Asingle-precisionfloating-pointloadinstruction. WEAKORDER
LOAD:>=3
STORE:1
STRONGORDER
Variablecycles
FSW Asingle-precisionfloating-pointstoreinstruction. Sameasabove
Floating-pointClassificationInstructions
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 19

Chapter3InstructionSets
Table 3.4–continuedfrompreviouspage
| Instruction | Description | ExecutionLatency |
| ----------- | ----------- | ---------------- |
FCLASS.S A single-precision floating-point classification in- 1+1
struction.
Forspecificinstructiondescriptionsanddefinitions,pleaserefertoAppendixA-4Finstructions.
3.1.5 CompressedInstructionSet(RV64C)
CompressedInstructionSetcanbecategorizedbyfeaturesasfollows:
• Add/Subtractinstructions
• Logicaloperationinstructions
• Shiftinstructions
• Datatransferinstructions
• Branchjumpinstructions
• Immediateoffsetaccessinstructions
Table3.5: CompressedInstruction(RV64C)List
| Instruction | Description | ExecutionLatency |
| ----------- | ----------- | ---------------- |
Add/SubtractInstructions
| C.ADD   | Asignedaddinstruction                      | 1   |
| ------- | ------------------------------------------ | --- |
| C.ADDW  | Asignedaddinstructiononthelower32bits      | 1   |
| C.ADDI  | Asignedaddimmediateinstruction             | 1   |
| C.ADDIW | Asignedaddimmediateinstructiononthelower32 | 1   |
bits
| C.SUB  | Acompressedsignedsubtractinstruction       | 1   |
| ------ | ------------------------------------------ | --- |
| C.SUBW | Asignedsubtractinstructiononthelower32bits | 1   |
C.ADDI16SP An instruction that adds an immediate scaled by 16 1
tothestackpointer
| C.ADDI4SPN | Aninstructionthataddsanimmediatescaledby4to | 1   |
| ---------- | ------------------------------------------- | --- |
thestackpointer
LogicOperationInstructions
| C.AND  | AbitwiseANDinstruction           | 1   |
| ------ | -------------------------------- | --- |
| C.ANDI | AnimmediatebitwiseANDinstruction | 1   |
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 20

Chapter3InstructionSets
Table 3.5–continuedfrompreviouspage
| Instruction | Description            | ExecutionLatency |
| ----------- | ---------------------- | ---------------- |
| C.OR        | AbitwiseORinstruction  | 1                |
| C.XOR       | AbitwiseXORinstruction | 1                |
ShiftInstructions
| C.SLLI | Animmediatelogicalleftshiftinstruction     | 1   |
| ------ | ------------------------------------------ | --- |
| C.SRLI | Animmediatelogicalrightshiftinstruction    | 1   |
| C.SRAI | Animmediatearithmeticrightshiftinstruction | 1   |
DataTransferInstructions
| C.MV  | Adatatransferinstruction | 1   |
| ----- | ------------------------ | --- |
| C.LI  | Loadlowerimmediate       | 1   |
| C.LUI | Loadupperimmediate       | 1   |
BranchJumpInstructions
| C.BEQZ | Abranch-if-equal-to-zeroinstruction.     | 1   |
| ------ | ---------------------------------------- | --- |
| C.BNEZ | Abranch-if-not-equal-to-zeroinstruction. | 1   |
| C.J    | Anunconditionaljumpinstruction           | 1   |
| C.JR   | Ajumptoregisterinstruction               | 1   |
| C.JALR | AjumpAndlinkregisterinstruction          | 1   |
ImmediateOffsetAccessInstructions
| C.LW | Awordloadinstruction | WEAKORDER |
| ---- | -------------------- | --------- |
LOAD:>=3
STORE:1
STRONGORDER
Variablecycles
| C.SW   | Awordstoreinstruction                | Sameasabove |
| ------ | ------------------------------------ | ----------- |
| C.LWSP | AloadWordfromstackpointerinstruction | Sameasabove |
| C.SWSP | Astorewordtostackpointerinstruction  | Sameasabove |
| C.LD   | Adoublewordloadinstruction           | Sameasabove |
| C.SD   | Adoublewordstoreinstruction          | Sameasabove |
| C.LDSP | Adoublewordstackloadinstruction      | Sameasabove |
| C.SDSP | Adoublewordstackstoreinstruction     | Sameasabove |
| C.FLD  | Adouble-precisionloadinstruction     | Sameasabove |
| C.FSD  | Adouble-precisionstoreinstruction    | Sameasabove |
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 21

Chapter3InstructionSets
Table 3.5–continuedfrompreviouspage
| Instruction | Description                            |     |     |     | ExecutionLatency |     |
| ----------- | -------------------------------------- | --- | --- | --- | ---------------- | --- |
| C.FLDSP     | Adouble-precisionstackstoreinstruction |     |     |     | Sameasabove      |     |
| C.FSDSP     | Adouble-precisionstackloadinstruction  |     |     |     | Sameasabove      |     |
SpecialInstructions
| C.NOP    | Ano-operationinstruction |     |     |     | 1   |     |
| -------- | ------------------------ | --- | --- | --- | --- | --- |
| C.EBREAK | Abreakpointinstruction   |     |     |     | 1   |     |
For specific descriptions and definitions of vector instructions, please refer to Appendix A-6 C
Instructions
| 3.2 XuanTie | Extended | Instruction | Set |     |     |     |
| ----------- | -------- | ----------- | --- | --- | --- | --- |
C910 provides some extended custom instructions based on RV64GC instruction set. The half-
precision floating-point instructions of C910 extended instruction set can be directly applied.
Moreover,allC910extendedinstructionsetsneedtoenabletheExtendedInstructionSetEnable
bit (THEADISAEE) in the Machine Extended Status Register (MXSTATUS), to operated normally.
Otherwise,illegalinstructionexceptionswillbegenerated.
3.2.1 ArithmeticOperationInstructions
|             | Table3.6:   | ArithmeticOperationInstructionsSet |     |                  |     |     |
| ----------- | ----------- | ---------------------------------- | --- | ---------------- | --- | --- |
| Instruction | Description |                                    |     | ExecutionLatency |     |     |
Add/SubtractInstructions
| ADDSL | Registershiftandaddinstruction |     |     | 1               |     |        |
| ----- | ------------------------------ | --- | --- | --------------- | --- | ------ |
| MULA  | Amultiply-addinstruction       |     |     | Non-accumulator |     | depen- |
dency: 4
| MULS | Amultiply-subtractinstruction |     |     | Non-accumulator |     | depen- |
| ---- | ----------------------------- | --- | --- | --------------- | --- | ------ |
dency: 4
MULAW A multiply-add instruction on the lower 32 Accumulatordependency: 1
bits
MULSW A multiply-subtract instruction on the lower Accumulatordependency: 1
32bits.
MULAH A multiply-add instruction on the lower 16 Accumulatordependency: 1
bits
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 22

Chapter3InstructionSets
Table 3.6–continuedfrompreviouspage
| Instruction | Description | ExecutionLatency |     |     |
| ----------- | ----------- | ---------------- | --- | --- |
MULSH A multiply-subtract instruction on the lower Accumulatordependency: 1
16bits.
ShiftInstructions
| SRRI  | Acyclicrightshiftinstruction.            | 1   |     |     |
| ----- | ---------------------------------------- | --- | --- | --- |
| SRRIW | Acyclicrightshiftinstructiononthelower32 | 1   |     |     |
bits.
MoveInstructions
| MVEQZ | Amovinginstructionwhentheregistervalue | 1   |     |     |
| ----- | -------------------------------------- | --- | --- | --- |
is0
| MVNEZ | Amovinginstructionwhentheregistervalue | 1   |     |     |
| ----- | -------------------------------------- | --- | --- | --- |
isnot0
Forspecificinstructiondescriptionsanddefinitions,pleaserefertoAppendixB-3ArithmeticOper-
ationInstructions.
3.2.2 BitManipulationInstructions
Table3.7: BitManipulationInstructionsSet
| Instruction | Description |     | Execution | La- |
| ----------- | ----------- | --- | --------- | --- |
tency
BitManipulationInstructions
| TST    | Aninstructionfortestingbitswiththevalueof0.  |     | 1   |     |
| ------ | -------------------------------------------- | --- | --- | --- |
| TSTNBZ | Aninstructionfortestingbyteswiththevalueof0. |     | 1   |     |
| REV    | Abytereverseinstruction                      |     | 1   |     |
| REVW   | Abytereverseinstructiononthelower32bits.     |     | 1   |     |
FF0 An instruction for fast finding the first bit with the value 1
of0.
FF1 An instruction for fast finding the first bit with the value 1
of1.
| EXT | Asignedextensioninstructionforextractingconsecutive |     | 1   |     |
| --- | --------------------------------------------------- | --- | --- | --- |
bitsofaregister.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 23

Chapter3InstructionSets
Table 3.7–continuedfrompreviouspage
| Instruction | Description |     |     |     |     | Execution | La- |
| ----------- | ----------- | --- | --- | --- | --- | --------- | --- |
tency
EXTU A zero extension instruction for extracting consecutive 1
bitsofaregister.
Forspecificinstructiondescriptionsanddefinitions,pleaserefertoAppendixB-4BitwiseOperation
Instruction.
3.2.3 MemoryAccessInstructions
|           |             | Table3.8: MemoryAccessInstructionsSet |     |     |                  |     |     |
| --------- | ----------- | ------------------------------------- | --- | --- | ---------------- | --- | --- |
| Store In- | Description |                                       |     |     | Executionlatency |     |     |
struction
FLRD Adoublewordloadinstructionforshiftingfloating- WEAKORDER
|     | pointregisters. |     |     |     | >=3 |     |     |
| --- | --------------- | --- | --- | --- | --- | --- | --- |
FLRW A word load instruction for shifting floating-point STRONGORDER
Variablecycles
registers.
| FLURD | Adoublewordloadinstructionforshiftingthelower |     |     |     |     |     |     |
| ----- | --------------------------------------------- | --- | --- | --- | --- | --- | --- |
32bitsinfloating-pointregisters.
| FLURW | Awordloadinstructionforshiftingthelower32bits |     |     |     |     |     |     |
| ----- | --------------------------------------------- | --- | --- | --- | --- | --- | --- |
infloating-pointregisters.
| LRB | Abyteloadinstructionforshiftingregistersandex- |     |     |     |     |     |     |
| --- | ---------------------------------------------- | --- | --- | --- | --- | --- | --- |
tendingsignedbits.
| LRH | A halfword | load instruction | for shifting | registers |     |     |     |
| --- | ---------- | ---------------- | ------------ | --------- | --- | --- | --- |
andextendingsignedbits
| LRW | Awordloadinstructionforshiftingregistersandex- |     |     |     |     |     |     |
| --- | ---------------------------------------------- | --- | --- | --- | --- | --- | --- |
tendingsignedbits
| LRD  | Adoublewordloadinstructionforshiftingregisters. |     |     |     |     |     |     |
| ---- | ----------------------------------------------- | --- | --- | --- | --- | --- | --- |
| LRBU | Abyteloadinstructionforshiftingregistersandex-  |     |     |     |     |     |     |
tendingzerobits.
| LRHU | A halfword | load instruction | for shifting | registers |     |     |     |
| ---- | ---------- | ---------------- | ------------ | --------- | --- | --- | --- |
andextendingunsignedbits.
| LRWU | Awordloadinstructionforshiftingregistersandex- |     |     |     |     |     |     |
| ---- | ---------------------------------------------- | --- | --- | --- | --- | --- | --- |
tendingzerobits.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 24

Chapter3InstructionSets
Table 3.8–continuedfrompreviouspage
| Store In- | Description |     |     |     | Executionlatency |
| --------- | ----------- | --- | --- | --- | ---------------- |
struction
| LURB | Abyteloadinstructionforshiftingthelower32bits |     |     |     |     |
| ---- | --------------------------------------------- | --- | --- | --- | --- |
inregistersandextendingsignedbits.
| LURH | Ahalfwordloadinstructionforshiftingthelower32 |     |     |     |     |
| ---- | --------------------------------------------- | --- | --- | --- | --- |
bitsinregistersandextendingsignedbits.
| LURW | Awordloadinstructionforshiftingthelower32bits |     |     |     |     |
| ---- | --------------------------------------------- | --- | --- | --- | --- |
inregistersandextendingsignedbits.
| LURD | Adoublewordloadinstructionforshiftingthelower |     |     |     |     |
| ---- | --------------------------------------------- | --- | --- | --- | --- |
32bitsinregisters.
| LURBU | Abyteloadinstructionforshiftingthelower32bits |     |     |     |     |
| ----- | --------------------------------------------- | --- | --- | --- | --- |
inregistersandextendingzerobits.
| LURHU | Ahalfwordloadinstructionforshiftingthelower32 |     |     |     |     |
| ----- | --------------------------------------------- | --- | --- | --- | --- |
bitsinregistersandextendingzerobits.
| LURWU | Awordloadinstructionforshiftingthelower32bits |     |     |     |     |
| ----- | --------------------------------------------- | --- | --- | --- | --- |
inregistersandextendingzerobits.
LBIA A base-address auto-increment instruction for This instruction is split into
loadingbytesandextendingsignedbits. the load and ALU instruc-
tionsforexecution.
LBIB A byte load instruction for auto-incrementing the WEAKORDERLOAD:>=3
|     | baseaddressandextendingsignedbits. |     |     |     | STRONGORDER: |
| --- | ---------------------------------- | --- | --- | --- | ------------ |
LHIA A base-address auto-increment instruction for Variablecycles
loadinghalfwordsandextendingsignedbits.
| LHIB | A halfword | load instruction | for | auto-incrementing |     |
| ---- | ---------- | ---------------- | --- | ----------------- | --- |
thebaseaddressandextendingsignedbits.
| LWIA | A base-address | auto-increment |     | instruction | for |
| ---- | -------------- | -------------- | --- | ----------- | --- |
loadingwordsandextendingsignedbits.
| LWIB | Thewordloadinstructionforauto-incrementingthe |     |     |     |     |
| ---- | --------------------------------------------- | --- | --- | --- | --- |
baseaddressandextendingsignedbits.
| LDIA | A base-address | auto-increment |     | instruction | for |
| ---- | -------------- | -------------- | --- | ----------- | --- |
loadingdoublewordsandextendingsignedbits.
| LDIB | A doubleword | load     | instruction | for           | auto- |
| ---- | ------------ | -------- | ----------- | ------------- | ----- |
|      | incrementing | the base | address     | and extending |       |
signedbits.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 25

Chapter3InstructionSets
Table 3.8–continuedfrompreviouspage
| Store In- | Description |     |     |     |     |     |     | Executionlatency |     |     |
| --------- | ----------- | --- | --- | --- | --- | --- | --- | ---------------- | --- | --- |
struction
| LBUIA | A base-address |     | auto-increment |     |     | instruction | for |     |     |     |
| ----- | -------------- | --- | -------------- | --- | --- | ----------- | --- | --- | --- | --- |
loadingbytesandextendingzerobits.
| LBUIB | A byte load | instruction |     | for auto-incrementing |     |     | the |     |     |     |
| ----- | ----------- | ----------- | --- | --------------------- | --- | --- | --- | --- | --- | --- |
baseaddressandextendingzerobits.
| LHUIA | An address | auto-increment |     | instruction |     | for loading |     |     |     |     |
| ----- | ---------- | -------------- | --- | ----------- | --- | ----------- | --- | --- | --- | --- |
halfwordsandextendingzerobits.
| LHUIB | A halfword | load | instruction | for | auto-incrementing |     |     |     |     |     |
| ----- | ---------- | ---- | ----------- | --- | ----------------- | --- | --- | --- | --- | --- |
thebaseaddressandextendingzerobits
| LWUIA | An address | auto-increment |     | instruction |     | for loading |     |     |     |     |
| ----- | ---------- | -------------- | --- | ----------- | --- | ----------- | --- | --- | --- | --- |
wordsandextendingzerobits.
| LWUIB | A word | load instruction |     | for auto-incrementing |     |     | the |     |     |     |
| ----- | ------ | ---------------- | --- | --------------------- | --- | --- | --- | --- | --- | --- |
baseaddressandextendingzerobits.
LDD Adouble-registerloadinstruction. This instruction is split into
|     |     |     |     |     |     |     |     | two load | instructions | for |
| --- | --- | --- | --- | --- | --- | --- | --- | -------- | ------------ | --- |
execution.
| LWD | Adouble-registerwordloadinstructionforextend- |     |     |     |     |     |     | WEAKORDER: |     |     |
| --- | --------------------------------------------- | --- | --- | --- | --- | --- | --- | ---------- | --- | --- |
|     | ingsignedbits.                                |     |     |     |     |     |     | >=3        |     |     |
STRONGORDER:
| LWUD | Adouble-registerwordloadinstructionforextend- |     |     |     |     |     |     |     |     |     |
| ---- | --------------------------------------------- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
Variablecycles
ingzerobits.
FSRD Adoublewordstoreinstructionforshiftingfloating- WEAKORDER:1
|     | pointregisters. |     |     |     |     |     |     | STRONGORDER: |     |     |
| --- | --------------- | --- | --- | --- | --- | --- | --- | ------------ | --- | --- |
Variablecycles
| FSRW | A word | store instruction |     | for shifting |     | floating-point |     |     |     |     |
| ---- | ------ | ----------------- | --- | ------------ | --- | -------------- | --- | --- | --- | --- |
registers.
| FSURD | A doubleword |     | store | instruction | for | shifting | the |     |     |     |
| ----- | ------------ | --- | ----- | ----------- | --- | -------- | --- | --- | --- | --- |
lower32bitsinfloating-pointregisters.
| FSURW | Awordstoreinstructionforshiftingthelower32bits |     |     |     |     |     |     |     |     |     |
| ----- | ---------------------------------------------- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
infloating-pointregisters.
| SRB | Abytestoreinstructionforshiftingregisters. |     |       |             |     |          |        |     |     |     |
| --- | ------------------------------------------ | --- | ----- | ----------- | --- | -------- | ------ | --- | --- | --- |
| SRW | Awordstoreinstructionforshiftingregisters. |     |       |             |     |          |        |     |     |     |
| SRD | A doubleword                               |     | store | instruction | for | shifting | regis- |     |     |     |
ters.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 26

Chapter3InstructionSets
Table 3.8–continuedfrompreviouspage
| Store In- | Description |     |     |     | Executionlatency |     |     |
| --------- | ----------- | --- | --- | --- | ---------------- | --- | --- |
struction
| SURB | Abytestoreinstructionforshiftingthelower32bits |     |     |     |     |     |     |
| ---- | ---------------------------------------------- | --- | --- | --- | --- | --- | --- |
inregisters.
| SURH | Ahalfwordstoreinstructionforshiftingthelower32 |     |     |     |     |     |     |
| ---- | ---------------------------------------------- | --- | --- | --- | --- | --- | --- |
bitsinregisters.
| SURW | Awordstoreinstructionforshiftingthelower32bits |     |     |     |     |     |     |
| ---- | ---------------------------------------------- | --- | --- | --- | --- | --- | --- |
inregisters.
| SURD | A doubleword | store | instruction | for shifting | the |     |     |
| ---- | ------------ | ----- | ----------- | ------------ | --- | --- | --- |
lower32bitsinfloating-pointregisters
SBIA Abase-addressauto-incrementinstructionforstor- This instruction is split into
|     | ingbytes |     |     |     | the store | and ALU instruc- |     |
| --- | -------- | --- | --- | --- | --------- | ---------------- | --- |
tionsforexecution.
SBIB A byte store instruction for auto-incrementing the WEAKORDER:1
|     | baseaddress. |     |     |     | STRONGORDER: |     |     |
| --- | ------------ | --- | --- | --- | ------------ | --- | --- |
SHIA Abase-addressauto-incrementinstructionforstor- Variablecycles
inghalfwords.
| SHIB | A halfword | store instruction | for | auto-incrementing |     |     |     |
| ---- | ---------- | ----------------- | --- | ----------------- | --- | --- | --- |
thebaseaddress.
| SWIA | Abase-addressauto-incrementinstructionforstor- |     |     |     |     |     |     |
| ---- | ---------------------------------------------- | --- | --- | --- | --- | --- | --- |
ingwords.
| SWIB | A word | store instruction | for auto-incrementing |     | the |     |     |
| ---- | ------ | ----------------- | --------------------- | --- | --- | --- | --- |
baseaddress.
| SDIA | Abase-addressauto-incrementinstructionforstor- |     |     |     |     |     |     |
| ---- | ---------------------------------------------- | --- | --- | --- | --- | --- | --- |
ingdoublewords
| SDIB | A doubleword | store | instruction | for | auto- |     |     |
| ---- | ------------ | ----- | ----------- | --- | ----- | --- | --- |
incrementingthebaseaddress.
SDD Adouble-registerstoreinstruction. This instruction is split into
|     |     |     |     |     | two store | instructions | for |
| --- | --- | --- | --- | --- | --------- | ------------ | --- |
execution.
SWD Aninstructionforstoringthelower32bitsindouble WEAKORDER:1
|     | registers |     |     |     | STRONGORDER: |     |     |
| --- | --------- | --- | --- | --- | ------------ | --- | --- |
Variablecycles
Forspecificinstructiondescriptionsanddefinitions,pleaserefertoAppendixB-5StoreInstructions.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 27

Chapter3InstructionSets
3.2.4 CacheInstructions
|             |             | Table3.9: | CacheInstructionsList |           |     |
| ----------- | ----------- | --------- | --------------------- | --------- | --- |
| Instruction | Description |           |                       | Execution | La- |
tency(LMUL=1)
DCACHE.CALL An instruction that clears all dirty entries in Blockedexecution
|              | theD-Cache.    |             |           | Variablecycles |     |
| ------------ | -------------- | ----------- | --------- | -------------- | --- |
| DCACHE.CIALL | An instruction | that clears | all dirty | entries in     |     |
theD-Cacheandinvalidatestheentries.
| DCACHE.CIPA | An instruction | that clears            | dirty entries | that     |     |
| ----------- | -------------- | ---------------------- | ------------- | -------- | --- |
|             | match          | the specified physical | addresses     | in       |     |
|             | the D-Cache    | and invalidates        | the           | entries. |     |
(ThisinstructionalsoactsontheL2cache.)
| DCACHE.CISW | Aninstructionthatclearsdirtyentriesinthe |     |     |     |     |
| ----------- | ---------------------------------------- | --- | --- | --- | --- |
D-Cachebasedonthespecifiedway/setand
invalidatestheentries.
| DCACHE.CIVA | An instruction                   | that clears           | dirty entries | that     |     |
| ----------- | -------------------------------- | --------------------- | ------------- | -------- | --- |
|             | match                            | the specified virtual | addresses     | in the   |     |
|             | D-Cacheandinvalidatestheentries. |                       |               | (Thisin- |     |
structionalsoactsontheL2cache.)
| DCACHE.CPA | An instruction | that clears            | dirty entries | that    |     |
| ---------- | -------------- | ---------------------- | ------------- | ------- | --- |
|            | match          | the specified physical | addresses     | in      |     |
|            | the D-Cache.   | (This instruction      | also          | acts on |     |
theL2cache.)
| DCACHE.CPAL1 | An instruction | that clears            | dirty entries | that |     |
| ------------ | -------------- | ---------------------- | ------------- | ---- | --- |
|              | match          | the specified physical | addresses     | in   |     |
theL1D-Cache.
| DCACHE.CSW | Aninstructionthatclearsdirtyentriesinthe |     |     |     |     |
| ---------- | ---------------------------------------- | --- | --- | --- | --- |
D-Cachebasedonthespecifiedway/set.
| DCACHE.CVA | An instruction | that clears                     | dirty entries | that   |     |
| ---------- | -------------- | ------------------------------- | ------------- | ------ | --- |
|            | match          | the specified virtual           | addresses     | in the |     |
|            | D-Cache.       | (ThisinstructionalsoactsontheL2 |               |        |     |
cache.)
| DCACHE.CVAL1 | An instruction | that clears           | dirty entries | that   |     |
| ------------ | -------------- | --------------------- | ------------- | ------ | --- |
|              | match          | the specified virtual | addresses     | in the |     |
L1D-Cache.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 28

Chapter3InstructionSets
Table 3.9–continuedfrompreviouspage
| Instruction | Description |     |     | Execution | La- |
| ----------- | ----------- | --- | --- | --------- | --- |
tency(LMUL=1)
| DCACHE.IPA | An instruction | that invalidates       | entries   | that    |     |
| ---------- | -------------- | ---------------------- | --------- | ------- | --- |
|            | match          | the specified physical | addresses | in      |     |
|            | the D-Cache.   | (This instruction      | also      | acts on |     |
theL2cache.)
| DCACHE.ISW | An instruction | that invalidates | entries | in the |     |
| ---------- | -------------- | ---------------- | ------- | ------ | --- |
D-Cachebasedonthespecifiedway/set.
| DCACHE.IVA | An instruction | that invalidates                | entries   | that   |     |
| ---------- | -------------- | ------------------------------- | --------- | ------ | --- |
|            | match          | the specified virtual           | addresses | in the |     |
|            | D-Cache.       | (ThisinstructionalsoactsontheL2 |           |        |     |
cache.)
| DCACHE.IALL | An instruction | that invalidates | all | entries in |     |
| ----------- | -------------- | ---------------- | --- | ---------- | --- |
theD-Cache
ICACHE.IALL An instruction that invalidates all entries in Variablecycles
theI-Cache
| ICACHE.IALLS | An instruction | that invalidates | all | entries in |     |
| ------------ | -------------- | ---------------- | --- | ---------- | --- |
theI-Cachethroughbroadcasting
| ICACHE.IPA | An instruction | that invalidates       | entries   | that |     |
| ---------- | -------------- | ---------------------- | --------- | ---- | --- |
|            | match          | the specified physical | addresses | in   |     |
theI-Cache.
| ICACHE.IVA | An instruction | that invalidates      | entries   | that   |     |
| ---------- | -------------- | --------------------- | --------- | ------ | --- |
|            | match          | the specified virtual | addresses | in the |     |
I-Cache.
For specific instruction descriptions and definitions, please refer to Appendix B-1 Cache Instruc-
tions.
3.2.5 Multi-CoreSynchronizationInstructions
|            | Table3.10:      | Multi-CoreSynchronizationInstructions |     |     |     |
| ---------- | --------------- | ------------------------------------- | --- | --- | --- |
| Multi-core | Synchronization | Description                           |     |     |     |
Instructions
| SYNC |     | Asynchronizationinstruction |     |     |     |
| ---- | --- | --------------------------- | --- | --- | --- |
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 29

Chapter3InstructionSets
Table 3.10–continuedfrompreviouspage
| Multi-core | Synchronization | Description |     |
| ---------- | --------------- | ----------- | --- |
Instructions
| SYNC.S |     | Asynchronizationbroadcastinstruction               |     |
| ------ | --- | -------------------------------------------------- | --- |
| SYNC.I |     | Aninstructionforsynchronizingtheclearingoperation. |     |
SYNC.IS Abroadcastinstructionforsynchronizingtheclearingoper-
ation.
Forspecificinstructiondescriptionsanddefinitions,pleaserefertoAppendixB-2Multi-CoreSyn-
chronizationInstructions.
3.2.6 Half-precisionFloating-pointInstructions
|             | Table3.11:  | Half-precisionFloating-pointInstructionsSet |                  |
| ----------- | ----------- | ------------------------------------------- | ---------------- |
| Instruction | Description |                                             | Executionlatency |
OperationInstructions
| FADD.H | Ahalf-precisionfloating-pointaddinstruction.      |     | 3   |
| ------ | ------------------------------------------------- | --- | --- |
| FSUB.H | Ahalf-precisionfloating-pointsubtractinstruction. |     | 3   |
| FMUL.H | Ahalf-precisionfloating-pointmultiplyinstruction. |     | 3   |
FMADD.H A half-precision floating-point multiply-add instruc- 4
tion.
FMSUB.H A half-precision floating-point multiply-subtract in- 4
struction.
FNMADD.H A half-precision floating-point negate- (multiply- 4
add)instruction.
FNMSUB.H A half-precision floating-point negate- (multiply- 4
subtract)instruction.
| FDIV.H | Ahalf-precisionfloating-pointdivideinstruction. |     | 4-7 |
| ------ | ----------------------------------------------- | --- | --- |
FSQRT.H A half-precision floating-point square-root instruc- 4-7
tion.
SignInjectionInstructions
FSGNJ.H Ahalf-precisionfloating-pointsign-injectioninstruc- 3
tion
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 30

Chapter3InstructionSets
Table 3.11–continuedfrompreviouspage
| Instruction | Description |     |     |     | Executionlatency |
| ----------- | ----------- | --- | --- | --- | ---------------- |
FSGNJN.H A half-precision floating-point negate sign-injection 3
instruction
| FSGNJX.H | Ahalf-precisionfloating-pointXORsign-injectionin- |     |     |     | 3   |
| -------- | ------------------------------------------------- | --- | --- | --- | --- |
struction
DataTransferInstructions
FMV.X.H A half-precision floating-point read transfer instruc- 1+1
tion
FMV.H.X Ahalf-precisionfloating-pointwritetransferinstruc- 1+1
tion
CompareInstructions
| FMIN.H | Ahalf-precisionfloating-pointMINinstruction  |     |     |     | 3   |
| ------ | -------------------------------------------- | --- | --- | --- | --- |
| FMAX.H | Ahalf-precisionfloating-pointMAXinstruction. |     |     |     | 3   |
FEQ.H A half-precision floating-point compare equal in- 3+1cyclesinspiltex-
|     | struction. |     |     |     | ecution |
| --- | ---------- | --- | --- | --- | ------- |
FLT.H Ahalf-precisionfloating-pointcomparelessthanin- 3+1cyclesinspiltex-
|     | struction. |     |     |     | ecution |
| --- | ---------- | --- | --- | --- | ------- |
FLE.H A half-precision floating-point compare less than or 3+1cyclesinspiltex-
|     | equaltoinstruction. |     |     |     | ecution |
| --- | ------------------- | --- | --- | --- | ------- |
DataTypeConversionInstructions
| FCVT.S.H | Aninstructionthatconvertsahalf-precisionfloating- |                       |     |                | 3   |
| -------- | ------------------------------------------------- | --------------------- | --- | -------------- | --- |
|          | point number                                      | to a single-precision |     | floating-point |     |
number.
| FCVT.H.S | An instruction | that   | converts a          | single-precision | 3   |
| -------- | -------------- | ------ | ------------------- | ---------------- | --- |
|          | floating-point | number | to a half-precision | floating-        |     |
pointnumber.
FCVT.W.H Aninstructionthatconvertsahalf-precisionfloating- 3+1cyclesinspiltex-
|     | pointnumbertoasignedinteger. |     |     |     | ecution |
| --- | ---------------------------- | --- | --- | --- | ------- |
FCVT.WU.H Aninstructionthatconvertsahalf-precisionfloating- 3+1cyclesinspiltex-
|     | pointnumbertoanunsignedinteger. |     |     |     | ecution |
| --- | ------------------------------- | --- | --- | --- | ------- |
FCVT.H.W Aninstructionthatconvertsasignedintegertoahalf- 3+1cyclesinspiltex-
|     | precisionfloating-pointnumber |     |     |     | ecution |
| --- | ----------------------------- | --- | --- | --- | ------- |
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 31

Chapter3InstructionSets
Table 3.11–continuedfrompreviouspage
| Instruction | Description | Executionlatency |
| ----------- | ----------- | ---------------- |
FCVT.H.WU The instruction that converts an unsigned integer to 3+1cyclesinspiltex-
|     | ahalf-precisionfloating-pointnumber. | ecution |
| --- | ------------------------------------ | ------- |
FCVT.L.H Aninstructionthatconvertsahalf-precisionfloating- 3+1cyclesinspiltex-
|     | pointnumbertoasignedlonginteger. | ecution |
| --- | -------------------------------- | ------- |
FCVT.LU.H Aninstructionthatconvertsahalf-precisionfloating- 3+1cyclesinspiltex-
|     | pointnumbertoanunsignedlonginteger. | ecution |
| --- | ----------------------------------- | ------- |
FCVT.H.L An instruction that converts a signed long integer to 3, in sequential exe-
|     | ahalf-precisionfloating-pointnumber. | cution |
| --- | ------------------------------------ | ------ |
FCVT.H.LU Aninstructionthatconvertsanunsignedlonginteger 3, in sequential exe-
|     | toahalf-precisionfloating-pointnumber. | cution |
| --- | -------------------------------------- | ------ |
MemoryStoreInstructions
| FLH | Ahalf-precisionfloating-pointloadinstruction | WEAKORDER |
| --- | -------------------------------------------- | --------- |
LOAD:>=3
STORE:1
STRONGORDER
Variablecycles
FSH Ahalf-precisionfloating-pointstoreinstruction. Sameasabove
Floating-pointClassificationInstructions
FCLASS.H A half-precision floating-point classification instruc- 1+1
tion
For specific instruction descriptions and definitions, please refer to Appendix B-6 Half-Precision
Floating-PointInstructions.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 32

Chapter4CPUModeandRegister
4 CPU Mode and Register
4.1 CPU Mode
C910 supports three RISC-V privilege modes: Machine Mode (M-mode), Supervisor Mode (S-
mode),andUserMode(U-mode). C910runsprogramsinM-modeafterareset. Thethreemodes
correspondtodifferentoperationprivilegesanddifferinthefollowingaspects:
1. Registeraccess
2. Useofprivilegedinstructions
3. Memoryaccess
TheU-modeprovidesthelowestprivileges
User programs are only allowed to access the registers specific to the U-mode, which prevents
userprogramsfromaccessingprivilegedinformation. Theoperatingsystemmanagesandserves
userprogramsbycoordinatingtheirbehaviors.
TheS-modeprovidestheprivilegeshigherthantheU-modebutlowerprivilegesthantheM-
mode
ProgramsrunninginS-modearenotallowedtoaccesscontrolregistersspecifictotheM-mode
andareadditionallyconstrainedbyPMP.Thepage-basedvirtualmemoryimplementationcon-
stitutesthecorefunctionalityofS-mode.
TheM-modeprovidesthehighestprivileges
ProgramsrunninginM-modehavefullaccesstomemory,I/Oresources,andunderlyingfeatures
required for starting and configuring the system. By default, CPU switches to the M-mode to
respondtoexceptionsandinterruptsthatoccurinanymodeunlesstheexceptionsandinterrupts
aredelegated.
Most instructions can run in all the three modes. However, some privileged instructions with
majorimpactsonsystemscanrunonlyinS-modeorM-mode. Forspecificinformation, please
refer to Appendix A Standard Instructions and Appendix B XuanTie Extended Instructions to check
executionpermissionofinstructions.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 33

Chapter4CPUModeandRegister
Processor'sprivilegemodechangesinresponsetoanexception. (Theprivilegemodeinwhichan
exceptionoccursisdifferentfromthatinwhichtheCPUrespondstotheexception.) CPUswitches
toahigherprivilegemodetorespondtotheexception,andswitchesbacktothelowerprivilege
modeaftertheexceptionishandled.
4.2 Register View
TheregisterviewofC910isshowninFig.4.1:
Fig.4.1: RegisterView
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 34

Chapter4CPUModeandRegister
| 4.3 General-Purpose | Registers | (GPRs) |     |
| ------------------- | --------- | ------ | --- |
C910providesthirty-two64-bitGPRs,sharingthesamefeaturesanddefinitionsasthosedefined
inRISC-V.Forspecificinformation,asshowninTable4.1.
|          |         | Table4.1: | GPRs                                  |
| -------- | ------- | --------- | ------------------------------------- |
| Register | ABIName |           | Description                           |
| x0       | zero    |           | Hardwiredzeroregister                 |
| x1       | ra      |           | Returnaddressregister                 |
| x2       | sp      |           | Stackpointerregister                  |
| x3       | gp      |           | Globalpointerregister                 |
| x4       | tp      |           | Threadpointerregister                 |
| x5       | t0      |           | Temporary/standbylinkregister         |
| x6-7     | t1-2    |           | Temporaryregisters                    |
| x8       | s0/fp   |           | Reserved/framepointerregister         |
| x9       | s1      |           | Reservedregister                      |
| x10-11   | a0-1    |           | Functionargument/Returnvalueregisters |
| x12-17   | a2-7    |           | Functionargumentregisters             |
| x18-27   | s2-11   |           | Reservedregisters                     |
| x28-31   | t3-6    |           | Temporaryregisters                    |
The GPRs are designed to sore instruction operands, instruction execution results, and address
information.
| 4.4 Floating-Point | Registers |     |     |
| ------------------ | --------- | --- | --- |
InadditiontostandardRV64FDinstructionset,C910alsosupportsfloating-pointhalf-precision
computingandprovides32independent64-bitfloating-pointregisters. Theseregistersareac-
cessibleinU-mode,S-mode,andM-mode.
|          | Table4.2: | Floating-PointRegisters |                                             |
| -------- | --------- | ----------------------- | ------------------------------------------- |
| Register | ABIName   |                         | Description                                 |
| f0-7     | ft0-7     |                         | Floating-pointtemporaryregisters            |
| f8-9     | fs0-1     |                         | Floating-pointreservedregisters             |
| f10-11   | fa0-1     |                         | Floating-pointargument/returnvalueregisters |
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 35

Chapter4CPUModeandRegister
Table 4.2–continuedfrompreviouspage
Register ABIName Description
f12-17 fa2-7 Floating-pointargumentregisters
f18-27 fs2-11 Floating-pointreservedregisters
f28-31 ft8-11 Floating-pointtemporaryregisters
DifferentfromGPRx0,floating-pointregisterf0isnothardwiredto0,anditsbitvaluesarevari-
ablelikeotherfloating-pointregisters. Asingle-precisionfloating-pointnumberoccupiesonly
the lower 32 bits of a 64-bit floating-point register, and the upper 32 bits must be all set to 1;
Otherwise, the number will be considered as Not a Number (NaN). A half-precision floating-
point number occupies only the lower 16 bits of a 64-bit floating-point register, and the upper
48bitsmustbesetto1;Otherwise,thenumberwillbeconsideredasNaN.
Increasing independent floating-point registers could expand the register capacity and band-
width, so as to improve CPU performance. Besides, it is necessary to add floating-point load
and store instructions at the same time, as well as instructions for transferring data between
floating-pointandGPRs.
4.4.1 TransferDatabetweenFloating-PointandGPRs
Data can be transferred between floating-point and GPRs by transferring instructions through
floating-pointregisters. Andthetransferringinstructionsinclude:
• FMV.X.H/FMV.H.X:half-precisiontransferinstructionoffloating-pointregisters.
• FMV.X.W/FMV.W.X:single-precisiontransferinstructionoffloating-pointregisters.
When half-precision/single-precision data is transferred from a GPR to a floating-point regis-
ter, the data format remains unchanged. Therefore, a program can directly use these registers
withoutconvertingtheirtypes.
Forspecificinformation,pleaserefertoAppendixA-4Finstructions.
4.4.2 MaintaintheConsistencyofRegisterPrecision
Floating-pointregisterscanstorehalf-precision, single-precision, andintegerdata. Forexam-
ple, the type of data stored in floating-point register f1 depends on the last write operation,
whichmaybeanyofthefourdatatypes.
The FPU does not detect data formats based on hardware, and the hardware's parsing of the
data format in the floating-point register depends only on the floating-point instruction itself,
regardless of the data format of the last write operation to this register. It is entirely up to the
compilerorprogramitselftoensuretheconsistencyofthedataprecisioninregisters.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 36

Chapter4CPUModeandRegister
| 4.5 System Control | Registers |     |     |     |
| ------------------ | --------- | --- | --- | --- |
4.5.1 StandardControlandStatusRegisters(CSRs)
ThissectiondescribesRISC-VstandardCSRsimplementedinC910,includingtheregistersinM-
mode,S-mode,andU-mode.
TheRISC-Vstandardmachine-levelCSRsimplementedinC910aredescribedinTable4.3.
|          | Table4.3:  | RISC-VStandardMachine-levelCSRs |     |             |
| -------- | ---------- | ------------------------------- | --- | ----------- |
| Register | Read/Write | Permis-                         | ID  | Description |
sion
MachineInformationRegisters
| mvendorid | Read-onlyinM-mode |     | 0xF11 | VendorIDregister         |
| --------- | ----------------- | --- | ----- | ------------------------ |
| marchid   | Read-onlyinM-mode |     | 0xF12 | AnarchitectureIDregister |
mimpid Read-onlyinM-mode 0xF13 Machine hardware implementation
IDregister
| mhartid | Read-onlyinM-mode |     | 0xF14 | MachinelogicalcoreIDregister |
| ------- | ----------------- | --- | ----- | ---------------------------- |
MachineExceptionConfigurationRegisters
| mstatus | Read/WriteinM-mode |     | 0x300 | MachineCPUstatusregister |
| ------- | ------------------ | --- | ----- | ------------------------ |
misa Read/WriteinM-mode 0x301 MachineCPUinstructionsetattribute
register
medeleg Read/WriteinM-mode 0x302 Machineexceptiondelegationregis-
ter
mideleg Read/WriteinM-mode 0x303 Machine interrupt delegation regis-
ter
| mie | Read/WriteinM-mode |     | 0x304 | Machineinterruptenableregister |
| --- | ------------------ | --- | ----- | ------------------------------ |
mtvec Read/WriteinM-mode 0x305 Machine vector base address regis-
ter
mcounteren Read/WriteinM-mode 0x306 Machinecounterenableregister
mcountinhibit Read/WriteinM-mode 0x320 Machinecountinhibitregister
MachineExceptionHandlingRegisters
mscratch Read/WriteinM-mode 0x340 Machine exception temporary data
backupregister
| mepc | Read/WriteinM-mode |     | 0x341 | Machineexceptionreserveprogram |
| ---- | ------------------ | --- | ----- | ------------------------------ |
counter
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 37

Chapter4CPUModeandRegister
Table 4.3–continuedfrompreviouspage
Register Read/Write Permis- ID Description
sion
mcause Read/WriteinM-mode 0x342 Machineexceptioneventcausereg-
ister
mtval Read/WriteinM-mode 0x343 Machineexceptioneventvectorreg-
ister
mip Read/WriteinM-mode 0x344 Machine interrupt pending state
register
MachineMemoryProtectionRegisters
pmpcfg0 Read/WriteinM-mode 0x3A0 Physical memory protection config-
urationregister0
pmpcfg2 Read/WriteinM-mode 0x3A2 Physical memory protection config-
urationregister2
pmpaddr0 Read/WriteinM-mode 0x3B0 Physical memory protection base
addressregister0
......
pmpaddr15 Read/WriteinM-mode 0x3BF Physical memory protection base
addressregister15
MachineCounterandTimierRegisters
mcycle Read/WriteinM-mode 0xB00 Machinecyclecounter
minstret Read/WriteinM-mode 0xB02 Machineretiredinstructioncounter
mhpmcounter3 Read/WriteinM-mode 0xB03 Machinecounter3
......
mhpmcounter31 Read/WriteinM-mode 0xB1F Machinecounter31
MachineCounterConfigurationRegisters
mhpmevent3 Read/WriteinM-mode 0x323 Machineperformancemonitorevent
selectregister3
......
mhpmevent31 Read/WriteinM-mode 0x33F Machineperformancemonitorevent
selectregister31
TheRISC-Vstandardsupervisor-levelCSRsimplementedinC910areillustratedinTable4.4.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 38

Chapter4CPUModeandRegister
Table4.4: RISC-VStandardSupervisorCSRs
Register Read/WritePermission ID Description
SupervisorExceptionConfigurationRegisters
sstatus Read/WriteinS-mode 0x100 SupervisorCPUstatusregister
sie Read/WriteinS-mode 0x104 Supervisorinterruptenablecontrolregis-
ter
stvec Read/WriteinS-mode 0x105 Supervisorvectorbaseaddressregister
scounteren Read/WriteinS-mode 0x106 Supervisor counter enable control regis-
ter
SupervisorExceptionHandlingregisters
sscratch Read/WriteinS-mode 0x140 Supervisor exception temporary data
backupregister
sepc Read/WriteinS-mode 0x141 Supervisor exception reserved program
counter
scause Read/WriteinS-mode 0x142 Supervisorexceptioneventcauseregister
stval Read/WriteinS-mode 0x143 Supervisor exception event vector regis-
ter
sip Read/WriteinS-mode 0x144 Supervisorinterruptpendingstateregis-
ter
SupervisorAddressTranslationRegisters
satp Read/WriteinS-mode 0x180 Supervisor virtual address translation
andprotectionregister
TheRISC-Vstandarduser-levelCSRsimplementedinC910aredescribedinTable4.5.
Table4.5: RISC-VStandardUser-levelCSRs
Register Read/Write Permis- ID Description
sion
UserFloating-PointControlRegisters
fflags Read/Write in U- 0x001 Floating-point accrued exception status
mode register
frm Read/Write in U- 0x002 Floating-point dynamic rounding mode
mode controlregister
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 39

Chapter4CPUModeandRegister
|          | Table      | 4.5–continuedfrompreviouspage |                |
| -------- | ---------- | ----------------------------- | -------------- |
| Register | Read/Write | Permis-                       | ID Description |
sion
fcsr Read/Write in U- 0x003 Floating-pointcontrolstatusregister
mode
UserCounterandTimerRegisters
| cycle | Read-onlyinU-mode |     | 0xC00 Usercyclecounter |
| ----- | ----------------- | --- | ---------------------- |
| time  | Read-onlyinU-mode |     | 0xC01 Usertimer        |
instret Read-onlyinU-mode 0xC02 Userretiredinstructioncounter
| hpmcounter3 | Read-onlyinU-mode |     | 0xC03 Usercounter3 |
| ----------- | ----------------- | --- | ------------------ |
......
| hpmcounter31 | Read-onlyinU-mode |     | 0xC1F Usercounter31 |
| ------------ | ----------------- | --- | ------------------- |
4.5.2 ExtendedCSRs
ThissectiondescribesextendedCSRsimplementedinC910, categorizedaccordingtoM-mode,
S-mode,andU-mode.
Theextendedmachine-levelCSRsofC910aredescribedinTable4.6.
|          | Table4.6:            | ExtendedMachine-levelCSRsofC910 |                |
| -------- | -------------------- | ------------------------------- | -------------- |
| Register | Read/WritePermission |                                 | ID Description |
MachineCPUControlandStatusExtensionRegisters
mxstatus Read/WriteinM-mode 0x7C0 Machineextendedstatusregister
mhcr Read/WriteinM-mode 0x7C1 Machine hardware configuration reg-
ister
mcor Read/WriteinM-mode 0x7C2 Machinehardwareoperationregister
| mccr2 | Read/WriteinM-mode |     | 0x7C3 MachineL2cachecontrolregister |
| ----- | ------------------ | --- | ----------------------------------- |
| mcer2 | Read/WriteinM-mode |     | 0x7C4 MachineL2cacheECCregister     |
mhint Read/WriteinM-mode 0x7C5 Machineimplicitoperationregister
| mrmr | Read/WriteinM-mode |     | 0x7C6 Machineresetregister |
| ---- | ------------------ | --- | -------------------------- |
mrvbr Read/WriteinM-mode 0x7C7 Machine reset Vector base address
register
| mcer | Read/WriteinM-mode |     | 0x7C8 MachineL1CacheECCregister |
| ---- | ------------------ | --- | ------------------------------- |
mcounterwen Read/WriteinM-mode 0x7C9 Machinecounterwriteenableregister
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 40

Chapter4CPUModeandRegister
|          | Table                | 4.6–continuedfrompreviouspage |                |
| -------- | -------------------- | ----------------------------- | -------------- |
| Register | Read/WritePermission |                               | ID Description |
mcounterinten Read/WriteinM-mode 0x7CA Machine event interrupt enable regis-
ter
mcounterof Read/WriteinM-mode 0x7CB Machineeventoverflowflagregister
meicr Read/WriteinM-mode 0x7D6 L1Cachehardwareerrorinjectionreg-
ister
meicr2 Read/WriteinM-mode 0x7D7 L2Cachehardwareerrorinjectionreg-
ister
MachineCacheAccessExtensionRegisters
mcins Read/WriteinM-mode 0x7D2 Machinecacheinstructionregister
mcindex Read/WriteinM-mode 0x7D3 Machinecacheaccessindexregister
| mcdata0 | Read/WriteinM-mode |     | 0x7D4 Machinecachedataregister0 |
| ------- | ------------------ | --- | ------------------------------- |
| mcdata1 | Read/WriteinM-mode |     | 0x7D5 Machinecachedataregister1 |
MachineCPUModelExtensionRegisters
| mcpuid | Read-onlyinM-mode |     | 0xFC0 MachineCPUIDregister |
| ------ | ----------------- | --- | -------------------------- |
mapbaddr Read-onlyinM-mode 0xFC1 On-chipbusbaseaddressregister
Multi-coreExtensionRegister
| msmpr | Read/Writein |     | 0x7F3 Snoopenableregister |
| ----- | ------------ | --- | ------------------------- |
(cid:159) Attention
"mrmr"registerhasbeenremovedfromC910(R1S4andabove). Thesoftwarecanstillaccess
thisregister,butreadswillreturnzeroandwriteshavenoeffectwithouttriggeringexceptions.
Forspecificdefinitionsandfeaturesofregisters,pleaserefertoAppendixC-1Machine-levelControl
andStatusRegitsers(CSRs).
Theextendedsupervisor-levelCSRsofC910aredescribedinTable4.7.
|          | Table4.7:  | ExtendedSupervisor-levelCSRsofC910 |                |
| -------- | ---------- | ---------------------------------- | -------------- |
| Register | Read/Write | Permis-                            | ID Description |
sion
SupervisorProcessorControlandStatusExtensionRegisters
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 41

Chapter4CPUModeandRegister
Table 4.7–continuedfrompreviouspage
| Register | Read/Write |     | Permis- ID Description |
| -------- | ---------- | --- | ---------------------- |
sion
sxstatus Read/WriteinS-mode 0x5C0 Supervisorextensionstatusregister
shcr Read/WriteinS-mode 0x5C1 Supervisorhardwarecontrolregister
| scer2 | Read-onlyinS-mode |     | 0x5C2 SupervisorL2CacheECCregister |
| ----- | ----------------- | --- | ---------------------------------- |
| scer  | Read-onlyinS-mode |     | 0x5C3 SupervisorL1CacheECCregister |
scounterinten Read/WriteinS-mode 0x5C4 Supervisoreventinterruptenableregis-
ter
scounterof Read/WriteinS-mode 0x5C5 Supervisoreventoverflowflagregister
| scycle | Read/WriteinS-mode |     | 0x5E0 Supervisorcyclecounter |
| ------ | ------------------ | --- | ---------------------------- |
......
| shpmcounter31 | Read/WriteinS-mode |     | 0x5FF Supervisorcounter31 |
| ------------- | ------------------ | --- | ------------------------- |
SupervisorMMUExtensionRegisters
| smir  | Read/WriteinS-mode |     | 0x9C0 SupervisorMMUindexregister   |
| ----- | ------------------ | --- | ---------------------------------- |
| smel  | Read/WriteinS-mode |     | 0x9C1 SupervisorMMUEntryLoregister |
| smeh  | Read/WriteinS-mode |     | 0x9C2 SupervisorMMUEntryHiregister |
| smcir | Read/WriteinS-mode |     | 0x9C3 SupervisorMMUcontrolregister |
Forspecificdefinitionsandfeaturesofregisters,pleaserefertoAppendixC-2SupervisorCSRs.
Theextendeduser-levelCSRsofC910aredescribedinTable4.8.
Table4.8: ExtendedUser-levelCSRsofC910
| Register | Read/Write | Permis- | ID Description |
| -------- | ---------- | ------- | -------------- |
sion
ExtendedUserFloating-PointControlRegisters
fxcr Read/WriteinU-mode 0x800 Userextendedfloating-pointcontrolregister
For specific definitions and features of registers, please refer to Appendix C-3 RISC-V Standard
User-levelCSRs.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 42

Chapter4CPUModeandRegister
4.6 Data Format
4.6.1 IntegerDataFormat
The values within a register does not inherently have a big-endian or little-endian distinction;
rather,itisdistinguishedasbeingeithersignedorunsigned. Andtheformatisconsistentlyar-
rangedfromrighttoleft, representingtheleastsignificantbittothemostsignificantbit(MSB),
asshowninFig.4.2.
Fig.4.2: IntegerDataStructureinRegisters
4.6.2 Floating-PointDataFormat
Floating-point Units (FPU) of C910 comply with RISC-V standard and the ANSI/IEEE 754-2008
floating-point standard, and support half-precision, and single-precision floating-point oper-
ations. AndthedataformatisshowninFig.4.3. Single-precisiondataoccupiesonlythelower
32bitsofa64-bitfloating-pointregister,andtheupper32bitsmustbesetto1;Otherwise,the
data will be considered as NaN. While half-precision data occupies only the lower 16 bits of a
64-bitfloating-pointregister,andtheupper48bitsmustbesetto1;Otherwise,thedatawillbe
consideredNaN.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 43

Chapter4CPUModeandRegister
Fig.4.3: Floating-PointDataStructureinRegisters
4.7 Big-Endian and Little-Endian
Theconceptsofbig-endianandlittle-endianareproposedwithrespecttothedatastoreformat
ofmemories. Inthebig-endianmode,theMostSignificantByte(MSB)ofanaddressisstoredat
thelowerbitsinphysicalmemory. Whileinthelittle-endianmode,theMSBisstoredattheupper
bitsinphysicalmemory. ThedataformatisshowninFig.4.4.
Fig.4.4: DataStructureinMemory
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 44

Chapter4CPUModeandRegister
C910supportsonlythelittle-endianmodeandbinaryintegerswithstandardcomplements. The
length of each instruction operand can be explicitly encoded in programs (load/store instruc-
tions) or implicitly indicated in instruction operations (index operation and byte extraction). In
general,aninstructionreceivesa64-bitoperandandgeneratesa64-bitresult.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 45

Chapter5ExceptionandInterrupt
5 Exception and Interrupt
5.1 Overview
Exceptionhandling(includinginstructionexceptionandexternalexception)isanessentialfea-
tureofCPU.CPUisenabledtorespondtotheseexceptionsoncetheyoccur,includinghardware
errors,instructionexecutionerrorsanduserprogramrequestservices.
ThekeyofexceptionhandlingistosavetheoperatingstatusofCPUwhenanexceptionoccurs
and resume the status when CPU exits exception handling. Exceptions can be identified in all
stages of the instruction pipeline. CPU hardware ensures that subsequent instructions do not
change CPU status. Exceptions are handled at the boundary of an instruction. To be specific,
CPU responds to the exceptions when the instruction retires, and saves the address of the to-
be-executed instruction when CPU exits exception handling. CPU does not handle the excep-
tions until the instruction retires, even if exceptions are identified before an instruction retires.
Toensureproperfunctioningofprograms,CPUneedstoavoidrepeatedlyrunningtheexecuted
instructionsafterexceptionhandlingiscompleted.
Taketheexampleofexceptionshandledinmachinemode(M-mode): CPUrespondstoanexcep-
tioninthefollowingprocedure. (Theterm"exception"generallyreferstoinstructionexceptions
andexternalinterrupts)
Step1: SavePCtothemepcregister.
Step2: Updatethemcauseandmtvalregistersbasedontheexceptiontype.
Step3: Savetheinterrupt-enable(MIE)bitofthemstatusregistertotheMPIEbit, clearMIEbit,
andprohibitresponsestointerrupts.
Step4: SavetheprivilegemodebeforetheexceptionoccurstoMPPbitinthemstatusregister,
andswitchtoM-mode.
Step5: Obtaintheentryaddressofexceptionprogrambasedonthebaseaddressandmodein
the mtvec register, and begin the execution of the first instruction of the exception program in
sequence.
C910conformstotheexceptionvectortabledefinedinRISC-Vstandard,asshowninTable5.1.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 46

Chapter5ExceptionandInterrupt
Table5.1: VectorAssignmentforExceptionsandInterrupts
| Interrupt | ExceptionVectorID | Description |
| --------- | ----------------- | ----------- |
Flag
| 1   | 0   | Reserved(notimplemented)                          |
| --- | --- | ------------------------------------------------- |
| 1   | 1   | Asoftwareinterruptinsupervisormode(S-mode)        |
| 1   | 2   | Reserved                                          |
| 1   | 3   | AsoftwareinterruptinM-mode                        |
| 1   | 4   | Reserved(notimplemented)                          |
| 1   | 5   | AtimerinterruptinS-mode                           |
| 1   | 6   | Reserved                                          |
| 1   | 7   | AtimerinterruptinM-mode                           |
| 1   | 8   | Reserved(notimplemented)                          |
| 1   | 9   | AnexternalinterruptinS-mode                       |
| 1   | 10  | Reserved                                          |
| 1   | 11  | AnexternalinterruptinM-mode                       |
| 1   | 16  | L1DatacacheECCinterrupt(ifconfiguringECC)         |
| 1   | 17  | Performancemonitoroverflowinterrupt(ifconfiguring |
theperformancemonitorunit
| 1   | Others | Reserved                                         |
| --- | ------ | ------------------------------------------------ |
| 0   | 0      | Reserved(notimplemented)                         |
| 0   | 1      | Afetchinstructionaccesserrorexception            |
| 0   | 2      | Anillegalinstructionexception                    |
| 0   | 3      | Adebugbreakpointexception                        |
| 0   | 4      | Aloadinstructionunalignedaccessexception         |
| 0   | 5      | Aloadinstructionaccesserrorexception             |
| 0   | 6      | Astore/atomicinstructionunalignedaccessexception |
| 0   | 7      | Astore/atomicinstructionaccesserrorexception     |
| 0   | 8      | Auser-mode(U-mode)environmentcallexception       |
| 0   | 9      | AnS-modeenvironmentcallexception                 |
| 0   | 10     | Reserved                                         |
| 0   | 11     | AnM-modeenvironmentcallexception                 |
| 0   | 12     | Aninstructionfetchpageerrorexception             |
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 47

Chapter5ExceptionandInterrupt
Table 5.1–continuedfrompreviouspage
Interrupt ExceptionVectorID Description
Flag
0 13 Aloadinstructionpageerrorexception
0 14 Reserved
0 15 Astore/atomicinstructionpageerrorexception
0 >=16 Reserved
C910supportsthedelegationofexceptionsandinterrupts. Whenanexceptionorinterruptoc-
cursinS-mode,CPUneedstoswitchtoM-modeforhandling,whichcausesperformancelossof
CPU.DelegationenablesCPUtorespondtoexceptionsandinterruptsinS-mode. Whileexcep-
tionsthatoccurinM-modearenotdelegated,butstillhandledinM-mode. Interruptsthatoccur
in M-mode can be delegated to the S-mode for handling, except the external interrupts, soft-
wareinterrupts,andtimerinterruptsthatoccurinM-mode. InM-mode,CPUdoesnotrespondto
delegatedinterrupts.
InS-modeandU-mode,CPUcanrespondtoalleligibleinterruptsandexceptions. CPUresponds
toundelegatedexceptionsandinterruptsinM-mode,andupdatesthemachineexceptionhan-
dling registers. CPU responds to delegated exceptions and interrupts in S-mode, and updates
theS-modeexceptionhandlingregisters.
5.2 Exception
5.2.1 ExceptionHandling
In M-mode, CPU responds to exceptions in the following specific procedure: (The term "excep-
tion"specificallyreferstoillegalinstructionsandaccesserror.)
Step1: SavetheexceptionPCtomepcregister.
Step 2: Set the interrupt flag in the mcause register to 0, write the exception ID to the mcause
register,andupdatethemtvalregisterbasedontherulesdefinedinTable5.2.
Step 3: Save MIE bit of the mstatus register to the MPIE field, clear the MIE field, and prohibit
responsestointerrupts.
Step4: SavetheprivilegemodebeforetheexceptionoccurstoMPPfieldofthemstatusregister,
andswitchtotheM-mode.
Step5: PCfetchestheinstructionfromtheaddressspecifiedbymtvec.Baseandexecutesit. And
the instruction is usually a jump instruction for jumping to the top-level handler function. This
functionanalyzesthemcausetoobtaintheexceptioncodeandcallsthecorrespondinghandler
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 48

Chapter5ExceptionandInterrupt
functionofthatcode.
Table5.2: UpdatesofMtvaluponExceptionOccurrence
| Exception | Vector Exception | MtvalUpdateValue |     |
| --------- | ---------------- | ---------------- | --- |
ID
1 Afetchinstructionaccesserrorexception Virtual address accessed
bythefetchinstruction
| 2   | Anillegalinstructionexception | Instructioncode |     |
| --- | ----------------------------- | --------------- | --- |
| 3   | Adebugbreakpointexception     | 0               |     |
4 Aloadinstructionunalignedaccessexcep- Virtual address accessed
tion bytheloadinstruction
| 5   | Aloadinstructionaccesserrorexception | 0   |     |
| --- | ------------------------------------ | --- | --- |
6 An store/atomic instruction unaligned ac- Virtual address accessed
|     | cessexception | by the store/atomic | in- |
| --- | ------------- | ------------------- | --- |
struction
| 7   | AnStore/atomicinstructionaccesserrorex- | 0   |     |
| --- | --------------------------------------- | --- | --- |
ception
| 8   | AnU-modeenvironmentcallexception | 0   |     |
| --- | -------------------------------- | --- | --- |
| 9   | AnS-modeenvironmentcallexception | 0   |     |
| 11  | AnM-modeenvironmentcallexception | 0   |     |
12 Afetchinstructionpageerrorexception Virtual address accessed
bythefetchinstruction
13 Aloadinstructionpageaccessexception Virtual address accessed
bytheloadinstruction
15 An store/atomic instruction page error ex- Virtual address accessed
|     | ception | by the store/atomic | in- |
| --- | ------- | ------------------- | --- |
struction
5.2.2 ExceptionReturn
Anexceptionreturncanbeachievedbyexecutingmretinstruction. Atthispoint, CPUperforms
thefollowingoperations:
• Restore the mepc register to PC. (The mepc register stores PC where the exception oc-
curs. Adjusting the mepc register enables to skip the exception instruction; Otherwise,
theexceptioninstructionwillbeexecutedagain.)
• Restoremstatus.MIEfrommstatus.MPIE.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 49

Chapter5ExceptionandInterrupt
• Restoretheoriginalprivilegemodebeforetheexceptionoccurredfrommstatus.MPP.
5.2.3 ImpreciseExceptions
In rare cases, CPU may encounter "imprecise exceptions". An imprecise exception means that
themepcregisterdoesnotpointtotheinstructiontriggeringtheexceptionwhentheexception
occurs. Forexample,thebusreturnsanerroraftertheCPUexecutesaloadinstruction. Beacuse
pipelines feature fast instruction retirement, and the load instruction has already been retired
when the bus returns the error. And the mepc register points to the subsequent instruction in-
steadoftheloadinstruction.
However, imprecise exceptions rarely occur in practical systems. Once it does occur, it signifies
thatthesystemhasencounteredafatalerror.
5.3 Interrupt
5.3.1 InterruptPriorities
Whenmultipleinterruptrequestsoccursimultaneously,thepriorityisdeterminedinthefollowing
order(indescendingorder):
• L1ECCinterrupt
• M-modeexternalinterrupt
• M-modesoftwareinterrupt
• M-modetimerinterrupt
• S-modeexternalinterrupt
• S-modesoftwareinterrupt
• S-modetimerinterrupt
• PerformanceMonitoringUnit(PMU)overflowinterrupt
• L1ECCinterrupt(delegated)
• S-modeexternalinterrupt(delegated)
• S-modesoftwareinterrupt(delegated)
• S-modetimerinterrupt(delegated)
• PMUoverflowinterrupt(delegated)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 50

Chapter5ExceptionandInterrupt
5.3.2 InterruptResponse
InM-mode,theCPUrespondstoaninterruptinthefollowingspecificprocedure:
Step1: ExecutethecurrentinstructionandsavethePCofthenextinstructiontothemepcregister.
Step2: Settheinterruptflagofthemcauseregisterto1, writetheinterruptIDintothemcause
register,andupdatethemtvalregisterto0.
Step3: SavetheMIEbitofthemstatusregistertotheMPIEfield,cleartheMIEfield,andprohibit
responsestointerrupts.
Step 4: Save the privilege mode before the exception occurs to the MPP field of mstatus, and
switchtoM-mode.
Step 5 (mtvec.Mode=0, direct interrupt): PC fetches the instruction from the address specified
by mtvec.Base and executes it. And the instruction is usually a jump instruction for jumping to
the top-level handler function. This function analyzes mcause to determine the vector ID and
callsthecorrespondinghandlerfunctionforthatID.
5.3.3 InterruptReturn
Aninterruptreturnisaccomplishedbyexecutingthemretinstruction. Inthiscase,CPUperforms
thefollowingoperations:
• RestorethemepcregistertoPC.(ThemepcregisterstoresthePCofthenextinstruction,
sonoadjustmentisneeded)
• Restoremstatus.MIEfrommstatus.MPIE.
• Restorethepreviousprivilegemode(priortotheinterrupt)fromthemstatus.MPPfield.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 51

Chapter6MemoryModel
6 Memory Model
6.1 Overview
6.1.1 MemoryAttributes
C910supportstwomemorytypes: MemoryandDevice,whicharedistinguishedbyStrongOrder
(SO)bit.
• Memory type supports speculative execution and out-of-order execution. It is is further
classified into cacheable memory and non-cacheable memory, based on cacheable at-
tribute.
• Device type supports non-speculative and in-order execution, so device is non-
cacheable. Device can be claddified into bufferable device and non-bufferable device,
basedonbufferableattribute.
– Bufferablefeatureindicatesawriteaccessisallowedtoreturnawriteresponsequickly
atanintermediatenode.
– Conversely, non-bufferable feature indicates that a write access returns a write re-
sponseonlyafterthefinaldevicehastrulycompletedthewrite.
Tosupportdatasharingamongmultiplecores,theC910addsaShareable(SH)Pageattribute.
• Forshareablepages, itmeansthepageissharedamongmultiplecores,anddatacon-
sistencyismaintainedbyhardware.
• For non-shareable pages, it means the page is exclusively occupied by a single core,
and hardware is not required to maintain data consistency. Data consistency for non-
shareablepagesacrossmultiplecoresmustbemaintainedbysoftware.
AlthoughthehardwarereservesconfigurabilityforSHandSEC,customersarerequiredtosetthe
SHandSECattributesto1underallcircumstances. SincetheRISC-Vspecificationdoesnotdefine
thesetwobits,andalthoughwehaveimplementedcustomsoftwareinterfaces,theycannotmeet
therequirementsofpracticalapplicationscenarios.
Table6.1describesthepageattributescorrespondingtodifferentmemorytype.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 52

Chapter6MemoryModel
Table6.1: ClassificationofMemoryType
| MemoryType           | SO  | C   | B   | SH  | SEC |
| -------------------- | --- | --- | --- | --- | --- |
| Cacheablememory      | 0   | 1   | 1   | 1   | 1   |
| Non-cacheablememory  | 0   | 0   | 1   | 1   | 1   |
| bufferabledevice     | 1   | 0   | 1   | 1   | 1   |
| Non-bufferabledevice | 1   | 0   | 0   | 1   | 1   |
CPU can obtain the page sttribute by the following 2 methods: sysmap.h or Page Table Entry
(PTE).Andthedetailsaresofollows:
1. Oncircumstancewithoutthetranslationfromvituraladdressestophysicaladdresses(i.e.
whenintheoperatioinofM-modeorMemoryManagementUnit(MMU)isdisabled),the
pageattributeisdeterminebysysmap.h.
2. On circumstance with the translation from vitural addresses to physical addresses (i.e.
whenintheoperatioinofM-modeorMemoryManagementUnit(MMU)isdisabled),the
pageattributedependsonmxstatus.maee. Ifthemaeefieldisenabled, theattributeis
determined by the extended page atribute in the corresponding PTE. If the field is dis-
abled,theattributeisdeterminedbysysmap.h.
sysmap.hreferstotheextensionconfigurationfileofC910,whichisopentousers. Anduserscan
definethepageattributesofdifferentaddresssegmentsaccordingtotheirneeds.
sysmap.hsupportspageattributesettingsof8addressspaces. Theupperboundary(exclusive)
ofthei-th(i=0to7)addressspaceisdefinedbythemacroSYSMAP_BASE_ADDR i ,andthelower
| boundary(inclusive)isdefinedbySYSMAP_BASE_ADDR |     |     | ,whichis: |     |     |
| ---------------------------------------------- | --- | --- | --------- | --- | --- |
i-1
SYSMAP_BASE_ADDR <=Addressofthei-thspaceaddress<SYSMAP_BASE_ADDR
i-1 i
Thelowerboundaryofthe0-thaddressspaceis0x0. Theaddresstypeofmemoryaddressbe-
yondthe8addressspacesofsysmap.hfilearecacheable/bufferable/shareable/securitybyde-
fault. Theupperandlowerboundariesofeachaddressspaceare4KBaligned. Therefore, the
| macroSYSMAP_BASE_ADDR definestheupper28bitsofanaddress. |     |     |     |     |     |
| ------------------------------------------------------- | --- | --- | --- | --- | --- |
i
Theattributesofaddressesfallingwithinthei-th(i=0~7)addressspacearedefinedbythemacro
SYSMAP_FLAG (i=0~7),withthearrangementofattributesshowninFig.6.1below.
i
Fig.6.1: AddressAttributeFormatinsysmap.hFile
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 53

Chapter6MemoryModel
6.1.2 MemoryConsistencyModel
C910MPadoptsaweakmemoryorderingmodel,whichisdefinedasfollows:
• Ordering of access to the same address is maintained among multiple cores, including
readafterread(RAR),writeafterwrite(WAW),writeafterread(WAR),addreadafterwrite
(RAW).
• Weakorderingofaccesstodifferentaddressesisallowedamongmultiplecores,including
RAR,WAW,WAR,andRAW.
• Guarantees other-multi-copy atomicity, meaning that when a core can observe a write
fromanothercore,itensuresthatallothercorescanalsoobservethesamewrite;whereas
whenacoreobservesitsownwrite,itisnotrequiredthattheothernucleuscanalsoobtain
thewritedataatthistime.
Weakmemoryorderingcausesinconsistencybetweentheactualread/writeorderamongmulti-
plecoresandtheaccessorderdefinedbytheprogram. Therefore,C910providesextendedSYNC
instructionstoenforcememoryaccessorderinginsoftware.
SYNCinstructionsdefinetheexecutionorderofallinstructions,ensuringthatallinstructionsbe-
foretheSYNCinstructionmustbecompletedbeforetheSYNCinstructionisexecuted. Inaddition,
theSYNCinstructioncanadditionallysynchronizetheinstructionmemory,whichmeanstheSYNC
instruction clears the pipeline and re-fetches instructions after instructions preceding SYNC in-
structionareexecuted. Fordetailedinstructions,pleaserefertoTable6.2.
Table6.2: SYNCInstructionDescription
| Mnemonic | InstructionDescription              | Scope         |
| -------- | ----------------------------------- | ------------- |
| SYNC.IS  | Synchronizedataandinstructionmemory | Shareable     |
| SYNC.I   | Synchronizedataandinstructionmemory | Non-shareable |
| SYNC.S   | Synchronizedatamemory               | Shareable     |
| SYNC     | Synchronizedatamemory               | Non-shareable |
6.1.3 SYSMAPConfigurationReference
• Definition of attributes of address space 0: 40'h0 <= addr0[39:0] < 40'h100_0000, flg0
= 5'b01111. This address space segment includes SRAM, configured with cacheable at-
tribute,andtheattributedefinitionisasfollows:
| `define CT_SYSMAP_BASE_ADDR0 | 28'h1000 |     |
| ---------------------------- | -------- | --- |
| `define CT_SYSMAP_FLG0       | 5'b01111 |     |
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 54

Chapter6MemoryModel
• Definitionofattributesofaddressspace1: 40'h100_0000<=addr1[39:0]<40'h200_0000,
flg1=5'b10010. Thisaddressspacesegmentmainlycorrespondstothewriteaddresses
of special function (i.e., the print function), configured with the strong order attribute,
ensuring that the operations are guaranteed to be issued from the core to the bus. The
attributedefinitionisasfollows:
`define CT_SYSMAP_BASE_ADDR1 28'h2000
`define CT_SYSMAP_FLG1 5'b10010
• Definitionofattributesofaddressspace2: 40'h200_0000<=addr2[39:0]<40'h8000_0000,
flg2=5'b10010. ThisaddressspacesegmentmainlycorrespondstoAPBinterface,config-
uredwiththestrongorderedattribute,ensuringthattheoperationsareguaranteedtobe
issuedfromthecoretothebus. Theattributedefinitionisasfollows:
`define CT_SYSMAP_BASE_ADDR2 28'h8_0000
`define CT_SYSMAP_FLG2 5'b10010
• Definition of attributes of address space 3: 40'h8000_0000 <= addr3[39:0] <
40'hb000_0000,flg3=5'b01111. Theattributedefinitionisasfollows:
`define CT_SYSMAP_BASE_ADDR3 28'hb_0000
`define CT_SYSMAP_FLG3 5'b01111
• Definitionofattributesofaddressspace4: 40'hb000_0000<=addr4[39:0]<40'hffff_f000,
flg4=5'b10010. Theattributedefinitionisasfollows:
`define CT_SYSMAP_BASE_ADDR4 28'hf_ffff
`define CT_SYSMAP_FLG4 5'b10010
• Definition of attributes of address space 5: 40'hffff_f000 <= addr5[39:0] <
40'h40_0000_0000,flg5=5'b01111. Theattributedefinitionisasfollows:
`define CT_SYSMAP_BASE_ADDR5 28'h400_0000
`define CT_SYSMAP_FLG5 5'b01111
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 55

Chapter6MemoryModel
• Definition of attributes of address space 6: 40'h 40_0000_0000 <= addr6[39:0]
<40'h50_0000_0000,flg6=5'b10010. Theattributedefinitionisasfollows:
`define CT_SYSMAP_BASE_ADDR6 28'h500_0000
`define CT_SYSMAP_FLG6 5'b10010
• Definition of attributes of address space 7: 40'h50_0000_0000, <= addr7[39:0] <
40'hff_ffff_f000,flg7=5'b01111. Theattributedefinitionisasfollows:
`define CT_SYSMAP_BASE_ADDR7 28'hfff_ffff
`define CT_SYSMAP_FLG7 5'b01111
6.2 MMU
6.2.1 MMUOverview
C910memorymanagementunit(MMU)complieswithRISC-VSV39standard. C910MMUisspe-
cializedinthefollowingmainfeatures:
• Addresstranslation: Translates39-bitvirtualaddressesto40-bitphysicaladdresses.
• Pageprotection: Checkstheread/write/executionpermissionsofpagevisitors.
• Pageattributemanagement: Extendsaddressattributebitsandobtainspageattributes
basedonaccessaddressesforfurtherprocessingbysystem.
6.2.2 TLBOrganization
MMU achieves the above features mainly by Translation Look-aside Buffer (TLB). TLB takes the
virtual address used by CPU for memory access as an input, checks the page attributes of TLB
beforeperformingthetranslation,andthenoutputsthecorrespondingphysicaladdressforthat
virtualaddress.
C910 MMU adopts two levels of TLB. The first level is uTLB, consisting of instruction I-uTLB and
data D-uTLB, while the second level is jTLB. After the processor reset, hardware invalidates all
entriesinuTLBandjTLB,whilesoftwareinitializationisnotrequired.
I-uTLB contains 32 fully associative entries, and can store a mixture of 4K, 2M, and 1G pages.
WhenafetchrequesthitsI-uTLB,thephysicaladdressandcorrespondingpermissionattributes
canbeobtainedinthesamecycle.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 56

Chapter6MemoryModel
D-uTLB contains 17 fully associative entries, and can store a mixture of 4K, 2M, and 1G pages.
Whenaload/storerequesthitsD-uTLB,thephysicaladdressandcorrespondingpermissionat-
tributescanbeobtainedinthesamecycle.
jTLBissharedforinstructionsanddata,witha4-wayset-associativestructureandconfigurable
entriesof1024and2048. Itcanstoreamixtureof4K,2M,and1Gpages. InthecaseofauTLBmiss
andajTLBhit,thephysicaladdressandcorrespondingpermissionattributescanbereturnedin
asfastas3cycles.
6.2.3 AddressTranslationProcess
The main feature of MMU is to translate virtual addresses to physical addresses and perform
correspondingpermissioncheck. Specificaddressmappingandcorrespondingpermissionsare
configuredbytheoperatingsystemandstoredinpagetables.
C910adoptsupto3-levelpagetableindextofulfillthetranslation.
• Accessing the first-level page table to obtain the base address and corresponding per-
missionattributesofthesecond-levelpagetable.
• Accessing the second-level page table to obtain the base address and corresponding
permissionattributesofthethird-levelpagetable.
• Accessingthethird-levelpagetabletoobtainthefinalphysicaladdressandcorrespond-
ingpermissionattributes.
Everylevelofaccessmayyieldthefinalphysicaladdress(theleafentry). Thevirtualpagenumber
(VPN) is 27 bits and divided into three 9-bit VPN[i] segments. Each memory access uses one
segmenttoindexthepagetable.
Thecontentsoftheleafentry(i.e.,thephysicaladdressandcorrespondingpermissionattributes
translatedfromvirtualaddresstranslation)arecachedintheTLB,toaccelerateaddresstransla-
tion.
• IfthereisamissmappingintheuTLB,thejTLBwillbeaccessed.
• If there is a further miss mapping in the jTLB, MMU will initiate a hardware page table
walk,accessingmemorytoobtainthefinaladdresstranslationresult.
Thepagetableisusedtostoretheentryaddressesofthenext-levelpagetablesorthephysical
informationofthefinalpagetable. Itsstructureisshownasfollows:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 57

Chapter6MemoryModel
Fig.6.2: PageTableStructure
Flags–thepageattributeofbitfield9:0
Forthecorrespondingbitfeatures,pleaserefertoMMUEntryLoRegister(SMEL).
Flags–thepageattributebits63:59
The C910 custom page attribute presents when the MAEE bit is enabled in mxsta-
tus register. For the corresponding bit features, please refer to MMU EntryLo Register
(SMEL).
PPN–pagetablephysicaladdress
PPN[i]correspondstothePPNvalueusedduringthethree-levelpagetabletranslation.
Thedetailedaddresstranslationprocessisasfollows:
When the CPU attempts to access a virtual address, If the TLB hits, the physical address and
associatedattributesaredirectlyretrievedfromtheTLB.IftheTLBmisses,theaddresstranslation
proceedsthroughthefollowingsteps:
1. Obtain the access address {SATP.PPN, VPN[2], 3'b0} of the L1 page table, based on
SATP.PPN and VPN[2]. Then access the D-Cache/memory with the address and retrieve
the64-bitL1PTE.
2. Check whether the PTE complies with Physical Memory Protection (PMP) permissions. If
not,triggeracorrespondingaccesserrorexception. Ifcompliant,determinewhetherthe
X/W/R-bits match the leaf page table conditions according to the rules shown in Table
6.4 . If they match, the final physical address is determined, and the process proceeds
to Step 3; if not, return to Step 1. Use PTE.PPN to concatenate the next-level VPN[]. Ap-
pend 3'b0 to generate the next-level page table address, and continue accessing the
D-Cache/memory.
3. Ifaleafpagetableisfound,combinetheX/W/R/LbitsfromPMPandtheX/W/Rbitsfrom
the PTE to determine the minimum permissions for access checks, and backfill the JTLB
withthecontentofthePTE.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 58

Chapter6MemoryModel
4. If any PMP check at any step detects a permission violation, generate a corresponding
accesserrorexceptionbasedontheaccesstype.
5. Ifaleafpagetableisobtainedbut:
a. TheaccesstypeviolatestheA/D/X/W/R/U-bitsettings,generateacorrespondingpage
faultexception.
b. Noleafpagetableisobtainedafterthreelevelsofaccess,generateacorresponding
pagefaultexception.
c. AnaccesserrorresponseisreceivedduringDcache/memoryaccess,generateapage
faultexception.
6. Ifaleafpagetableisobtainedwithfewerthan3accesslevels,itindicatesalargepage.
CheckwhetherthePPNofthelargepageisalignedtothepagesize. Ifmisaligned,gen-
erateapagefaultexception.
6.2.4 SystemControlRegisters
BesidesstandardSATPregister,C910MMUsupportscustomtheextendedSMIR,SMCIR,SMELand
SMEHcontrolresgiters. Userscanpreformreads,writesandinvalidationbytheseregisters.
6.2.4.1 MMUAddressTranslationRegister(SATP)
SATPistheMMUcontolregisterinSv39standard.
Fig.6.3: SATPRegister
Mode-MMUaddresstranslationmode
Table6.3: MMUAddressTranslationMode
RV64
Value Name Description
0 Bare Notranslationorprotection
1-7 - Reserved
8 Sv39 Page-based39-bitvirtualaddressing
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 59

Chapter6MemoryModel
Table 6.3–continuedfrompreviouspage
RV64
9 Sv48 Page-based48-bitvirtualaddressing
10 Sv57 Reservedforpage-based57-bitvirtualaddressing
11 Sv64 Reservedforpage-based64-bitvirtualaddressing
12-15 - Reserved
ASID–CurrentASID
ItindicatestheASIDofthecurrentprogram.
PPN–HardwareBackfillingRootPPN
ItisusedinL1hardwarebackfilling.
6.2.4.2 MMUControlRegister(SMCIR)
SMICR supports multiple operations for MMU, including TLB checks, read/write TLB and TLB in-
validation.
Fig.6.4: SMCIRRegister
TLBP：TLBProbe
QuerytheTLBbasedontheEntryHiregister.
Whentheprobehits,updatetheIndexregisterwiththeTLBentrynumber.
TLBR:TLBRead
ReadtheTLBentryindexedbytheIndexregister,andupdatetheSMEHandSMELreg-
isterswiththeretrievedvalues.
TLBWI:TLBWriteIndexed
WritethevaluesfromtheSMEHandSMELregistersintotheTLBentryspecifiedbythe
Indexregister.
TLBWR:TLBWriteRandom
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 60

Chapter6MemoryModel
WritethevaluesfromtheSMEHandSMELregistersintotheTLBentryspecifiedbythe
Randomregister.
TLBIASID:TLBInvalidatebyASID
InvalidateallTLBentriesthatmatchtheASID.
TLBIALL:TLBInitializeAll
InvalidateallTLBentries(fullTLBinitialization).
TLBII:TLBInvalidatebyIndex
InvalidatethecorrespondingTLBentrybasedontheindexvalueintheIndexregister.
TLBIAW:TLBInvalidatebyWorld
InvalidateallTLBentriesassociatedwithboththetrustedandnon-trustedworlds.
This operation is only meaningful with TEE extensions, which are currently unsup-
portedbytheC910.
ASID:ASIDNumber
TheASIDusedforTLBIASIDoperationstomatchentries. TheSMCIRregisterenablesvarious
MMUoperations,includingTLBprobing,read/write,andinvalidation.
6.2.4.3 MMUIndexRegister(SMIR)
SMIR register is used in TLB index the TLB. During a TLB query, the index of the hit entry is up-
dated. WhenperformingaTLBwriteindexed,themappingrelationshipcanbewrittenintothe
correspondingindexpositioninthejTLB,bywritingtotheindexfieldoftheSMIR.
Fig.6.5: SMIRRegister
P–ProbeFailure
0: TLBPquerymatchesandhits.
1: TLBPquerydoesnothit.
Tfatal–Probemultiple
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 61

Chapter6MemoryModel
IndicateswhethermultiplematchesoccurredduringTLBPinstructionexecution.
0: Nomultiplematches.
1: Multiplematchesoccurred.
Index–TLBIndex
1024-entryconfiguration:
• Index[9:8] is the way index, and Index[7:0] is the set/entry index (4-way, 256
entries).
2048-entryconfiguration:
• Index[10:9]isthewayindex,andIndex[8:0]istheset/entryindex(4-way,512
entries).
6.2.4.4 MMUEntryHiRegister(SMEH)
SMEH supports two features: it includes the virtual addresses of TLB accesses and VPN value
uponTLBTLBexceptions. ASIDindicatestheprocessIDofthecurrentpage.
Fig.6.6: SMEHRegister
VPN–VirtualPageNumber
This field is hardware-updated during TLB reads or page fault exceptions, and pre-
writtenbysoftwarebeforewritingTLBentries.
Pagesize–PageSize
Onehotencodingfromlowtohighrepresents4K,2M,and1Gpagesizes.
Thisfieldishardware-updatedduringTLBreads,andpre-writtenbysoftwarebefore
writingTLBentries.
ASID–AddressSpaceIdentifier
Thisfieldtypicallystorestheidentifierofthecurrentaddressspacerecognizedbythe
operatingsystem,usedtodistinguishbetweendifferentprocesses.
Itishardware-updatedduringTLBreads,andpre-writtenbysoftwarebeforewriting
TLBentries.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 62

Chapter6MemoryModel
6.2.4.5 MMUEntryLoRegister(SMEL)
SMELregisterincludesphysicaladdressesandpageattributeinformationforTLBaccesses.
Fig.6.7: SMELRegister
PPN–PhysicalPageFrameNumber28-bit
SO–StrongOrder
Itindicatestheaccessingsequencerequirementformemory.
1'b0: Nostrongorder(Normalmemory)
1'b1: Strongorder(Device)
C–Cacheable
1'b0: Uncacheable
1'b1: Cacheable
B–Buffer
1'b0: Unbufferable
1'b1: Bufferable
SH–Shareable
Itindicatestheshareableattributeofpages
1'b0: Unshareable
1'b1: Shareable
Sec(T–Trustable)
Itindicateswhetherthepagesbelongstothetrustedworldorthenon-trustedworld,
andisonlyvalidwhentheTEEproextensionisconfigured.
1'b0: non-trustalbe
1'b1: trustable
RSW–ReservedforSoftware
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 63

Chapter6MemoryModel
Itisreservedforcustompagefeaturebitforsoftware. Andthedefaultvalueis2'b0.
D–Dirty
WhentheDbitis1,itindicateswhetherthepagehasbeenmodifiedoriswritable.
| 1'b0: Thepageisnotwritable/notwritten.  |     |     |     |
| --------------------------------------- | --- | --- | --- |
| 1'b1: Thepageiswritable/hasbeenwritten. |     |     |     |
IftheDbitis0,awriteoperationtothispagetriggersaPageFault(Store)exception.
TheDbitismaintainedbysoftwareviatheexceptionhandlertoalignwithitsdefinition
of"modified/writable."
A–Accessed
When the A bit is 1, the page is accessible. If set to 0, accessing the page triggers a
PageFault(correspondingaccesstype)exception.
| 1'b0: Thepageisinaccessible. |     |     |     |
| ---------------------------- | --- | --- | --- |
| 1'b1: Thepageisaccessible.   |     |     |     |
G–Global
Theglobalpageidentifier: thecurrentpageisshareableamongmultipleprocesses.
| 1'b0: Non-sharedpage(process-specific,ASID-private). |     |     |     |
| ---------------------------------------------------- | --- | --- | --- |
| 1'b1: Shareablepage.                                 |     |     |     |
U–User
ItisaccessibleinU-mode.
1'b0: InaccessibleinU-mode. AccessesinU-moderaiseapagefaultexception. The
defaultvalueis1'b0
| 1'b1: accessibleinU-mode. |     |     |     |
| ------------------------- | --- | --- | --- |
XWR–Executable,Writeable,Readable
|     |     | Table6.4: XWRPermisssions |                               |
| --- | --- | ------------------------- | ----------------------------- |
| X   | W   | R                         | Meaning                       |
| 0   | 0   | 0                         | Pointertonextlevelofpagetable |
| 0   | 0   | 1                         | Read-onlypage                 |
| 0   | 1   | 0                         | Reservedforfutureuse          |
| 0   | 1   | 1                         | Read-writepage                |
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 64

Chapter6MemoryModel
Table 6.4–continuedfrompreviouspage
X W R Meaning
1 0 0 Execute-onlypage
1 0 1 Read-executepage
1 1 0 Reservedforfuturepage
1 1 1 Read-write-executepage
V–Valid
Indicates whether the physical page is allocated in memory. Accessing a page with
V=0triggersaPageFaultexception.
1'b0: Thecurrentpageisnotallocated. 1'b1: Thecurrentpageisallocated.
6.3 MMU Parity Check
MMU supports configurable parity check for TAG and DATA in jTLB. When the check mechanism
isenabled,thejTLBperformsparityencodingonthedataduringwriteoperationsandperforms
a check during read operations. If 1-bit error is detected, it can report the error information,
invalidatethecachelinesinthejTLBthatareinerror,andtreattherequestasajTLBmiss. Itthen
initiates a hardware page table walk and performs refill. Software can probe the MCER/SCER
registerstoretrieverelevanterrorinformation,suchaswhetherajTLBcheckerrorwasgenerated
and the location of the error. For detailed information of control registers, please refer to the
descriptionofMCER/SCERregisterinMachineProcessorControlandStatusExtensionRegisterBank.
Errorsofmorethan1bitcannotbedetectedorcorrected.
C910 MMU supports software-injected error functionality. For detailed information on control
registers,pleaserefertothedescriptionofMEICRregisterinMachineProcessorControlandStatus
ExtensionRegisterBank.
6.4 PMP
6.4.1 PMPOverview
C910PMPcomplieswiththeRISC-Vstandard. PMPunitisdesignedtochecktheaccesspermission
ofaphysicaladdress,todeterminewhethertheCPUhastheread/write/executionpermissions
oftheaddressinthecurrentoperationmode.
ThePMPunitofC910providesthefollowingmainfeatures:
• Supports8/16PMPentries, witheachentryidentifiedandindexedbyanumberranging
from0to15.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 65

Chapter6MemoryModel
• Supportstheminimumaddresssplitgranularityof4KB.
• SupportstheOFF,TopofRange(TOR),andnaturallyAlignedPower-of-2Regions(NAPOT)
addressmatchingmodes,butnottheNaturallyAlignedFour-byteregion(NA4)mode.
• Supportsconfigurationofthreepermissions: readable,writable,andexecutable.
• PMPentriessupportsoftwareLock.
6.4.2 PMPControlRegisters
APMPentrymainlyconsistsofan8-bitconfigurationregisteranda64-bitaddressregister. All
PMPcontrolregisterscanonlybeaccessedinMachineMode(M-mode). Accessesinothermodes
willtriggerillegalinstructionexceptions.
6.4.2.1 PMPCFGRegister
Physical Memory Protection Configuration (pmpcfg) register supports permission configuration
of8entries.
Fig.6.8: OverallDistributionofPMPCFGRegisters
Fig.6.9: PMPConfigurationRegister
DetailedinformationofPMPcontrolregisterisdescribedinTable6.5.
Table6.5: DescriptionofPMPControlRegister
Bit Name Description
0 R Thereadableattributeoftheentry:
0: Theaddressmatchingtheentryisnon-readable.
1: Theaddressmatchingtheentryisreadable.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 66

Chapter6MemoryModel
Table 6.5–continuedfrompreviouspage
Bit Name Description
1 W Thewritableattributeoftheentry:
0: Theaddressmatchingtheentryisnon-writable.
1: Theaddressmatchingtheentryiswritable.
2 X Theexecutableattributeoftheentry:
0: Theaddressmatchingtheentryisnon-executable.
1: Theaddressmatchingtheentryisexecutable.
4:3 A Theaddressmatchingmodeoftheentry.
00: TheOFFmode,inwhichtheentryisinvalid.
01: TheTORmode,inwhichtheaddressoftheadjacententryisusedasthe
matchingrange.
10: TheNA4mode,inwhichthematchingrangeis4bytes. Thismodeisnot
supported.
11: TheNAPOTmode,inwhichthematchingrangeisapowerof2andisat
least4KB.
7 L Thelockenablebitoftheentry.
0: AllaccessesinM-modewillsucceed.
The bit determines whether Supervisor Mode (S-mode)/User Mode (U-
mode)accessissuccessfulaccordingtotheR/W/Xbit.
1: Theentryislockedandcannotbemodified.
InTORmode,theaddressregisterofthepreviousentrycannotbemodified
either.
AllmodesneedtodetermineifaccessissuccessfulbasedonR/W/Xbit.
InTORmode,assumingthattheaccessaddressisA,theconditionofhittingentryiisasfollows:
pmpaddr(i-1)<=A<pmpaddr(i). Thelowerboundaryofentry0is0.
The relationship of addresses and corresponding protection region size in NAPOT mode are
showninTable6.6.
Table6.6: ProtectionRegionCoding
pmpaddr[37:9] pmpcfg.A Protection Notes
RegionSize
a_aaaa_aaaa_aaaa_aaaa_aaaa_aaaa_aaa0 NAPOT 4KB Support
a_aaaa_aaaa_aaaa_aaaa_aaaa_aaaa_aa01 NAPOT 8KB Support
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 67

Chapter6MemoryModel
Table 6.6–continuedfrompreviouspage
| pmpaddr[37:9] | pmpcfg.A | Protection | Notes |
| ------------- | -------- | ---------- | ----- |
RegionSize
| a_aaaa_aaaa_aaaa_aaaa_aaaa_aaaa_a011 | NAPOT    | 16KB  | Support |
| ------------------------------------ | -------- | ----- | ------- |
| a_aaaa_aaaa_aaaa_aaaa_aaaa_aaaa_0111 | NAPOT    | 32KB  | Support |
| a_aaaa_aaaa_aaaa_aaaa_aaaa_aaa0_1111 | NAPOT    | 64KB  | Support |
| a_aaaa_aaaa_aaaa_aaaa_aaaa_aa01_1111 | NAPOT    | 128KB | Support |
| a_aaaa_aaaa_aaaa_aaaa_aaaa_a011_1111 | NAPOT    | 256KB | Support |
| a_aaaa_aaaa_aaaa_aaaa_aaaa_0111_1111 | NAPOT    | 512KB | Support |
| a_aaaa_aaaa_aaaa_aaaa_aaa0_1111_1111 | NAPOT    | 1M    | Support |
| a_aaaa_aaaa_aaaa_aaaa_aa01_1111_1111 | NAPOT    | 2M    | Support |
| a_aaaa_aaaa_aaaa_aaaa_a011_1111_1111 | NAPOT    | 4M    | Support |
| a_aaaa_aaaa_aaaa_aaaa_0111_1111_1111 | NAPOT    | 8M    | Support |
| a_aaaa_aaaa_aaaa_aaa0_1111_1111_1111 | NAPOT    | 16M   | Support |
| a_aaaa_aaaa_aaaa_aa01_1111_1111_1111 | NAPOT    | 32M   | Support |
| a_aaaa_aaaa_aaaa_a011_1111_1111_1111 | NAPOT    | 64M   | Support |
| a_aaaa_aaaa_aaaa_0111_1111_1111_1111 | NAPOT    | 128M  | Support |
| a_aaaa_aaaa_aaa0_1111_1111_1111_1111 | NAPOT    | 256M  | Support |
| a_aaaa_aaaa_aa01_1111_1111_1111_1111 | NAPOT    | 512M  | Support |
| a_aaaa_aaaa_a011_1111_1111_1111_1111 | NAPOT    | 1G    | Support |
| a_aaaa_aaaa_0111_1111_1111_1111_1111 | NAPOT    | 2G    | Support |
| a_aaaa_aaa0_1111_1111_1111_1111_1111 | NAPOT    | 4G    | Support |
| a_aaaa_aa01_1111_1111_1111_1111_1111 | NAPOT    | 8G    | Support |
| a_aaaa_a011_1111_1111_1111_1111_1111 | NAPOT    | 16G   | Support |
| a_aaaa_0111_1111_1111_1111_1111_1111 | NAPOT    | 32G   | Support |
| a_aaa0_1111_1111_1111_1111_1111_1111 | NAPOT    | 64G   | Support |
| a_aa01_1111_1111_1111_1111_1111_1111 | NAPOT    | 128G  | Support |
| a_a011_1111_1111_1111_1111_1111_1111 | NAPOT    | 256G  | Support |
| a_0111_1111_1111_1111_1111_1111_1111 | NAPOT    | 512G  | Support |
| 0_1111_1111_1111_1111_1111_1111_1111 | NAPOT    | 1T    | Support |
| 1_1111_1111_1111_1111_1111_1111_1111 | Reserved | -     | -       |
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 68

Chapter6MemoryModel
(cid:159) Attention
PMPNAPOTmodeinC910supportstheminimumgranularityof4KB,butdoesnotsupportNA4
mode.
6.4.2.2 PMPADDRRegister
ThePMPunitimplementsatotalof8/16addressregisterspmpaddr0~pmpaddr7/15tostorethe
physicaladdressesoftheentries.
RISC-VspecifiesthatPhysicalMemoryProtectionAddress(pmpaddr)Registerstoresthebit[39:2]
ofthephysicaladdress. SincetheminimumgranularityofthesupportedC910PMPentryis4KB,
bit[8:0]willnotbeappliedinaddressauthenticationlogic.
Fig.6.10: pmpaddrRegister
6.5 Memory Access Order
Indifferentscenarios,theC910accessprocesstotheaddressspacecanbesummarizedasfol-
lows:
Scenario1: withoutVirtualAddress(VA)-PhysicalAddress(PA)translation
1. CPUaccessPA:
2. Obtaintheaddressattributebysysmap.hfile.
3. PerformPMPcheckstodeterminewhetherRWXpermissionsconformtoPMPsettings.
4. Accesstheaddress.
Scenario2: withVA-PAtranslation
1. CPUaccessVA:
2. TranslatetheaddressbyMMUtoobtaincorrespondingPTE.
3. ObtaininformationfromthePTE:PA,addressattribute1 ,andRWXpermissions.
4. PerformPMPcheckstodeterminewhetherRWXpermissionsconformtothePMPsettings.
(ThefinalRWXpermissionsaredeterminedbythe'minimumvalue'ofPMPandPTE)
5. Accesstheaddress.
1Whenmaee=1,theaddressattributecomesfrompte.Whenmaee=0,theaddressattributecomesfromsysmap.h.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 69

Chapter7MemorySubsystem
7 Memory Subsystem
7.1 Memory Subsystem Overview
EachcoreofC910hasitsownInstructionCache(I-Cache)andDataCache(D-Cache). Fourcores
shareoneL2cache. Datacoherenceamongmultiplecoresismaintainedbyhardware.
7.2 L1 I-Cache
7.2.1 Overview
TheL1I-Cacheisspecializedinthefollowingkeyfeatures:
• Instructioncachesizeishardwareconfigurable,supporting32KB/64KB.
• 2-wayset-associative,withacachelinesizeof64bytes.
• Virtuallyindexed,physicallytagged(VIPT).
• Datawidthforaccess: 128bits.
• SupportsFirst-in,first-out(FIFO)replacementstrategy.
• SupportstheinvalidationforallI-Cacheandtheinvalidationaforasinglecacheline.
• Supportsinstructionprefetch.
• Supportsbranchprediction.
• Supportsparitycheck.
• TherequestforanI-CachemisswillsnooptheD-Cache. (Thefeaturecanbeenabledand
disabled).
7.2.2 BranchPrediction
C910I-Cacheadoptsthe2-wayset-associativestructure. C910implementsI-Cachebranchpre-
dictiontoreducepowerconsumptioninparallelaccesstotwocaches. Whenbranchprediction
informationisvalid,accesstotheinvaliddatawayisdisabled,andonlythedatafromthepre-
dicted way is accessed. Users can configure Implicit Operand Register MHINT.IWPE to enable
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 70

Chapter7MemorySubsystem
I-Cachebranchprediction.
Branchpredictioncanbeclassifiedintothefollowingtwotypesbydifferentfetchingbehaviors:
• Sequentialaccess: Whenperformingconsecutivein-lineinstructionfetching,thepredic-
tionoftheaccessedwayisbasedonthepreviouswayhitinformation.
• Jumpaccess: Inadditiontoobtainingthetargetjumpaddress, branchinstructionsalso
fetch branch prediction information of the target cache line, and access one way of the
cachebasedonthatinformation.
7.2.3 LoopAccelerationBuffer
C910providesa32Bloopaccelerationbuffertocopewithalargenumberofshortloopsinpro-
grams. Whendetectingashort-loopinstructionsequence,theCPUloadsittotheloopaccelera-
tionbuffer. Whenasubsequentinstructionfetchrequesthitsthebuffer,theCPUdirectlyobtains
theinstructionandtargetjumpaddressfromthebuffer,anddisablesaccesstoI-Cache,branch
historytable,andbranchjumptargetpredictor,soastoreducethedynamicpowerconsumption
ofinstructionfetch.
UserscanconfigureImplicitOperandRegisterMHINT.LPEtoenableshort-loopacceleration.
7.2.4 BranchHistoryTable
C910 processor provides a branch history table to predict the branch direction of conditional
branches. The branch history table has a capacity of 64Kb and takes a BI-MODE predictor as
thepredictionmechanism,supportingonebranchresultpredictionpercycle.
The branch history table consists of two parts: the predictor and the selector. And the predic-
tor is further divided into a jump predictor and a non-jump predictor, which are dynamically
maintainedbasedonthebranchhistoryinformation. Thebranchhistorytableindexeseachway
based on the branch history information and the current branch instruction address, to obtain
thepredictedresultofthebranchinstruction'sjumpdirection.
Theconditionalbranchinstructionspredictedbythebranchhistorytableinclude:
BEQ,BNE,BLT,BLTU,BGE,BGEU,C.BEQZ,C.BNEZ.
7.2.5 BranchJumpTargetPredictor
C910providesbranchjumptargetpredictortopredictjumptargetaddressesofbranchinstruc-
tions. Thebranchjumptargetpredictorrecordsthehistoricaltargetaddressesofbranchinstruc-
tions. Ifthecurrentbranchinstructionhitsthebranchjumptargetpredictor,therecordedtarget
addressisusedasthepredictedtargetaddressofthecurrentbranchinstruction.
Thebranchjumptargetpredictorprovidesthefollowingmainfeatures:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 71

Chapter7MemorySubsystem
• Hardwareconfigurable,supporting1024tableentriesand2048tableentries.
• Supports the 2-way set-associative structure, and supports PC replacement selection
basedonthelowerbitsofbranchinstructions.
• MaintainsI-Cachebranchpredictioninformation.
• SupportsindexingbyusingaportionofthecurrentbranchinstructionPC.
Thebranchinstructionspredictedbythebranchjumptargetpredictorinclude:
BEQ,BNE,BLT,BLTU,BGE,BGEU,C.BEQZ,C.BNEZ,JALandC.J
7.2.6 IndirectBranchPredictor
C910adoptstheindirectbranchpredictortopredictthetargetaddressesofanindirectbranch.
Indirectbranchinstructionsacquiretargetaddressesbyregisters. Oneindirectbranchinstruction
can contain multiple branch target addresses, which cannot be predicted by the conventional
branchjumptargetpredictor. Therefore,C910appliestheindirectbranchpredictionmechanism
basedonbranchhistory, toassociatethehistoricaltargetaddressesofindirectbranchinstruc-
tions with the branch history information prior to that branch. And C910 discretizes different
targetaddressesofthesameindirectbranchbasedondifferentbranchhistoryinformation, so
astoenablepredictionsformultipledifferenttargetaddresses.
Indirectbranchinstructionsinclude:
• JALR:Excludingsourceregistersx1andx5
• C.JALR:Excludingsourceregistersx5
• C.JR:Excludingsourceregistersx1andx5
7.2.7 ReturnAddressPredictor
Thereturnaddresspredictorisusedforthequickandaccuratepredictionofthereturnaddress
when a function call ends. When the instruction fetch unit (IFU) decodes a valid function call
instruction, thereturnaddressofthefunctionispushedontothestackandstoredinthereturn
address predictor. When the fetch unit decodes a valid function return instruction, the return
targetaddressisobtainedfromthereturnaddresspredictorstack. Thereturnaddresspredictor
supports up to 12 levels of function call nesting. Exceeding this nesting level will result in an
incorrectpredictionofthetargetaddress.
• ThefunctioncallinstructionsincludeJAL,JALR,andC.JALR.
• ThefunctionreturninstructionsincludeJALR,C.JR,andC.JALR.
ThespecificdivisionofinstructionfunctionalityisillustratedinTable7.1.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 72

Chapter7MemorySubsystem
|       | Table7.1: SpecificDivisionofInstructionFunctionality |        |            |
| ----- | ---------------------------------------------------- | ------ | ---------- |
| rd    | rs1                                                  | rs1=rd | RASaction  |
| !link | !link                                                | -      | none       |
| !link | link                                                 | -      | pop        |
| link  | !link                                                | -      | push       |
| link  | link                                                 | 0      | pushandpop |
| link  | link                                                 | 1      | push       |
7.2.8 FastJumpTargetPredictor
TospeedupthefetchefficiencyofIFUinconsecutivejumps,C910addsafastjumptargetpredic-
torinthefirststageoftheIFU.Whenthefetchunitencountersconsecutivebranchinstructions,
theFastBranchTargetPredictorwillcapturetheaddressandtargetaddressofthesecondbranch
instructioninthesequence. Ifaninstructionfetchrequesthitsthefastjumptargetpredictor,the
jumpisinitiatedatthefirststage,reducingperformancelossbyatleastonecycle.
Thebranchinstructionspredictedbythefastjumptargetpredictorinclude:
• BEQ,BNE,BLT,BLTU,BGE,BGEU,C.BEQZ,C.BNEZ
• JAL,C.J
• Functionreturninstructions
7.3 L1 D-Cache
7.3.1 Overview
TheL1D-Cacheisspecializedinthefollowingmainfeatures:
• D-cachesizeishardwareconfigurable,supporting32KB/64KB.
• 2-wayset-associative,withacachelinesizeof64bytes.
• Physicallyindexed,physicallytagged(PIPT).
• The maximum data width per read access: 128 bits, supporting byte, halfword, word,
doubleword,andquadwordaccess.
• Maximumdatawidthperwriteaccess: 256bits,supportingaccesseswithanycombina-
tionsofbytes.
• Writepolicysupportswrite-backwithwrite-allocatemodeandwrite-backwithwrite-no-
allocatemode.
• SupportsFirst-in,first-out(FIFO)replacementstrategy.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 73

Chapter7MemorySubsystem
• SupportsinvalidationandclearingoftheentireD-Cacheandtheinvalidationandclearing
ofanindividualcacheline.
• Supportsmulti-channeldataprefetchforinstructions.
• SupportsErrorCorrectingCode(ECC)andparitycheck.
7.3.2 L1D-CacheCoherence
ThehardwaremaintainsdatacoherenceinL1D-Cacheacrossdifferentcoresfortherequestof
configuringthepageattributesasshareableandcacheable.
While the CPU does not maintain data coherence in L1 D-Caches for the request of configuring
pageattributesasnon-shareableandcacheable. Ifnon-shareableandcacheablepagesneed
tobesharedacrosscores,softwareisrequiredtomaintaindatacoherence.
C910MPL1cachemaintainsD-Cachecoherenceacrossmultiplecores,basedontheMESIproto-
col. MESIrepresentsthefourstatesofeachcachelineinD-Cache,whichare:
• M:ThecachelineispresentonlyinthisD-Cacheandisdirty(UniqueDirty).
• E:ThecachelineispresentonlyinthisD-Cacheandisclean(UniqueClean).
• S:ThecachelinemaybepresentinmultipleD-Cachesandisclean(ShareClean).
• I:ThecachelineisnotpresentinthisD-Cache(Invalid).
7.3.3 ExclusiveAccess
C910supportsexclusivememoryaccessinstructions: Load-Reserved(LR)andStore-Conditional
(SC).Userscanusethetwoinstructionstoconstructasynchronizationprimitivesuchasanatomic
lock, to synchronize data among different processes of a core or among different cores. The
LR instruction marks the address to be exclusively accessed, and the SC instruction determines
whetherthetaggedaddressispreemptedbyotherprocesses. C910providesalocalmonitorin
the L1 D-Cache and a global monitor in the L2 cache for each core. Each monitor consists of a
statemachineandanaddressbuffer. Andthestatemachinehastwostates: IDLEandEXCLUSIVE.
Exclusiveaccesstoacacheablepagecanbeimplementedwiththelocalmonitor. WhentheLR
instructionisexecuted,itsetsthestatemachineofthelocalmonitortoEXCLUSIVEstateandstores
theaddresstobeaccessedandthesizetothebuffer;WhentheSCinstructionisexecuted,itreads
the state, address, and size of the local monitor. If the state is EXCLUSIVE and the address and
sizematchexactly,thewriteoperationisperformed,returningasuccessfulwriteandresettingthe
statemachinetoIDLEstate. Ifthestateoraddress/sizedoesnotmeetthe2conditions,oriftheD-
Cacheisnotenabled,thewriteoperationisnotexecuted,returningawritefailureandresetting
thestatemachinetoIDLEstate. Whenothercores'writeoperationsmatchthelocalmonitorat
thesamecachelineaddress, thestatemachineisalsoresettoIDLEstate. Localmonitorisnot
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 74

Chapter7MemorySubsystem
affectedbywriteoperationswithinthesamecoreorexclusiveaccesseswithdifferentaddresses.
Additionally,thelocalmonitorneedstobeclearedduringprocessswitching.
Exclusive access to a non-cacheable page is implemented with both the local monitor and the
globalmonitor. WhentheLRinstructionisexecuted, itmustsetboththelocalmonitorandthe
globalmonitor. Afterpassingthelocalmonitorcheck,theSCinstructionneedstofurthercheck
the global monitor. Only when the global monitor also passes the check, the write operation
is executed, returning a successful write and clearing the state machine. Otherwise, the write
operationisnotperformed,returningawritefailureandresettingthestatemachine. Whenother
cores'writeoperationsmatchaspecificglobalmonitoraddress,thestateofthatglobalmonitor
isresettoIDLEstate.
It is recommended to apply LR and SC instructions to implement atomic locks in C910 system.
If the address attribute of an atomic lock is cacheable (including shared and non-shared), no
special design is required for the SoC system, which is a typical case. While if the address at-
tributeofanatomiclockisnon-cacheable,device,orstronglyordered,usersneedtointegrate
exclusive monitor functionality within the system (e.g. Slave port). Other operations will occur
anUNPREDICTABLEresult.
7.4 L2 Cache
7.4.1 L2CacheOverview
L2cacheisspecializedinthefollowingkeyfeatures:
• Cachesizeishardwareconfigurable,supporting256KB/512KB/1MB/2MB/4MB/8MB.
• 16-wayset-associative,withacachelinesizeof64bytes.
• StrictlyinclusiverelationshipoftheL1D-CacheandL2Cache. Andnon-strictlyinclusive
relationshipoftheL1I-CacheandL2Cache.
• Physicallyindexed,physicallytagged(PIPT).
• Themaximumdatawidthperaccessis64bytes.
• Write policies support write-back with write-allocate, and write-back with write-no-
allocate.
• SupportsFirst-in,first-out(FIFO)replacementstrategy.
• SupportsprogrammableRAMlatency.
• SupportsoptionalECCcheckmechanism.
• SupportsinstructionprefetchandTranslationLookasideBuffer(TLB)prefetch.
• Supportsblock-basedpipelinetechnology.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 75

Chapter7MemorySubsystem
7.4.2 CacheCoherence
C910MPL2cacheadoptsMOESIprotocoltomaintainD-Cachecoherenceacrossmultipleproces-
sorcores. MESIrepresentsthefourstatesofeachcachelineinD-Cache,whichare:
• M:ThecachelineispresentonlyinthisD-Cacheandisdirty(UniqueDirty).
• O：ThecachelinemaybepresentinmultipleD-Cachesandisdirty(ShareDirty).
• E:ThecachelineispresentonlyinthisD-Cacheandisclean(UniqueClean).
• S:ThecachelinemaybepresentinmultipleD-Cachesandisclean(ShareClean).
• I:ThecachelineisnotpresentinthisD-Cache(Invalid).
7.4.3 Structure
Intermsoforganizationalstructure,theC910MPL2cacheadoptsapipelinedblock-basedarchi-
tecture. This design distributes access addresses across two discrete blocks, allowing parallel
processingofmultipleaccessestoimproveefficiency.
TheblockmechanismisshowninFig.7.1.
• TAGRAMisdividedintotwotagsub-blocksbyPhysicalAddress(PA)[6]: Tagbank0and
Tagbank1,tohandletwoaccessrequestsinparallelwithinthesameclockcycle.
• Similarly, DATARAMisdividedintotwodatasub-blocksbyPA[6]: Databank0andData
bank 1. Each data sub-block is further divided into four micro blocks with 128-bit data
width,soastoachieveparallelretrievalofacacheline.
Fig.7.1: L2CacheStructure
7.4.4 RAMLatency
TheaccesslatencyofL2Cacheislongbecauseofitslargecachesize,typicallyrequiringmultiple
clock cycles to complete the access. C910MP provides configurable access latency and can be
manuallyset,basedonsetuptimeandlatencyofRAMindifferentprocesses. Theconfiguration
detailsareillustratedinTable7.2.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 76

Chapter7MemorySubsystem
|                      | Table7.2: | ConfigurationofRAMLatency |             |
| -------------------- | --------- | ------------------------- | ----------- |
| ConfigurationOptions | Feature   |                           | Description |
L2TAGsetup L2CacheTagRAMsetup: L2CacheTagRAMconfigurationonly
|     | 1b00cycle. | (Defaultvalue) | affectsTAGRAMaccess. |
| --- | ---------- | -------------- | -------------------- |
1b11cycle.
| L2TAGlatency | L2CacheTagRAMlatency: |                   |     |
| ------------ | --------------------- | ----------------- | --- |
|              | 3b000:                | 1 cycle. (Default |     |
value)
3b001: 2cycles.
3b010: 3cycles.
3b011: 4cycles.
3b1xx: 5cycles.
| L2DATAsetup | L2CacheDataRAMsetup: |                | L2CacheDataRAMconfiguration |
| ----------- | -------------------- | -------------- | --------------------------- |
|             | 1b00cycle.           | (Defaultvalue) | onlyaffectsDATARAMaccess.   |
1b11cycle.
| L2DATAlatency | L2DataRAMlatency: |                   |     |
| ------------- | ----------------- | ----------------- | --- |
|               | 3b000:            | 1 cycle. (Default |     |
value)
3b001: 2cycles.
3b010: 3cycles.
3b011: 4cycles.
3b100: 5cycles.
3b101: 6cycles.
3b110: 7cycles.
3b111: 8cycles.
Users configure the latency based on the access time of the RAM used; the setup defaults to
0, and when the RAM's setup time is long or the routing delay is significant, the setup can be
configuredto1.
The number of access cycles obtained will be shown in Table 7.3, after configuring the above
options.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 77

Chapter7MemorySubsystem
Table7.3: ValidAccessLatencyofTAGRAM
| TAGlatency | ValidAccessLatencyofTAGRAM |            |
| ---------- | -------------------------- | ---------- |
|            | TAGsetup=0                 | TAGsetup=1 |
| 000        | 1                          | 2          |
| 001        | 2                          | 3          |
| 010        | 3                          | 4          |
| 011        | 4                          | 5          |
| 1xx        | 5                          | 5          |
Table7.4: ValidAccessLatencyofDATARAM
| DATAlatency | ValidAccessLatencyDATARAM |             |
| ----------- | ------------------------- | ----------- |
|             | DATAsetup=0               | DATAsetup=1 |
| 000         | 1                         | 2           |
| 001         | 2                         | 3           |
| 010         | 3                         | 4           |
| 011         | 4                         | 5           |
| 100         | 5                         | 6           |
| 101         | 6                         | 7           |
| 110         | 7                         | 8           |
| 111         | 8                         | 9           |
(cid:140)
Note
• ThemaximumeffectivedelayofL2Taglatencyis5cycles.
• WhenTAGsetupissetto1,anadditionalcycleisaddedtotheaccesstime. TheSRAM
inputsignalsarefloppedbeforeaccessingtheSRAM.
• ThemaximumeffectivedelayofL2Datalatencyis9cycles.
• WhenDATAsetupissetto1,anadditionalcycleisaddedtotheaccesstime;Similarly;
TheSRAMinputsignalsarefloppedbeforeaccessingtheSRAMSRAMaccess.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 78

Chapter7MemorySubsystem
7.5 Accelerated Memory Access
ThissectiondescribestheacceleratedmemoryaccessfeaturesofL1andL2cacheinC910.
7.5.1 L1I-CacheInstructionPrefetch
L1I-Cachesupportsinstructionprefetch,whichcanbeimplementedbyconfiguringimplicitreg-
isterMHINT.IPLD.Whenaninstructionaccessrequestmissesthecurrentcacheline,thenextcon-
secutivecachelineisprefetchedandstoredtotheprefetchbuffer. Whentheinstructionaccess
requesthitstheprefetchbuffer,theinstructionisdirectlyobtainedfromtheprefetchbufferand
backfilledintotheI-Cache,soastoreducetheinstructionfetchlatency.
Thisfeaturerequiresthattheprefetchedcachelineandthecurrentaccessedcachelinebeonthe
samepage,toensuresecurityoftheinstructionfetchaddress. Inaddition,read-sensitivedevice
addressspacescannotbeallocatedtoinstructionspaces.
7.5.2 Multi-ChannelDataPrefetchofL1D-Cache
C910 supports data prefetch to reduce the access latency of large-sized memory such as DDR.
C910 detects D-Cache misses to determine a fixed access mode through matching. Then the
hardwareautomaticallyprefetchescachelinesandbackfillsthembacktoL1D-Cache.
C910 supports up to 8-way data prefetch and two different prefetch methods: consecutive
prefetchandintervalprefetch(stride<=32cachelines).
C910alsoimplementsforwardprefetchandbackwardprefetch(thestrideisnegative)tosupport
variouspossibleaccessmodes.
DataprefetchisdisabledwhentheCPUinvalidatesorclearsD-Cache.
Users can configure implicit register MHINT.DPLD to enable data prefetch and MHINT.D_DIS to
determinethenumberofcachelinestobeprefetchedatatime.
Thefollowinginstructionssupportdataprefetch:
• LB,LBU,LH,LHU,LW,LWU,LD
• FLW,FLD
• LRB,LRH,LRW,LRD,LRBU,LRHU,LRWU,LURB,LURH,LURW,LURD,LURBU,LURHU,LURWU,
LBI,LHI,LWI,LDI,LBUI,LHUI,LWUI,LDD,LWD,LWUD
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 79

Chapter7MemorySubsystem
7.5.3 L1AdaptiveWriteAllocationMechanism
C910L1implementsadaptivewriteallocation. WhenCPUdetectsconsecutivememorywriteop-
erations,thewriteallocationattributeofpagesisautomaticallydisabled.
UserscanconfigureimplicitregisterMHINT.AMRtoenableL1adaptivewriteallocation.
AdaptivewriteallocationisautomaticallydisabledwhenCPUinvalidatesorclearsD-Cache. Then
CPUredetectsconsecutivememorywriteoperationsaftertheinvalidationandclearingoperation.
Thefollowinginstructionssupportadaptivewriteallocation:
• SB,SH,SW,SD
• FSW,FSD
• SRB,SRH,SRW,SRD,SURB,SURH,SURW,SURD,SBI,SHI,SWI,SDI,SDD,SWD
7.5.4 L2PrefetchMechanism
L2 cache supports instruction prefetch and TLB access prefetch. L2 cache is specialized in the
followingfeatures:
• The number of software-configurable instruction prefetch is 0, 1, 2, or 3. All prefetches
willbebackfilledintotheL2cache.
• TheTLBprefetchquantityisfixedat1.
• The prefetch mechanism operates with a 4KB page boundary, and it actively stops
prefetchingwhenencounteringaddressesthatcrossthisboundary.
• PrefetchmechanismcanbeconfiguredbyMachineL2CacheEnableRegister(mccr2).
7.6 L1/L2 Cache Operation Instruction and Register
I-CacheandD-CacheareautomaticallyinvalidatedanddisabledbydefaultafterCPUreset.
Similarly, L2 cache is automatically invalidated after CPU reset. Then L2 cache is automatically
enabledandcannotbedisabledaftertheinvalidation. ItisworthnotingthatL2willnotinitiate
abackfilloperationonamisswhentheL1cacheisdisabled.
7.6.1 ExtendedL1CacheRegisters
C910extendedregistersofL1cachearemainlyclassifiedbyfeaturesasfollows:
• Cacheenableandmodeconfiguration: MachineHardwareConfigurationRegister(mhcr)
enables/disables I-Cache/D-Cache and configure the write allocation and writeback
modes. SupervisorHardwareConfigurationRegister(shcr)isaread-onlyregistermapped
tothemhcrregister.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 80

Chapter7MemorySubsystem
• Theclearingandinvalidationofdirtypagetableentries: MachineCacheOperationReg-
ister(mcor)supportsclearingandinvalidatingentriesofI-CacheandD-Cache.
• Cachereadoperation: MachineCacheAccessInstructionRegister(mcins),MachineCache
Access Index Register (mcindex), and Machine Cache Access Data Register 0/1 (mc-
data0/1)supportreadingdatafromI-CacheandD-Cache.
Fordetailedspecificationofcontrolregisters,pleaserefertoMachineProcessorControlandStatus
ExtensionRegisterBankandMachineCacheAccessExtensionRegisterBank.
7.6.2 ExtendedL2CacheRegisters
C910extendedregistersofL2cachearemainlyclassifiedbyfeaturesasfollows:
• L2cacheenableandlatencyconfiguration: mccr2registerallowsuserstosettheaccess
latencyofL2cache.
• L2cachereadoperation: TheMachineCacheAccessInstructionRegister(mcins), Cache
AccessIndexRegister(mcindex),andCacheAccessDataRegister0/1(mcdata0/1)regis-
tersallowuserstoreaddatafromL2cache.
For detailed definition and specification of control registers, please refer to Machine Processor
ControlandStatusExtensionRegisterBankandMachineCacheAccessExtensionRegisterBank.
7.6.3 L1/L2CacheOperationInstructions
C910extendsL1/L2cacheoperationinstructionsthatinvalidatebyaddress,invalidateall,clear
dirtyentriesbyaddress,clearalldirtycachelines,clearandinvalidatedirtyentriesbyaddress,
andclearandinvalidatealldirtycachelines. Fordetailedinformation,pleaserefertoTable7.5.
Table7.5: L1/L2CacheOperationInstruction
Instruction Description
ICACHE.IALL InvalidatesallentriesinI-Cache.
ICACHE.IALLS InvalidatesallentriesinI-Cachethroughbroadcasting.
ICACHE.IPA Invalidates entries in the I-Cache that match the specified physical ad-
dresses.
ICACHE.IVA Invalidates entries in the I-Cache that match the specified virtual ad-
dresses.
DCACHE.CALL ClearsalldirtyentriesinD-Cache.
DCACHE.CIALL ClearsandinvalidatesalldirtyentriesinD-Cache.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 81

Chapter7MemorySubsystem
Table 7.5–continuedfrompreviouspage
Instruction Description
DCACHE.CIPA Clears dirty entries in D-Cache that match the specified physical ad-
dressesandinvalidatestheentries.
DCACHE.CISW Clears dirty entries in D-Cache by specified set/way and invalidates the
entries.
DCACHE.CIVA ClearsdirtyentriesinD-Cachethatmatchthespecifiedvirtualaddresses
andinvalidatestheentries.
DCACHE.CPA Clears dirty entries in D-Cache that match the specified physical ad-
dresses.
DCACHE.CPAL1 Clears dirty entries in L1 D-Cache that match the specified physical ad-
dresses.
DCACHE.CVA ClearsdirtyentriesinD-Cachethatmatchthespecifiedvirtualaddresses.
DCACHE.CSW ClearsdirtyentriesinD-Cachebyspecifiedset/way.
DCACHE.CVAL1 ClearsdirtyentriesintheL1D-Cachethatmatchthespecifiedvirtualad-
dresses.
DCACHE.IPA Invalidates entries in D-Cache that match the specified physical ad-
dresses.
DCACHE.ISW InvalidatesentriesinD-Cachebyspecifiedset/way.
DCACHE.IVA InvalidatesentriesinD-Cachethatmatchthespecifiedvirtualaddresses.
DCACHE.IALL InvalidatesallentriesinD-Cache.
Fordetailedinstructioninformation,pleaserefertoAppendixB-1CacheInstructions.
7.7 L1/L2 Cache Protection Mechanism
C910 implements cache protection mechanism, which includes: L1 I-Cache Parity Check, jTLB
Parity Check, L1 D-Cache ECC check and L2 Cache ECC check. Various mechanisms for detec-
tion/correctioncapabilityandinterruptreportingareillustratedinTable7.6.
Table7.6: ECC/ParityCheckDetect/CorrectCapabilityandInterruptReport
CacheType 1BitError 2BitError Errorsof2BitsorMore
L1I-Cache Detectable Undetectable Undetectable
Without issuing ex- Without issuing ex- Without issuing exceptions
ceptionsorinterrupts ceptionsorinterrupts orinterrupts
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 82

Chapter7MemorySubsystem
Table 7.6–continuedfrompreviouspage
| CacheType | 1BitError  |             | 2BitError         | Errorsof2BitsorMore |                    |
| --------- | ---------- | ----------- | ----------------- | ------------------- | ------------------ |
| L1D-Cache | Detectable | and cor-    | Detectable        | Undetectable        |                    |
|           | rectable   |             | Issuing interrupt | re- Without         | issuing exceptions |
|           | Without    | issuing ex- | quests            | orinterrupts        |                    |
ceptionsorinterrupts
| jTLB | Detectable |     | Undetectable | Undetectable |     |
| ---- | ---------- | --- | ------------ | ------------ | --- |
Without issuing ex- Without issuing ex- Without issuing exceptions
|         | ceptionsorinterrupts |             | ceptionsorinterrupts | orinterrupts |                    |
| ------- | -------------------- | ----------- | -------------------- | ------------ | ------------------ |
| L2Cache | Detectable           | and cor-    | Detectable           | Undetectable |                    |
|         | rectable             |             | Issuing interrupt    | re- Without  | issuing exceptions |
|         | Without              | issuing ex- | quests               | orinterrupts |                    |
ceptionsorinterrupts
7.7.1 L1I-CacheParityCheck
L1 I-Cache supports configurable parity check mechanism, which checks the tag array of the I-
Cachewiththegranularityof28bitsandthedataarraywiththegranularityof32bits.
L1 CACHE parity check/ECC feature is enabled by bit 19 in MHINT register. When the feature is
enabled, theI-Cacheperformsparityencodingduringdatawritesandchecksforerrorsduring
data reads. It detects and invalidates the error data in case of a 1-bit data error, reinitiates a
fetchrequesttothebus,andbackfillsthecacheagain. Additionally,itrecordserrorinformation,
including the way and index information, which can be queried in MCER/SCER registers. The
errors can only be cleared in M-mode by writing to the Machine L1 Cache ECC Register (MCER).
Fordetailedcontrolregisterspecifications,pleaserefertodescriptionofMCER/SCERregistersin
MachineProcessorControlandStatusExtensionRegisterBank. Errorsofmorethan1bitcannotbe
detectedorcorrected.
C910 L1 I-Cache supports software-injected error feature. For detailed information of control
registers,pleaserefertothedescriptionofMEICRregisterinMachineProcessorControlandStatus
ExtensionRegisterBank.
Furthermore,paritycheckforjTLBhasbeenimplementedtodetect1-biterrors.
7.7.2 L1D-CacheECCCheck
L1D-CachesupportsconfigurableECCcheckmechanism,fordetailedinformation,pleaserefer
toTable7.7.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 83

Chapter7MemorySubsystem
Table7.7: L1DataCacheCheck
| RAM  | CheckGranularity | CheckBit | CheckMethod |
| ---- | ---------------- | -------- | ----------- |
| TAG  | 29               | 7        | ECC         |
| DATA | 32               | 7        | ECC         |
L1CACHEparitycheck/ECCfeatureisenabledbybit19oftheMHINTregister. Whenthefeature
is enabled, the L1 D-Cache performs ECC encoding during write operations and performs veri-
ficationduringreadoperations. Whena1-bitECCerrorisdetected,itcanautomaticallycorrect
theerrorandreturnthecorrectdata. Whena2-biterroroccurs,itcandetecttheerror,initiatea
verification error interrupt, and invalidate cache lines with errors in the L1 D-cache. Errors of 2
bitsormorecannotbeaccuratelydetectedorcorrected.
Software can query the MCER/SCER registers to obtain relevant error information, such as
whether a 2-bit error occurred and the location of the error in D-Cache. The clearing of errors
canonlybedoneinM-modebywritingtotheMCERregister. Fordetailedcontrolregisterspec-
ification,pleaserefertotheinformationofMCER/SCERregistersinMachineProcessorControland
StatusExtensionRegisterBank.
Theinterruptcausedbya2-biterrorinL1D-CacheistriggeredbydirectlyenablingtheMCIPbit,
with the in-core interrupt vector number 16. For detailed control register specification, please
refer to the information of MIP register in Machine Processor Control and Status Extension Register
Bank.
C910L1D-Cachesupportsthesoftware-injectederrorfeature. Fordetailedcontrolregisterspec-
ification,pleaserefertothedescriptionofMEICRregisterinMachineProcessorControlandStatus
ExtensionRegisterBank.
7.7.3 L2ECCCheck
L2CachesupportsconfigurableECCcheckandTagRAMandDataRAMcheck. Thecorresponding
checkgranularityisillustratedintab_L2ECC_check_granularity.
Table7.8: L2ECCCheckGranularity
| RAM   | CheckGranularity    |     | CheckBit |
| ----- | ------------------- | --- | -------- |
| TAG   | 23/24/25/26/27      |     | 7(ECC)   |
| Dirty | 8bit(excludingfifo) |     | 5(ECC)   |
| DATA  | 64                  |     | 8(ECC)   |
L2CACHEECCisenabledbysettingbit1intheMCCR2register. Whenthefeatureisenabled,the
L2 cache performs ECC encoding on data during write operations and performs ECC checking
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 84

Chapter7MemorySubsystem
duringreadoperations. Whena1bitECCerrorisdetected,theL2cachecancorrecttheerrorand
returnthecorrectdata. Whena2-biterroroccurs,theL2cachecandetecttheerror,generatean
ECC interrupt to report the issue, return the error data, and invalidate the cache line where the
erroroccurred. Errorswithmorethan2bitscannotbeaccuratelydetectedorcorrected.
SoftwarecanquerytheMCER2/SCER2registerstoobtainerrorinformation,suchaswhethera2-
biterroroccurredandthelocationoftheerrorwithintheL2cache. Theerrorscanonlybecleared
inM-ModebywritingtotheMachineL2CacheECCRegister(MCER2).Fordetailedcontrolregister
specification,pleaserefertothedescriptionofMCER2/SCER2registersinMachineProcessorControl
andStatusExtensionRegisterBank.
TheL2ECCinterruptservesasaninterruptsourceinputtothePLIC(Platform-LevelInterruptCon-
troller),whereitisassignedafixedInterruptIDof1(internaltothePLIC).WhenaCPUresponds
to an external interrupt, it can query the Interrupt Claim/Completion Register (PLIC_CLAIM) to
retrievethisparticularID.Theconfiguration,maintenance,andtriggeringprocessforsuchinter-
ruptscanbereferredtoInterruptController.
C910L2memorysubsystemsupportssoftware-injectederrorfunctionality,andfordetailedcon-
trolregisterspecification,pleaserefertoinformationaboutMEICR2registerinMachineProcessor
ControlandStatusExtensionRegisterBank.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 85

Chapter8SecurityDesign
8 Security Design
8.1 Security Requirement
Thischapterprovidessecurityoutlinedesignforsoftwareandhardwaretomeetthesystemse-
curityrequirementsinTrustedExecutionEnvironment(TEE).Andtherequirementsmainlyinclude
thefollowingaspects:
• SupportmutuallyindependentexecutableZones.
• Supportinter-zoneisolation,includingcodeexecution,memoryaccess,peripherals,and
I/Oresourcesisolation.
• Support mutual isolation between applications, and the isolation between applications
andkernelswithineachZone.
• Supportthemulti-coreSMParchitecture.
• SupportsharedmemoryaccessamongZones.
• SupportRISC-V32-bitand64-bitarchitectures.
• SupporttrustworthycommunicationamongZones.
• SupportTEEsthatcomplywiththeGPspecification.
8.2 Processor Security Model
TheRISC-VISAarchitecturesupportsthefollowing3privilegedmodes: MachineMode(M-mode),
SupervisorMode(S-mode),andUserMode(U-mode),whicharedistinguishedbyexecutionand
accesspermissions:
• InU-mode,onlynon-privilegedinstructionscanbeexecuted. Generally,userapplications
areruninthismode.
• S-modecanexecuteprivilegedinstructionswithsupervisor-levelaccess,possessesMMU
management privileges, and typically runs complex operating systems such as Linux in
thisprivilegedmode.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 86

Chapter8SecurityDesign
• TheM-modeprovidesthehighestlevelofexecutionandaccessprivilege,includinginter-
rupt/exceptionhandlingandmanagement,PhysicalMemoryProtection(PMP),privileged
accesscontrolandothermanagementprivileges.
Fig.8.1: RISC-VPrivilegeMode
TheS-modeandU-modeofRISC-Vhavenomuchdifferencefromothermainstreamprocessor
architectures,suchasS-modeandU-modeofARM.
-InU-mode,onlynon-privilegedinstructionscanbeexecuted. ApplicationsrunninginU-mode
canonlyaccesssystemresourcesunderthemanagementoftheoperatingsystembytriggering
asystemcalltotraptoS-mode.
• S-mode not only supports non-privileged instructions, but also privileged instructions
andthepermissionstoaccessControlandStatusRegister(CSR)inS-mode. Inaddition,
S-modeprovidespermissionstoaccessMMU.
MemoryprotectionandisolationinU-modeandkernelmodearemainlyimplementedthrough
virtualmemorymanagement.
• The M-mode provides the highest level of execution and access privilege. The RISC-V
architectureaddsprivilegedinstructionsandsystemregisters(suchasPMP)canonlybe
accessed in M-mode. Furthermore, the most significant feature of M-mode is exception
interceptionandhandling. Duringexceptionhandling,theprocessortrapsallexceptions
to M-mode by default. The M-mode exception handler then "forwards" interrupts to S-
mode. TheM-modetypicallyrunsTrustedFirmware(TF)toadjust,allocate,andmanage
softwareandhardwareresources.
XuanTie C series processors have implemented security extensions, based on the RISC-V archi-
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 87

Chapter8SecurityDesign
tecture,tosatisfytheisolationrequirementsofTEE.Theseprocessorscancreatemultiplevirtual
zonesbasedonsoftwarecoordination. Fig.8.2showstheoverallarchitecture,whichdepictsthe
operatingsystemrunsindependentlyinitsownzone,andapplicationsbasedonthatoperating
system. TheoperatingsystemrunsinS-modeandapplicationsruninU-mode.
The processor may switch between Zones as needed. When the processor switches to run in
a particular Zone, it will occupy the entire physical core immediately, and the processor's do-
mainidentifierwillalsobeupdatedtothatoftheexecutiondomain. TheswitchingofZonesis
performedbyTFrunninginthehighestprivilegemode(M-mode).
Fig.8.2: ZonesandPrivilegeModesinXuanTieRISC-VProcessors
8.3 System Security Architecture
8.3.1 SecureMemoryManagement
Eachhardwarethreadcanrunindifferentzonesthroughtime-sharing. Whenahardwarethread
runsinaparticularzone, memoryaccessneedstobeisolatedtothecorrespondingZone, and
otherZonesarenotallowedtoaccessthememoryresourcesofthatZonewithoutauthorization.
In the same time, the Zone is not allowed to access the memory resources belonging to other
Zoneswithoutauthorization. Zonescanpassdataviasharedmemory.
PhysicalMemoryProtection(PMP)
The RISC-V architecture provides PMP mechanism to isolate memory access between M-mode
andS/Umodes. PMPcanbeconfiguredonlyinM-mode. PMPconsistsofmultiplegroups(8to
16 groups in general) of address registers and the corresponding configuration registers. And
theseconfigurationregisterscangrantordenyread,write,andexecutepermissionsofS-mode
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 88

Chapter8SecurityDesign
and U-mode. PMP can also protect memory mapping I/O (MMIO). And the TF in M-mode can
configurePMPtoconstraintheprocessor'saccesstoI/Operipherals.
When a hardware thread switches between zones, the PMP configuration also needs to be
switched. The TF in M-mode trusted needs to save the PMP configuration in the current zone
andloadsthePMPconfigurationinthetargetzonetoupdatetheaccesspermissionsofmemory
andMMIO.
When multiple zones need to share memory, the access permissions for the memory region
thatneedstobeaccessedbymultiplezonescanbegrantedtoeachzonesimultaneously. This
meansthattheallowedaccesspermissionsforthismemoryblockshouldbewrittenintothePMP
configuration table of each zone. The PMP table will be updated by TF during zone switching.
fig_PMP_for_zonesisatypicalPMPconfigurationdiagramformultiplezones,wheretheSHM
regionrepresentsthesharedmemoryareaallowedtobeaccessedbyvariouszones.
Fig.8.3: PMPConfigurationinDifferentZones
I/OPhysicalMemoryProtection(IOPMP)
TheRISC-VarchitectureprovidesaPMPmechanismtoprotectmemoryandMMIOaccessofRISC-V
processorsindifferentprivilegedmodes.
Othermasterdevicesonthebusalsorequirememoryaccessprotection,meaningperipheralde-
vicesneedtoimplementIOPMP.SameasPMP,IOPMPcoulddefineaccesspermissions. Itchecks
whether the read and write transmitted from the bus comply with the permission access rules.
Andonlylegitimatereadandwritecanbefurthertransmittedtothetargetdevice. Typically,two
methodsareusedtoconnecttoanIOPMP:
1. ConnecttherequestertoIOPMP
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 89

Chapter8SecurityDesign
An IOPMP is added between each master device and the bus, similar to the PMP in
RISC-V. Each different master device needs to have its own additional IOPMP that is
independentofeachother. Thisdesignisrelativelysimpleandflexible,buttheIOPMPs
cannotbesharedbetweenmasterdevices,whichisillustratedinFig.8.4
Fig.8.4: ConnecttheRequestertoIOPMP
2. ConnectthedestinationdevicetoIOPMP
TheIOPMPofthedestinationdeviceneedstodistinguishrequestsfromdifferentmas-
terdevices,whichrequireseachaccessrequestforamasterdevicetobeaccompanied
byanadditionalMasterID,asshowninFig.8.5
Fig.8.5: ConnecttheDestinationDevicetoIOPMP
Fig.8.6isthesecureSoCsystemframeworkbuiltbytheXuanTieprocessorwithIOPMPmounted
ontherequestingside.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 90

Chapter8SecurityDesign
Fig.8.6: SoCArchitectureBasedonPMPandIOPMPIsolation
MMU
MemoryManagementUnit(MMU)isdesignedtomanagevirtualmemoryintraditional
operatingsystems. MMUimplementstheisolationbetweentheuserspaceandkernel
space. The MMU in XuanTie processor integrates configurable Translation Lookaside
Buffer(TLB)caches,andeachTLBcontainsthetranslationmappingsfromvirtualad-
dressestophysicaladdressesandthecorrespondingaccesspermissions.
Different Zones must maintain completely independent TLB caches. The TLB cache
mustbeflushed(viathesfenceinstruction)duringZoneswitching,toensuretheiso-
lationofaddresstranslationsacrossZones.
Cache
BecauseeachzonehasitsownindependentPMPconfigurationwhentheprocessoris
runningindifferentZones,PMPdefinestheaccesspermissionsandscopeofphysical
memoryandMMIOforeachZone. Inthisway,PMPensuresthatmemoryaccessand
I/OaccessdonotinterferewithoraffecteachotheracrossZones.
In the XuanTie C series RISC-V processor, memory access that hits the cache is also
protected by PMP, which means that any access to the cache is first checked by PMP,
and further access to the cache is allowed only when the PMP check passes. And
multi-corecachecoherenceisalsoprotectedbyPMP.
DCP
XuanTie C910 provides Device Coherence Port (DCP), an AXI slave interface, through
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 91

Chapter8SecurityDesign
whichexternalmasterdevicescanaccessthecashcoherencedatainsideprocessers,
so as to improve the data transmitting efficiency between processers and external
masters. C910doesnotprovideprotectiontotheDCPforaccessfromexternalmas-
terdevices,whichrequiresthemasterconnectedtotheDCPtoconnecttoanexternal
IOPMP,throughwhichaccessisprotected.
Fig.8.7: DCPProtection
8.3.2 SecureInterrupts
Therearetwomodes ofinterruptsourcesinthePlatformLevelInterruptController(PLIC) spec-
ificationofRISC-V:M-modeinterruptsourcesandS-modeinterruptsources. M-modeinterrupt
sources are handled only in M-mode. While S-mode interrupt sources can be handled in M-
mode or S-mode. The M-mode has the authority to determine whether to delegate interrupts
toS-modeforhandling. TheM-modeoftheRISC-Varchitectureprovidesinterruptinterception
to help isolate interrupts of different zones. Table 8.1 describes interrupts for different modes
handled.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 92

Chapter8SecurityDesign
|     | Table8.1: InterruptResponseModelinRISC-V |     |     |     |
| --- | ---------------------------------------- | --- | --- | --- |
Target Mode of Current Mode of Delegation Whether to Re- Mode to Handle
| Interruptsource | Processors |     | spond | to Inter- Interrupt |
| --------------- | ---------- | --- | ----- | ------------------- |
rupts
| M-mode | M-mode | Invalid | Yes | M-mode |
| ------ | ------ | ------- | --- | ------ |
|        | S-mode | Invalid | Yes | M-mode |
|        | U-mode | Invalid | Yes | M-mode |
| S-mode | M-mode | 0       | Yes | M-mode |
|        |        | 1       | No  | -      |
|        | S-mode | 0       | Yes | M-mode |
|        |        | 1       | Yes | S-mode |
|        | U-mode | 0       | Yes | M-mode |
|        |        | 1       | Yes | S-mode |
Interrupts are handled in the following ways based on the interrupt interception feature of M-
modeinRISC-V:
1. M-modeinterruptdistribution
2. Interruptgrouping
M-modeInterruptDistribution
TheM-modesupports externalinterrupt interception. Allexternal interruptsarefirst
trappedintoM-mode,andTFrunninginM-modewillmanageallexternalinterrupts,
identifytheinterruptsource,andforwardinterruptstodifferentzonestohandlethese
interrupts. Thisinterrupthandlingmethodcansatisfytheinterruptisolationrequire-
ments among different zones, but since interrupts need to be forwarded by TF. TF
needs to switch the zone context during forwarding, which introduces some certain
interruptlatencyforinterrupthanding.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 93

Chapter8SecurityDesign
Fig.8.8: M-modeInterruptDistributioninXuanTieRISC-VProcessors
Inthismode,allexternalinterruptsaresenttoTFinM-mode. TFfirstsavesallthecon-
texts of the current zone, then reads the external interrupt number. Then, it selects
thedestinationzonebasedonthepre-savedzoneinterruptallocationtable,andre-
trievestheinterrupthandlerentrypointbyreadingthestvecregister. Beforejumping
to the interrupt entry point, TF needs to switch the PMP configuration to match the
Zonewheretheupcominginterrupthandlerfunctionresides,checkthevalidityofthe
interrupthandlerfunctionaddress,andfinallyjumptothenextZoneforexecutionby
themretinstruction. Afterthecompletionofinterrupthandling,theinterrupthandler
functionneedstoreturntoM-modethroughtheecall. TheTFinM-modewillrestore
theoriginalexecutionfieldsoftheinterruptedzoneandcontinuerunninginthatzone.
InterruptGrouping
HandlingalltheinterruptsthroughM-modewilloccursevereinterruptlatency. More-
over, after the execution of the interrupt handling program, it still needs to return to
M-modethroughanecall,whichcancauseincompatibilityissuesfortheexistingin-
terrupthandlingprogram(especiallyforLinux).
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 94

Chapter8SecurityDesign
PLICsupportsseparatecontrolovereachinterruptsourceandinterrupttarget,which
meansthedestinationhardwarethreadforeachinterruptsourceandthemodethat
hardwarethreadoperatesoncanbeconfiguredindependently. Currently,theexecu-
tionenvironmentsofprocessorsareclassifiedintoRichExecutionEnvironment(REE)
andTEEingeneral. RegularinterruptsarehandledinREE,andsecureinterruptsare
handled in TEEs. Most hardware interrupts are regular interrupts. Only a very small
numberofhardwareinterrupts,forexamplesecuretimers,aresecureinterrupts. In-
terruptgroupsareimplementedtoreducetheinterruptlatencycausedbytheunified
handlingofM-modeinterrupts. Interruptsofinterruptsourcesinthecurrentzoneare
handledintheZone. Whiletheinterruptsofinterruptsourcesinotherzonesarehan-
dledinM-mode,toreducethelatency. Interruptcontextscenariosareasfollows:
• REEgeneratesregularinterrupts.
• REEgeneratessecureinterrupts.
• TEEgeneratesregularinterrupts.
• TEEgeneratessecureinterrupts.
REEgeneratesregularinterrupts;REEgeneratessecureinterrupts
TFneedstoperformthefollowingoperationswhentheprocessorrunsintheREE(Zone
#0).
1. ConfigureinterruptsourcesofregularinterruptstobeenabledinS-mode.
2. ConfigureinterruptsourcesofsecureinterruptstobeenabledinM-mode.
3. Resetthefirstbit(SSIE_DELEG),fifthbit(STIE_DELEG),andninthbit(SEIE_DELEG)
of the mideleg register (Assume that software interrupts and clock interrupts
arebothconfiguredasregularinterrupts).
4. Enable mstatus.MIE and mstatus.SIE, and enable mie.MEIE, mie.MSIE,
mie.MTIE,mie.SEIE,mie.SSIE,mie.STIE.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 95

Chapter8SecurityDesign
Fig.8.9: TheInterruptHandlingRuleWhentheProcessorRunsinZone#0
TEEgeneratesregularinterrupts;TEEgeneratessecureinterrupts
TFneedstoperformthefollowingoperationswhentheprocessorrunsintheTEE(Zone
#1).
1. ConfigureinterruptsourcesofregularinterruptstobeenabledinS-mode.
2. ConfigureinterruptsourcesofsecureinterruptstobeenabledinM-mode.
3. Resetthefirstbit(SSIE_DELEG),fifthbit(STIE_DELEG),andninthbit(SEIE_DELEG)
of the mideleg register (Assume that software interrupts and clock interrupts
areconfiguredasregularinterrupts).
4. Enable mstatus.MIE and mstatus.SIE, and enable mie.MEIE, mie.MSIE,
mie.MTIE,mie.SEIE,mie.SSIE,mie.STIE.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 96

Chapter8SecurityDesign
Fig.8.10: TheInterruptHandlingRuleWhentheProcessorRunsinZone#1
8.3.3 SecureAccessControl
TheM-modeisthehighestlevelprivilegedmodethatahardwarethread(hart)canruninRISC-V.
ThehartrunninginM-modehasfullaccesspermissionsonmemory,I/O,andunderlyingfeatures
thatarerequiredforbootingandconfiguringtheoperatingsystem. SoM-modeistheprivileged
modethatmustbeimplementedbyallstandardRISC-Vprocessors. Actually,simpleRISC-Vmi-
crocontrollersonlysupportM-mode.
ThemostsignificantfeatureofM-modeisexceptioninterceptionandhandling. Bydefault,when
anexceptionoccurs(regardlessoftheprivilegedmode),thecontrolpermissionsaretransferred
totheexceptionhandlerinM-mode. However,mostexceptionsinLinuxshouldbehandledinS-
mode. TheexceptionhandlerinM-modecanredirectexceptionstoS-mode,butsuchredirection
introduces additional latency to exception handling. RISC-V provides the exception delegation
mechanism,whichallowsforselectivelyhandingoverinterruptsandsynchronousexceptionsto
S-modeforprocessing,completelybypassingM-mode. MachineInterruptDelegation(mideleg)
CSRcontrolstheinterruptsorexceptionsthataredelegatedtoS-mode.
Pleasenotethatcontrolpermissionsarenottransferredtoamodewithlessprivilegewhenan
interruptorexceptionoccurs,regardlessofthedelegationsettings. Interruptsandexceptionsin
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 97

Chapter8SecurityDesign
M-mode arehandled onlyin M-mode. While interrupts and exceptions in S-mode are handled
inM-modeorS-modedependingonthedelegationsettings,definitelynotinU-mode.
TheM-modeissufficientforsimpleembeddedsystems,butitisapplicableonlywhentheentire
coderepositoryistrusted,becauseM-modeprovidesfullaccesstothehardwareplatform. The
morecommonscenarioisthatnotallapplicationcodecanbetrusted,asthiscannotbeknown
in advance, or it is too large and difficult to prove its correctness. RISC-V provides the mecha-
nismtoprotectsystemsagainstuntrustedcodeandisolateuntrustedprocesses. Theseuntrusted
codesmustberestrictedtoaccessingonlytheirownmemory. Processorsthathaveimplemented
M/S/U-modeshaveafeaturecalledPhysicalMemoryProtection(PMP),whichallowsM-modeto
specifythememoryaddressesthatS/Umodecanaccess. Inadditiontomemory,PMPcanalso
beappliedtoconstrainingtheaccesstoMemory-MappedI/O(MMIO).M-modecancontrolthe
accessofuntrustedS/Umodetomemoryanddevices.
8.3.4 SecureDebug
C910currentlydoesnotsupportper-zonedebuggingconfiguration,andonlyallowsglobalen-
abling/disablingofdebugfunctionality.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 98

Chapter9InterruptController
9 Interrupt Controller
9.1 CLINT Interrupt Controller
C910 implements Core Local Interrupt Controller (CLINT), a memory address mapping module
thathandlessoftwareandtimerinterrupts.
9.1.1 AddressMappingofCLINTRegister
TheCLINTcontrolleroccupies64KBmemoryspace, wheretheupper13bitsoftheaddressare
determinedbytheSoChardwareintegration,andthelower27bitsoftheaddressaremappedas
showninTable9.1. Allregistersonlysupportword-alignedaccess. TheCLINTadoptsacontigu-
ousaddressingscheme,andformulti-clustermulti-coresystems,theCLINTdoesnotcareabout
thenumberofclusters,butonlyfocusonthenumberofcores. Theaddressspaceforeachcore
iscontiguous. Forexample,therearetwoclusters,inwhichcluster0has2cores,andcluster1
has4cores. Andtheregisteraddressesfor2coresincluster0aredescribedincore0andcore1.
Andtheregisteraddressesfor4coresincluster1areillustratedincore2,core3,core4andcore
5. These corresponding register addresses are shown in the following table. CLINT supports a
maximumof256cores.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 99

Chapter9InterruptController
Table9.1: Memory-mappedAddressesofCLINT
Register Address Name Type Initial Description
value
MSIP 0x4000000 MSIP0 Read/Write 0x00000000 The ma-
chine
software
interrupt
configura-
tion register
for core 0.
The upper
bits are tied
to 0, and bit
[0]isvalid
0x4000004 MSIP1 Read/Write 0x00000000 The ma-
chine
software
interrupt
configura-
tion register
for core 1.
The upper
bits are tied
to 0, and bit
[0]isvalid.
... ... ... ... ...
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 100

Chapter9InterruptController
Table 9.1–continuedfrompreviouspage
Register Address Name Type Initial Description
value
0x400003c MSIP15 Read/Write 0x00000000 The ma-
chine
software
interrupt
configura-
tion register
for core 15.
The upper
bits are tied
to 0, and bit
[0]isvalid.
0x4000040 MSIP16 Read/Write 0x00000000 The ma-
chine
software
interrupt
configura-
tion register
for core 16.
The upper
bits are tied
to 0, and bit
[0]isvalid.
0x4000044 MSIP17 Read/Write 0x00000000 The ma-
chine
software
interrupt
configura-
tion register
for core 17.
The upper
bits are tied
to 0, and bit
[0]isvalid.
... ... ... ... ...
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 101

Chapter9InterruptController
Table 9.1–continuedfrompreviouspage
Register Address Name Type Initial Description
value
0x4000000+4*n MSIPn Read/Write 0x00000000 n=hart_id,
n<256
MTIMECMP 0x4004000 MTIMECMPL0 Read/Write 0xFFFFFFFF The ma-
chine clock
timer com-
pare value
register (the
lower 32
bits) for
core0.
0x4004004 MTIMECMPH0 Read/Write 0xFFFFFFFF The ma-
chine clock
timer com-
pare value
register (the
upper 32
bits) for
core0.
0x4004008 MTIMECMPL1 Read/Write 0xFFFFFFFF The ma-
chine clock
timer com-
pare value
register (the
lower 32
bits) for
core1.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 102

Chapter9InterruptController
Table 9.1–continuedfrompreviouspage
Register Address Name Type Initial Description
value
0x400400c MTIMECMPH1 Read/Write 0xFFFFFFFF The ma-
chine clock
timer com-
pare value
register (the
upper 32
bits) for
core1.
... ... ... ... ...
0x4004078 MTIMECMPL15 Read/Write 0xFFFFFFFF The ma-
chine clock
timer com-
pare value
register (the
lower 32
bits) for
core15.
0x400407c MTIMECMPH15 Read/Write 0xFFFFFFFF The ma-
chine clock
timer com-
pare value
register (the
upper 32
bits) for
core15.
0x4004080 MTIMECMPL16 Read/Write 0xFFFFFFFF The ma-
chine clock
timer com-
pare value
register (the
lower 32
bits) for
core16.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 103

Chapter9InterruptController
Table 9.1–continuedfrompreviouspage
| Register | Address | Name | Type | Initial | Description |
| -------- | ------- | ---- | ---- | ------- | ----------- |
value
|     | 0x4004084 | MTIMECMPH16 | Read/Write | 0xFFFFFFFF | The ma- |
| --- | --------- | ----------- | ---------- | ---------- | ------- |
chine clock
timer com-
pare value
register (the
upper 32
bits) for
core16.
|     | 0x4004088 | MTIMECMPL17 | Read/Write | 0xFFFFFFFF | The ma- |
| --- | --------- | ----------- | ---------- | ---------- | ------- |
chine clock
timer com-
pare value
register (the
lower 32
bits) for
core17.
|     | 0x400408c | MTIMECMPH17 | Read/Write | 0xFFFFFFFF | The ma- |
| --- | --------- | ----------- | ---------- | ---------- | ------- |
chine clock
timer com-
pare value
register (the
upper 32
bits) for
core17.
|     | ...           | ...        | ...        | ...        | ...        |
| --- | ------------- | ---------- | ---------- | ---------- | ---------- |
|     | 0x4004000+8*n | MTIMECMPLn | Read/Write | 0xFFFFFFFF | n=hart_id, |
n<256
|     | 0x4004000+8*n+4 | MTIMECMPHn | Read/Write | 0xFFFFFFFF | n=hart_id, |
| --- | --------------- | ---------- | ---------- | ---------- | ---------- |
n<256
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 104

Chapter9InterruptController
Table 9.1–continuedfrompreviouspage
Register Address Name Type Initial Description
value
CLINT_MTIME 0x400bff8 CLINT_MTIMEL Read-only 0x00000000 The ma-
chine clock
timer (Xu-
anTie cus-
tom regis-
ter)
0x400bffc CLINT_MTIMEH Read-only 0x00000000 The ma-
chine clock
timer (Xu-
anTie cus-
tom regis-
ter)
SSIP 0x400c000 SSIP0 Read/Write 0x00000000 Thesupervi-
sorsoftware
interrupt for
core 0. The
upper bits
are tied to
0,andbit[0]
isvalid.
0x400c004 SSIP1 Read/Write 0x00000000 Thesupervi-
sorsoftware
interrupt for
core 1. The
upper bits
are tied to
0,andbit[0]
isvalid.
... ... ... ... ...
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 105

Chapter9InterruptController
Table 9.1–continuedfrompreviouspage
Register Address Name Type Initial Description
value
0x400c03c SSIP15 Read/Write 0x00000000 Thesupervi-
sorsoftware
interrupt for
core15. The
upper bits
are tied to
0,andbit[0]
isvalid.
0x400c040 SSIP16 Read/Write 0x00000000 Thesupervi-
sorsoftware
interrupt for
core16. The
upper bits
are tied to
0,andbit[0]
isvalid.
0x400c044 SSIP17 Read/Write 0x00000000 Thesupervi-
sorsoftware
interrupt for
core 17. The
upper bits
are tied to
0,andbit[0]
isvalid.
... ... ... ... ...
0x400c000+4*n SSIPn Read/Write 0x00000000 n=hart_id,
n<256
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 106

Chapter9InterruptController
Table 9.1–continuedfrompreviouspage
Register Address Name Type Initial Description
value
STIMECMP 0x400d000 STIMECMPL0 Read/Write 0xFFFFFFFF The super-
visor clock
timer com-
pare value
register (the
lower 32
bits) for
core0.
0x400d004 STIMECMPH0 Read/Write 0xFFFFFFFF The super-
visor clock
timer com-
pare value
register (the
upper 32
bits) for
core0.
0x400d008 STIMECMPL1 Read/Write 0xFFFFFFFF The super-
visor clock
timer com-
pare value
register (the
lower 32
bits) for
core1.
0x400d00c STIMECMPH1 Read/Write 0xFFFFFFFF The super-
visor clock
timer com-
pare value
register (the
upper 32
bits) for
core1.
... ... ... ... ...
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 107

Chapter9InterruptController
Table 9.1–continuedfrompreviouspage
Register Address Name Type Initial Description
value
0x400d078 STIMECMPL15 Read/Write 0xFFFFFFFF The super-
visor clock
timer com-
pare value
register (the
lower 32
bits) for
core15.
0x400d07c STIMECMPH15 Read/Write 0xFFFFFFFF The super-
visor clock
timer com-
pare value
register (the
upper 32
bits) for
core15.
0x400d080 STIMECMPL16 Read/Write 0xFFFFFFFF The super-
visor clock
timer com-
pare value
register (the
lower 32
bits) for
core16.
0x400d084 STIMECMPH16 Read/Write 0xFFFFFFFF The super-
visor clock
timer com-
pare value
register (the
upper 32
bits) for
core16.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 108

Chapter9InterruptController
Table 9.1–continuedfrompreviouspage
Register Address Name Type Initial Description
value
0x400d088 STIMECMPL17 Read/Write 0xFFFFFFFF The super-
visor clock
timer com-
pare value
register (the
lower 32
bits) for
core17.
0x400d08c STIMECMPH17 Read/Write 0xFFFFFFFF The super-
visor clock
timer com-
pare value
register (the
upper 32
bits) for
core17.
... ... ... ... ...
0x400d000+8*n STIMECMPLn Read/Write 0xFFFFFFFF n=hart_id,
n<256
0x400d000+8*n+4 STIMECMPHn Read/Write 0xFFFFFFFF n=hart_id,
n<256
CLINT_STIME 0x400fff8 CLINT_STIMEL Read-only 0x00000000 The su-
pervisor
clock timer
(XuanTie
custom
register)
0x400fffc CLINT_STIMEH Read-only 0x00000000 The su-
pervisor
clock timer
(XuanTie
custom
register)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 109

Chapter9InterruptController
9.1.2 SoftwareInterrupts
CLINTsupportsgeneratingsoftwareinterrupts.
Software interrupts are controlled by the software interrupt configuration registers configured
with address mapping, in which, M-mode software interrupts are controlled by Machine Soft-
ware Interrupt Pending (MSIP) register, and S-mode software interrupts are controlled by the
SupervisorSoftwareInterruptPending(SSIP)register.
Users can set the xSIP bit to 1 to generate software interrupts and clear software interrupts by
resetting the xSIP bit to 0. CLINT S-mode software interrupt requests are valid only when the
CLINTEEbitisenabledforthecorrespondingcore.
In M-mode, all software interrupt registers support accessing and modifying. In S-mode, only
theSSIPregistersupportsaccessingandmodifying. Butnoneoftheregisterscanbe accessed
ormodifiedinU-mode.
MSIPandSSIPregistershavethesamestructure. Andthebitlayoutanddefinitionoftheregisters
areshowninFig.9.1andFig.9.2.
Fig.9.1: MSIPRegister
MSIP:theM-modesoftwareinterruptpendingbit
ThisbitindicatestheinterruptstatusofM-modesoftwareinterrupts.
• WhentheMSIPbitissetto1,validM-modesoftwareinterruptrequestsareavailablecur-
rently.
• When the MSIP bit is set to 0, valid M-mode software interrupt requests are unavailable
currently.
Fig.9.2: SSIPRegister
SSIP:theS-modesoftwareinterruptpendingbit
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 110

Chapter9InterruptController
ThisbitindicatestheinterruptstatusofS-modesoftwareinterrupts.
• WhentheSSIPbitissetto1,validS-modesoftwareinterruptrequestsareavailablecur-
rently.
• When the SSIP bit is set to 0, no valid S-mode software interrupt requests are available
currently.
9.1.3 Timer
In a multi-core multi-cluster system, there is only one 64-bit system timer that operates in the
always-on voltage domain. The system timer is not writable and can only be cleared through
a reset. The current value of the system timer can be obtained by reading the Machine Clock
Timer Register (CLINT_MTIME) and Supervisor Timer Register (CLINT_STIME), or by reading the
TIMEregisterofthePerformanceMonitoringUnit(PMU).Thekeyfeatureofthesystemtimeristo
provideaunifiedeventreferenceformultiplecores.
In a multi-core multi-cluster system, there is only one set of 64-bit Machine Clock Timer reg-
isters (CLINT_MTIMEL, CLINT_MTIMEH) and one set of 64-bit Supervisor Clock Timer registers
(CLINT_STIMEL,CLINT_STIMEH).Theseregisterscanbereadbytheupperorlower32bitsthrough
word-alignedaddressaccess.
(cid:140) Note
CLINT_MTIMEandCLINT_STIMEareXuanTiecustomregisters.
CLINT_MTIMEH/CLINT_MTIMEL:
Theupper/lowerbitsofthemachineclocktimerregister,storingthevaluesoftheclocktimer.
• CLINT_MTIMEH:Theupper32bitsofclocktimer.
• CLINT_MTIMEL:Thelower32bitsofclocktimer.
Fig.9.3: CLINT_MTIMERegister
CLINT_STIMEH/CLINT_STIMEL:Theupper/lowerbitsoftheSupervisorclocktimerregister,storing
thevalueoftheclocktimer.
• CLINT_STIMEH:Theupper32bitsofclocktimer.
• CLINT_STIMEL:Theupper32bitsofclocktimer.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 111

Chapter9InterruptController
Fig.9.4: CLINT_STIMERegister
9.1.4 TimerInterrupts
CLINT can be used to generate timer interrupts. Each core of C910 has a set of 64-bit Machine
Clock Timer Compare Value Registers (MTIMECMPL, MTIMECMPH) and a set of 64-bit Supervisor
ClockTimerCompareValueRegisters(STIMECMPL,STIMECMPH).Theseregisterscanbemodified
eithertheupper32bitsorthelower32bitsbyword-alignedaddressaccess. Theregisterstruc-
tureisthesameineachset,andthebitdistributionanddefinitionsareillustratedinFig.9.5and
Fig.9.6.
In M-mode, all timer interrupt related registerssupport being modified and accessed; While in
S-mode,onlytheSupervisortimercomparatorvalueregisters(STIMECMPL,STIMECMPH)support
beingmodifiedandaccessed;InU-mode,noregisterssupportbeingmodifiedandaccessed.
Fig.9.5: MachineTimerInterruptCompareValueRegister(HigherBit/LowerBit)
MTIMECMPH/MTIMECMPL:Theupperbit/lowerbitofMachineTimerInterruptCompareValue
Register
• MTIMECMPH:Theupper32bitsoftimercomparevalue.
• MTIMECMPL:Thelower32bitsoftimercomparevalue.
Fig.9.6: SupervisorTimerInterruptCompareValueRegister(UpperBit/LowerBit)
STIMECMPH/STIMECMPL:Theupperbit/lowerbitofSupervisorTimerInterruptCompareValue
Register
• STIMECMPH:Theupper32bitsoftimercomparevalue.
• STIMECMPL:Thelower32bitsoftimercomparevalue.
CLINTdetermineswhethertogenerateatimerinterruptbycomparingthevalueof{CMPH[31:0],
CMPL[31:0]}withthecurrentvalueofthesystemtimer:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 112

Chapter9InterruptController
• Ifthevalueof{CMPH[31:0],CMPL[31:0]}isgreaterthanthatofthesystemtimer,nointerrupt
isgenerated.
• If the value of {CMPH[31:0], CMPL[31:0]} is less than or equal to that of the system timer,
CLINTgeneratesthecorrespondingtimerinterrupt.
The software can clear the corresponding timer interrupt by modifying the value of
MTIMECMP/STIMECMP.Inthisscenery,theS-modetimerinterruptrequestiseffectiveonlywhen
the corresponding core enables the CLINTEE bit and the STCE field of the corresponding core's
MachineEnvironmentConfigurationRegister(MENVCFG)aresettozero.
9.2 PLIC
ThePlatform-levelinterrupt controller(PLIC) supports sampling, priority arbitration, and distri-
butionofexternalinterruptsources.
InthePLICmodel,theM-modeandS-modeofeachcorecanactasvalidinterrupttargets.
ThebasicfeaturesofPLICimplementedinC910areasfollows:
• PLICsupportsupto256cores,andeachcoreprovides2targets: M-modeandS-mode.
• Supportsupto1023interruptsourcessampling,levelinterruptsandpulseinterrupts.
• Supports32interruptprioritylevels.
• Supportsindependentmaintenanceofinterruptenablingforeachinterrupttarget.
• Supportsindependentmaintenanceofinterruptthresholdforeachinterrupttarget.
• SupportsconfigurableaccesspermissionsonPLICregisters.
9.2.1 ArbitrationofInterrupts
InPLIC,onlytheinterruptsourcesthatmeetcertainconditionswillparticipateinthearbitration
foraparticularinterrupttarget. Andtheconditionsareasfollows:
• Theinterruptsourceisinthependingstate(IP=1).
• Theinterruptpriorityisgreaterthan0.
• Theenablebitfortheinterrupttargetisenabled.
InPLIC,whentherearemultipleinterruptsinthependingstateforaparticularinterrupttarget,
thePLICselectstheinterruptwiththehighestprioritythrougharbitration. InthePLICimplementof
C910,M-modeinterruptstakehigherpriorityoverS-modeinterrupts. Whentheprivilegemodes
arethesame,thegreaterthevalueofthepriorityconfigurationregister,thehigherthepriority. If
thepriorityvalueis0,theinterruptisinvalid. Ifmultipleinterruptshavethesamepriorityvalue,
theonewiththesmallerIDwillbeprocessedfirst.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 113

Chapter9InterruptController
The PLIC updates the arbitration result in the form of an interrupt ID, and sends the ID into the
correspondinginterruptresponse/completionregisterfortherespectiveinterrupttarget.
9.2.2 RequestandResponseofInterrupts
PLICsendstheinterruptrequesttotheinterrupttargetwhenthePLIChasavalidinterruptrequest
foraparticularinterrupttargetandtheinterruptpriorityishigherthantheinterruptthresholdof
theinterrupttarget. Whenreceivingtheinterruptrequest,theinterrupttargetsendsaninterrupt
responsemessagetothePLICifitisabletorespondtotheinterruptrequest.
Theinterruptresponsemechanismisasfollows:
• The interrupt target initiates a read operation to the corresponding interrupt re-
sponse/complete register. Then the read operation returns the current interrupt ID ar-
bitratedbythePLIC.Afterthat,theinterrupttargetproceedstofurtherprocessingbased
ontheinterruptID.IftheinterruptIDis0,novalidinterruptrequestisavailable,andthe
interrupttargetendstheinterrupthandlingprocess.
• After receiving the read operation initiated by the interrupt target and returning the re-
lated interrupt ID, the PLIC clears the IP bit of the interrupt source corresponding to the
interruptIDto0,andblockssubsequentsamplingontheinterruptsourcebeforethecur-
rentinterruptiscompleted.
ConfiguringL2ECCfeature,L2ECCFATALinterruptIDisdeterminedbythecustomer'sintegration
oftheinterruptcontroller.
9.2.3 InterruptCompletion
Afterinterrupthandlingiscompleted,theinterrupttargetneedstosendaninterruptcompletion
messagetothePLIC.Theinterruptcompletionmechanismisasfollows:
• Theinterrupttargetinitiatesawriteoperationtotheinterruptresponse/completionreg-
ister,andthevalueofthewriteoperationisthecurrentcompletioninterruptID.Ifthein-
terruptisalevelinterrupt,theexternalinterruptsourcemustbeclearedbeforethewrite
operationisinitiated.
• Afterreceivingtheinterruptcompletionmessage,thePLICdoesnotupdatetheinterrupt
claim/completeregister,butunblockssamplingontheinterruptsourcecorrespondingto
theinterruptIDtoendtheinterrupthandlingprocess.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 114

Chapter9InterruptController
9.2.4 PLICRegisterAddressMapping
PLIC occupies 64MB memory space, where the upper 13-bit address is determined by the SoC
hardwareintegration,andthelower27-bitaddressmappingisshowninTable9.2. Allregisters
support only word-aligned address access, which means PLIC registers are accessible through
the load word instruction. The access results are placed in the lower 32 bits of 64-bit General
PurposeRegister(GPR).TheCLINTadoptscontiguousaddressingforitsregisters. Andformulti-
clustermulti-coresystems,theCLINTdoesnotcareaboutthenumberofclusters,butonlyfocus
onthenumberofcores. Theaddressspaceforeachcoreiscontiguous. Forexample,thereare
twoclusters,inwhichcluster0has2cores,andcluster1has4cores. Andtheregisteraddresses
ofthe2coresincluster0areincore0andcore1,asshowninPlic_address_mapping. And
the register addresses of 4 cores in cluster 1 are illustrated in core 2, core 3, core 4 and core 5.
Thesecorrespondingregisteraddressesareshowninthefollowingtable.
|          | Table9.2: | PLICRegisterAddressMapping |              |             |
| -------- | --------- | -------------------------- | ------------ | ----------- |
| Register | Address   | Name                       | Type Initial | Description |
Value
| PLIC_PRIO | 0x0000000 | -          | - -     | -                  |
| --------- | --------- | ---------- | ------- | ------------------ |
|           | 0x0000004 | PLIC_PRIO1 | R/W 0x0 | Thepriorityconfig- |
|           | 0x0000008 | PLIC_PRIO2 | R/W 0X0 | urationregisterfor |
interrupt sources
|     | 0x000000C | PLIC_PRIO3 | R/W 0x0 |     |
| --- | --------- | ---------- | ------- | --- |
from1to1023.
|         | …         | …             | … …     |               |
| ------- | --------- | ------------- | ------- | ------------- |
|         | 0x0000FFC | PLIC_PRIO1023 | R/W 0x0 |               |
| PLIC_IP | 0x0001000 | PLIC_IP0      | R/W 0x0 | The interrupt |
pending register
for interrupts 1 to
31.
|     | 0x0001004 | PLIC_IP1 | R/W 0x0 | The interrupt |
| --- | --------- | -------- | ------- | ------------- |
pending register
forinterrupts32to
63.
|     | …         | …         | … …     | …             |
| --- | --------- | --------- | ------- | ------------- |
|     | 0x000107C | PLIC_IP31 | R/W 0x0 | The interrupt |
pending register
for interrupts 992
to1023.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 115

Chapter9InterruptController
|          | Table   | 9.2–continuedfrompreviouspage |              |             |     |
| -------- | ------- | ----------------------------- | ------------ | ----------- | --- |
| Register | Address | Name                          | Type Initial | Description |     |
Value
| -        | Reserved  | -            | - -     | -                |          |
| -------- | --------- | ------------ | ------- | ---------------- | -------- |
| PLIC_MIE | 0x0002000 | PLIC_H0_MIE0 | R/W 0x0 | Themachineinter- |          |
| PLIC_SIE |           |              |         | rupt enable      | regis-   |
|          |           |              |         | ter 1 to 31      | for core |
0.
|     | 0x0002004 | PLIC_H0_MIE1 | R/W 0x0 | Themachineinter- |        |
| --- | --------- | ------------ | ------- | ---------------- | ------ |
|     |           |              |         | rupt enable      | regis- |
ter32to63forcore
0.
|     | …         | …             | … …     | …                |          |
| --- | --------- | ------------- | ------- | ---------------- | -------- |
|     | 0x000207C | PLIC_H0_MIE31 | R/W 0x0 | Themachineinter- |          |
|     |           |               |         | rupt enable      | regis-   |
|     |           |               |         | ter 992 to       | 1023 for |
core0.
|     | 0x0002080 | PLIC_H0_SIE0 | R/W 0x0 | The supervisor |           |
| --- | --------- | ------------ | ------- | -------------- | --------- |
|     |           |              |         | interrupt      | enable    |
|     |           |              |         | register 1     | to 31 for |
core0.
|     | 0x0002084 | PLIC_H0_SIE1 | R/W 0x0 | The supervisor |          |
| --- | --------- | ------------ | ------- | -------------- | -------- |
|     |           |              |         | interrupt      | enable   |
|     |           |              |         | register       | 32 to 63 |
forcore0.
|     | …         | …             | … …     | …              |        |
| --- | --------- | ------------- | ------- | -------------- | ------ |
|     | 0x00020FC | PLIC_H0_SIE31 | R/W 0x0 | The supervisor |        |
|     |           |               |         | interrupt      | enable |
|     |           |               |         | register       | 992 to |
1023forcore0.
|     | 0x0002100 | PLIC_H1_MIE0 | R/W 0x0 | Themachineinter- |          |
| --- | --------- | ------------ | ------- | ---------------- | -------- |
|     |           |              |         | rupt enable      | regis-   |
|     |           |              |         | ter 1 to 31      | for core |
1.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 116

Chapter9InterruptController
|          | Table   | 9.2–continuedfrompreviouspage |              |             |     |
| -------- | ------- | ----------------------------- | ------------ | ----------- | --- |
| Register | Address | Name                          | Type Initial | Description |     |
Value
|     | 0x0002104 | PLIC_H1_MIE1 | R/W 0x0 | Themachineinter- |        |
| --- | --------- | ------------ | ------- | ---------------- | ------ |
|     |           |              |         | rupt enable      | regis- |
ter32to63forcore
1.
|     | …         | …             | … …     | …                |          |
| --- | --------- | ------------- | ------- | ---------------- | -------- |
|     | 0x000217C | PLIC_H1_MIE31 | R/W 0x0 | Themachineinter- |          |
|     |           |               |         | rupt enable      | regis-   |
|     |           |               |         | ter 992 to       | 1023 for |
core1.
|     | 0x0002180 | PLIC_H1_SIE0 | R/W 0x0 | The supervisor |           |
| --- | --------- | ------------ | ------- | -------------- | --------- |
|     |           |              |         | interrupt      | enable    |
|     |           |              |         | register 1     | to 31 for |
core1.
|     | 0x0002184 | PLIC_H1_SIE1 | R/W 0x0 | The supervisor |        |
| --- | --------- | ------------ | ------- | -------------- | ------ |
|     |           |              |         | interrupt      | enable |
|     |           |              |         | register 32    | to 63  |
forcore1.
|     | …         | …             | … …     | …              |        |
| --- | --------- | ------------- | ------- | -------------- | ------ |
|     | 0x00021FC | PLIC_H1_SIE31 | R/W 0x0 | The supervisor |        |
|     |           |               |         | interrupt      | enable |
|     |           |               |         | register       | 992 to |
1023forcore1.
|     | …         | …            | … …     | …            |      |
| --- | --------- | ------------ | ------- | ------------ | ---- |
|     | 0x0002000 | PLIC_Hn_MIE0 | R/W 0x0 | Core hart_id | 1 to |
|     | +0x100*n  |              |         | 31.          |      |
Themachineinter-
|     |     |     |     | rupt enable | regis- |
| --- | --- | --- | --- | ----------- | ------ |
ter.
n=hart_id,n<256
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 117

Chapter9InterruptController
|          | Table   | 9.2–continuedfrompreviouspage |              |             |     |
| -------- | ------- | ----------------------------- | ------------ | ----------- | --- |
| Register | Address | Name                          | Type Initial | Description |     |
Value
|     | 0x0002004 | PLIC_Hn_MIE1 | R/W 0x0 | Core hart_id | 32 to |
| --- | --------- | ------------ | ------- | ------------ | ----- |
|     | +0x100*n  |              |         | 63.          |       |
Themachineinter-
|     |     |     |     | rupt enable | regis- |
| --- | --- | --- | --- | ----------- | ------ |
ter.
n=hart_id,n<256
|     | …         | …             | … …     | …                |     |
| --- | --------- | ------------- | ------- | ---------------- | --- |
|     | 0x000207C | PLIC_Hn_MIE31 | R/W 0x0 | Corehart_id992to |     |
|     | +0x100*n  |               |         | 1023.            |     |
Themachineinter-
|     |     |     |     | rupt enable | regis- |
| --- | --- | --- | --- | ----------- | ------ |
ter.
n=hart_id,n<256
|     | 0x0002080 | PLIC_Hn_SIE0 | R/W 0x0 | Core hart_id | 1 to |
| --- | --------- | ------------ | ------- | ------------ | ---- |
|     | +0x100*n  |              |         | 31.          |      |
The supervisor
|     |     |     |     | interrupt | enable |
| --- | --- | --- | --- | --------- | ------ |
register.
n=hart_id,n<256
|     | 0x0002084 | PLIC_Hn_SIE1 | R/W 0x0 | Core hart_id | 32 to |
| --- | --------- | ------------ | ------- | ------------ | ----- |
|     | +0x100*n  |              |         | 63.          |       |
The supervisor
|     |     |     |     | interrupt | enable |
| --- | --- | --- | --- | --------- | ------ |
register.
n=hart_id,n<256
|     | …         | …             | … …     | …                |     |
| --- | --------- | ------------- | ------- | ---------------- | --- |
|     | 0x00020FC | PLIC_Hn_SIE31 | R/W 0x0 | Corehart_id992to |     |
|     | +0x100*n  |               |         | 1023.            |     |
The supervisor
|     |     |     |     | interrupt | enable |
| --- | --- | --- | --- | --------- | ------ |
register.
n=hart_id,n<256
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 118

Chapter9InterruptController
|          | Table   | 9.2–continuedfrompreviouspage |              |             |     |
| -------- | ------- | ----------------------------- | ------------ | ----------- | --- |
| Register | Address | Name                          | Type Initial | Description |     |
Value
| PLIC_CTRL | 0x01FFFFC | PLIC_CTRL | R/W 0x0 | The PLIC     | permis- |
| --------- | --------- | --------- | ------- | ------------ | ------- |
|           |           |           |         | sion control | regis-  |
ter.
| PLIC_MTH    | 0x0200000 | PLIC_H0_MTH | R/W 0x0 | Themachineinter-  |     |
| ----------- | --------- | ----------- | ------- | ----------------- | --- |
| PLIC_MCLAIM |           |             |         | ruptthresholdreg- |     |
| PLIC_STH    |           |             |         | isterforcore0.    |     |
PLIC_SCLAIM
|     | 0x0200004 | PLIC_H0_MCLAIM | R/W 0x0 | The       | machine |
| --- | --------- | -------------- | ------- | --------- | ------- |
|     |           |                |         | interrupt | re-     |
sponse/complete
registerforcore0.
|     | Reserved  | -           | - -     | -   |            |
| --- | --------- | ----------- | ------- | --- | ---------- |
|     | 0x0201000 | PLIC_H0_STH | R/W 0x0 | The | supervisor |
interruptthreshold
registerforcore0.
|     | 0x0201004 | PLIC_H0_SCLAIM | R/W 0x0 | The       | supervisor |
| --- | --------- | -------------- | ------- | --------- | ---------- |
|     |           |                |         | interrupt | re-        |
sponse/complete
registerforcore0.
|     | Reserved  | -           | - -     | -                |     |
| --- | --------- | ----------- | ------- | ---------------- | --- |
|     | 0x0202000 | PLIC_H1_MTH | R/W 0x0 | Themachineinter- |     |
ruptthresholdreg-
isterforcore1.
|     | 0x0202004 | PLIC_H1_MCLAIM | R/W 0x0 | The       | machine |
| --- | --------- | -------------- | ------- | --------- | ------- |
|     |           |                |         | interrupt | re-     |
sponse/complete
registerforcore1.
|     | Reserved  | -           | - -     | -   |            |
| --- | --------- | ----------- | ------- | --- | ---------- |
|     | 0x0203000 | PLIC_H1_STH | R/W 0x0 | The | supervisor |
interruptthreshold
registerforcore1.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 119

Chapter9InterruptController
|          | Table   | 9.2–continuedfrompreviouspage |              |             |
| -------- | ------- | ----------------------------- | ------------ | ----------- |
| Register | Address | Name                          | Type Initial | Description |
Value
|     | 0x0203004 | PLIC_H1_SCLAIM | R/W 0x0 | The supervisor |
| --- | --------- | -------------- | ------- | -------------- |
interrupt re-
sponse/complete
registerforcore1.
|     | Reserved  | -           | - -     | -                |
| --- | --------- | ----------- | ------- | ---------------- |
|     | 0x0200000 | PLIC_Hn_MTH | R/W 0x0 | Corehart_id.     |
|     | +0x2000*n |             |         | Themachineinter- |
ruptthresholdreg-
ister.
n=hart_id,n<256
|     | 0x0200004 | PLIC_Hn_MCLAIM | R/W 0x0 | Corehart_id. |
| --- | --------- | -------------- | ------- | ------------ |
|     | +0x2000*n |                |         | The machine  |
interrupt re-
sponse/complete
register.
n=hart_id,n<256
|     | Reserved  | -           | - -     | -              |
| --- | --------- | ----------- | ------- | -------------- |
|     | 0x0201000 | PLIC_Hn_STH | R/W 0x0 | Corehart_id.   |
|     | +0x2000*n |             |         | The supervisor |
interruptthreshold
register.
n=hart_id,n<256
|     | 0x0201004 | PLIC_Hn_SCLAIM | R/W 0x0 | Corehart_id.   |
| --- | --------- | -------------- | ------- | -------------- |
|     | +0x2000*n |                |         | The supervisor |
interrupt re-
sponse/complete
register.
n=hart_id,n<256
AsshowninFig.9.7, PLICandCLINToccupy128MBinoveralladdressspace, inwhichthebase
addressisdeterminedbypad_cpu_apb_base(inputport,pleasecheckC910IntegrationManual).
Itisnotedthattheattributeofthisspaceshouldbesetas"StrongOrdered".
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 120

Chapter9InterruptController
Fig.9.7: AddressSpaceofPLIC&CLINT
9.2.5 InterruptPriorityConfigurationRegister(PLIC_PRIO)
This PLIC_PRIO (PLIC_PRIO) register supports setting the priorities of interrupt sources. For the
register read and write permissions, please refer to the descriptions of the Permission Control
(PLIC_CTRL)register. Andthecorrespondingbitlayoutanddefinitionoftheregisterareshownin
Fig.9.8.
Fig.9.8: InterruptPriorityConfigurationRegister(PLIC_PRIO)
PRIO:Interruptpriority
Thelower5bitsofthepriorityconfigurationregisterarewritable,whichsupports32
differentlevelsofpriority. Theprioritysettingof0indicatesthattheinterruptisinvalid.
TheinterruptpriorityinM-modeisunconditionallyhigherthanthatinS-mode. When
in the same mode, priority 1 represents the lowest priority, and priority 31 indicates
thehighest. Whenprioritiesarethesame,theinterruptsourceIDisfurthercompared,
withthesmallerIDhavinghigherpriority.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 121

Chapter9InterruptController
9.2.6 InterruptPendingRegister(PLIC_IP)
Thepending status of each interrupt sourcecan beobtained byreadingthe informationin the
InterruptPending(PLIC_IP)Register. ForaninterruptwithIDN,theinterruptinformationisstored
in the IP y (y = N mod 32) of the PLIC_IP x (x = N/32) register, where the first bit of the PLIC_IP0
register is fixed at 0. For the read and write permissions of the registers, please refer to the
(PLIC_CTRL)register. Thecorrespondingregisterbitdistributionandbitdefinitionsareasshown
inFig.9.9.
Fig.9.9: PLIC_IPxInterruptPendingRegister(PLIC_IP)
IP:InterruptpendingStatus
Thisbitindicatestheinterruptpendingstateofthecorrespondinginterruptsource.
• WhentheIPbitis1,itindicatestheinterruptfromthecurrentexternalinterrupt
source are pending for response. This bit can be set to 1 by a memory store
instruction. Whenthecorrespondinginterruptsourcelogicissampledandde-
tectsavalidorpulseinterrupt,thisbitwillalsobesetto1.
• When the IP bit is 0, it indicates no interrupts from the current external inter-
ruptsourcearependingforresponse. Thisbitcanberesetbyamemorystore
instruction. PLICclearsthecorrespondingIPbitafteraninterruptisresponded.
9.2.7 InterruptEnableRegister(PLIC_IE)
Eachinterrupttargethasaninterruptenablebitforeachinterruptsource, toenablethecorre-
spondinginterrupts. ThemachineinterruptenableregisterenablesM-modeexternalinterrupts.
ThesupervisorinterruptenableregisterenablesS-modeexternalinterrupts.
If the ID of an interrupt is N, the interrupt enable information is stored in IE y (y = N mod 32) in
PLIC_IE x (x = N/32) register. The IE bit corresponding to ID 0 is fixed to 0. For more informa-
tionaboutthereadandwritepermissionsontheregister,pleaserefertothedescriptionsofthe
PLIC_CTRLregister.
ThecorrespondingbitlayoutanddefinitionoftheregisterareshowninFig.9.10.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 122

Chapter9InterruptController
Fig.9.10: PLIC_IExInterruptEnableRegister(PLIC_IE)
IE——InterruptEnable:
Thisbitindicatestheinterruptenablestateofthecorrespondinginterruptsource.
• WhentheIEbitissetto1,itindicatesthattheinterruptisenabledforthetarget.
• WhentheIEbitissetto0,itindicatesthattheinterruptismaskedforthetarget.
9.2.8 PLICPermissionControlRegister(PLIC_CTRL)
The Permission Control (PLIC_CTRL) register is designed to control access permissions on some
PLICregistersinS-mode.
Fig.9.11: PLICPermissionControlRegister(PLIC_CTRL)
S_PERaccesspermissioncontrolbit:
• When the S_PER bit is set to 0, only M-mode has access permission to all the registers
of PLIC. S-mode does not have access permission to PLIC permission control registers,
interruptpriorityconfigurationregisters,interruptpendingregisters,andinterruptenable
registers, and can only access the S-mode interrupt threshold register and the S-mode
interrupt response/complete register. But U-mode does not have access permission to
anyPLICregisters.
• WhenS_PERbitissetto1,M-modehasallpermissions. S-modecouldaccesstoallPLIC
registersexceptforPLICpermissioncontrolregisters. U-modedoesnothaveaccessper-
missiontoanyPLICregisters.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 123

Chapter9InterruptController
9.2.9 PLICThresholdRegister(PLIC_TH)
Each interrupt target has a corresponding Interrupt Thread (PLIC_TH) register. Only valid inter-
rupts with priorities greater than the interrupt threshold will initiate an interrupt request to the
interrupttarget. Forthereadandwritepermissionsoftheregister,pleaserefertothePLIC_CTRL
register.
ThecorrespondingbitlayoutanddefinitionoftheregisterareshowninFig.9.12.
Fig.9.12: InterruptThreadRegister(PLIC_TH)
PRIOTHRESHOLD——PriorityThresholdValue:
Itindicatestheinterruptthresholdvalueofthecurrentinterrupttarget. Andifthevalue
is0,allinterruptsaresupported.
9.2.10 InterruptResponse/CompletionRegister(PLIC_CLAIM)
EachinterrupttargethasacorrespondingInterruptResponse/Completion(PLIC_CLAIM)register.
WhenthePLICcompletesarbitration,thisregisterisupdatedtotheinterruptIDobtainedinthe
currentarbitration. Formoreinformationaboutthereadandwritepermissionsontheregister,
pleaserefertothedescriptionsofthePLIC_CTRLregister.
ThecorrespondingbitlayoutanddefinitionoftheregisterareshowninFig.9.13.
Fig.9.13: InterruptResponse/CompletionRegister(PLIC_CLAIM)
CLAIM_ID——InterruptrequestID:
• Read operation on this register: returns the current ID value stored in the register. This
read operation indicates that the corresponding interrupt has started processing. PLIC
initiatesinterruptresponseprocessing.
• Write operation on this register: indicates that the interrupt corresponding to the writ-
tenvaluehascompletedprocessing. Thiswriteoperationdoesnotupdatetheinterrupt
response/completionregister. PLICinitiatesinterruptcompletionprocessing.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 124

Chapter9InterruptController
9.3 Multi-Core Interrupts
Thissectiondescribestwocommonmulti-coreinterruptscenariosbriefly.
9.3.1 MultipleCoresRespondtoExternalInterruptsinParallel
InthePLICmodel,itisallowedtomapasingleinterruptsourcetomultiplecoressimultaneously.
Whenthisinterruptsourcegeneratesaninterruptrequest,itisinapendingstaterelativetomul-
tiple coressimultaneously. Each corewill respond to this interrupt and read the CLAIM register
toobtaintheinterruptIDinasequentialmanner,duetothedifferentrunningstatesofthecores.
The design of PLIC ensures that only the first core that reads the CLAIM register can obtain the
realID,whileothercoreswillgetaninvalidID(i.e.,ID=0)andthereforewillnotprocessit. Thus,
thisinterruptwillonlybeprocessedonce.
Mappingasingleinterrupttomultiplecorescanshortentheoverallinterruptresponsetime(as
anyoneofthecorescanpotentiallyhandletheinterrupt),butitalsooccupiesaportionofpro-
cessorresources(asthecoresthatreceiveaninvalidIDwillconsumebandwidthunnecessarily).
Anexample:
Supposetherearetwoexternalinterruptsources,Source1andSource2,andtheCPUisconfig-
uredwith4cores. Source1ismappedtoCore0,Core1,andCore2simultaneously,whileSource
2ismappedtoCore1,Core2,andCore3,andSource2hasahigherpriority.
• WhenonlySource1occurs,itcanbehandledbyanyoneofCore0,Core1,andCore2.
• WhenonlySource2occurs,itcanbehandledbyanyoneofCore1,Core2,andCore3.
• When both interrupts occur simultaneously, there will be a priority arbitration between
Core1andCore2andSource2winsasaresult. Therefore,Source2maybehandledby
anyofCore1,Core2,andCore3,whileSource1maybehandledbyCore0.
9.3.2 SendSoftwareInterruptsacrossCores
In CLINT programming model, there are specific registers for software interrupts, which are as
follows:
• M-modesoftwareinterrupts: MSIP0,MSIP1,MSIP2,MSIP3
• S-modesoftwareinterrupts: SSIP0,SSIP1,SSIP2,SSIP3
Theaddressesofthese8registersarethesameandvisibleforallcores. Therefore,eachcorecan
sendasoftwareinterrupttoanycore(includingitself)byperformingwriteoperationsonthese8
registers.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 125

Chapter10BusInterface
| 10 Bus   | Interface     |           |     |     |     |
| -------- | ------------- | --------- | --- | --- | --- |
| 10.1 AXI | Master Device | Interface |     |     |     |
Themasterdeviceinterfacein910MPsupportsAMBA4.0AXIprotocol,pleaserefertoAMBASpec-
ification—AMBA®
AXI™andACE™ProtocolSpecification.
10.1.1 FeaturesoftheAXIMasterDeviceInterface
TheAXImasterdeviceinterfaceisresponsiblefortheaddresscontrolanddatatransferbetween
910andtheAXIsystembus. Andtheinterfaceprovidesthefollowingfundamentalfeatures:
• SupportstheAMBA4.0AXIbusprotocol.
• Supportsabuswidthof128bits.
• SupportsdifferentfrequencyratiosbetweenthesystemclockandtheCPUmasterclock.
• Alloutputsignalsarefloppedout,andinputsignalsarefloppedtoachievebettertiming.
10.1.2 OutstandingCapabilityoftheMasterDeviceInterface
ThissectiondescribestheoutstandingcapabilityoftheAXImasterdeviceinterfacein910. The
detailedinformationisasfollows:
Table10.1: OutstandingCapabilityoftheAXIMasterDeviceInterface
| Parameter |     | Value | Description |     |     |
| --------- | --- | ----- | ----------- | --- | --- |
ReadIssuingCapability 8n+28 Each core can issue a maximum of 8 non-
|     |     | n = Number of | cacheableanddevicereadrequests. |        |              |
| --- | --- | ------------- | ------------------------------- | ------ | ------------ |
|     |     | cores         | The total maximum               | number | of cacheable |
readrequestsis28.
WriteIssuingCapability 8n+32 Each core can issue a maximum of 8 non-
|     |     | n = Number of | cacheableanddevicewriterequests. |        |              |
| --- | --- | ------------- | -------------------------------- | ------ | ------------ |
|     |     | cores         | The total maximum                | number | of cacheable |
writerequestsis32.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 126

Chapter10BusInterface
Table10.2: ARIDEncodingoftheAXIMasterDeviceInterface
| ARID[7:0]         | ApplicableScenarios | OutstandingRequestsofEachID      |           |          |
| ----------------- | ------------------- | -------------------------------- | --------- | -------- |
| {2'b10,6'b??????} | Cacheable           | Therearenooutstandingrequestsfor |           |          |
|                   | readrequests        | eachID.                          |           |          |
|                   |                     | 28 outstanding                   | cacheable | read re- |
questsaresupportedintotal.
{1'b0,2'b(coreid),5'h18} Non-cacheable A total of 31 outstanding non-
|                          | weak-ordered  | cacheablereadrequestsaresup- |     |     |
| ------------------------ | ------------- | ---------------------------- | --- | --- |
|                          | readrequests  | ported.                      |     |     |
| {1'b0,2'b(coreid),5'h1d} | Non-cacheable |                              |     |     |
strong-ordered
readrequest
Table10.3: AWIDEncodingoftheAXIMasterDeviceInterface
| AWID[7:0] | ApplicableScenarios | Outstanding | Requests | of  |
| --------- | ------------------- | ----------- | -------- | --- |
EachID
| {3'b111,5'b?????} | Cacheable     | There            | are no outstanding | re-          |
| ----------------- | ------------- | ---------------- | ------------------ | ------------ |
|                   | writerequests | questsforeachID. |                    |              |
|                   |               | A total          | of 32              | outstanding  |
|                   |               | cacheable        | write              | requests are |
supported.
| {4'b0000,4'b????} | Non-cacheable | There                     | are no outstanding | re- |
| ----------------- | ------------- | ------------------------- | ------------------ | --- |
|                   | weak-ordered  | questsforeachID.          |                    |     |
|                   | writerequests | Atotalof16outstandingnon- |                    |     |
|                   |               | cacheable                 | weak-ordered       |     |
writerequestsaresupported.
{1'b0,2'b(coreid),5'h1d} Non-cacheable Atotalof31outstandingnon-
|     | strong-ordered | cacheable                  | strong-ordered |     |
| --- | -------------- | -------------------------- | -------------- | --- |
|     | writerequests  | writerequestsaresupported. |                |     |
(cid:159)
Attention
The above ARID and AWID encoding may vary with evolution of the CPU version. Therefore,
SoC integration should not depend on specific IDs, but conform to general-purpose rules of
theAXIprotocol.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 127

Chapter10BusInterface
10.1.3 SupportedTransferTypes
Themasterdeviceinterfacesupportsthefollowingtransfertypes:
• BURSTsupportsINCRandWRAPtransfers,whileotherbursttypesarenotsupported.
• LENonlysupportstransferlengthsof1or4,whileothertransfertypesarenotsupported.
• Supportsexclusiveaccess.
• Transfer size supports quadword, doubleword, word, halfword, and byte, while other
transfersizesarenotsupported.
• Supportsreadandwriteoperations.
(cid:159) Attention
TheAXImasterdeviceinterfaceof910implementsonlyasubsetofallAXItransfers. SoCin-
tegrationshouldnotdependonspecifictransfertypes,butconformtogeneral-purposerules
oftheAXIprotocol.
10.1.4 SupportedResponseTypes
Themasterdeviceinterfacereceivestheresponsetypefromtheslavedeviceasfollows:
• OKAY
• EXOKAY
• SLVERR
• DECERR
10.1.5 BehaviorsinDifferentBusResponses
CPUbehaviorsindifferentbusresponsesareshowninTable10.4.
Table10.4: BusExceptionHandling
RRESP/BRESP Result
OKAY Ordinarytransferaccesssucceeds,orexclusivetransferaccessfails.
A read transfer exclusive access failure indicates that the bus does not
supportexclusivetransfers,resultinginanaccesserrorexception.
A write transfer exclusive access failure only indicates a lock acquisition
failureanddoesnotreturnanexception.
EXOKAY Exclusiveaccesssucceeds.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 128

Chapter10BusInterface
Table 10.4–continuedfrompreviouspage
RRESP/BRESP Result
SLVERR/DECERR Anaccesserroroccurs. Ifthiserroroccursinreadtransfer,anexceptionis
generated.
Ifthiserroroccursinwritetransfer,itisignored.
10.1.6 AXIMasterDeviceMasterDeviceInterfac
AXI4.0masterdeviceinterfacesignalsarelistedinTable10.5.
Table10.5: ChannelInterfaceSignalsofAXIProtocol
| Signals | I/O | Reset | Description |     |     |
| ------- | --- | ----- | ----------- | --- | --- |
ReadAddressChannelInterfaces
| biu_pad_arid[7:0]    | O   | 0   | ReadrequestaddressID       |     |     |
| -------------------- | --- | --- | -------------------------- | --- | --- |
| biu_pad_araddr[39:0] | O   | 0   | Readrequestaddress         |     |     |
| biu_pad_arlen[1:0]   | O   | 0   | Burstlengthofreadrequests: |     |     |
00: 1transfer
11: 4transfers
| biu_pad_arsize[2:0] | O   | 0   | Data width | per beat | for read |
| ------------------- | --- | --- | ---------- | -------- | -------- |
requests
000: 1byte
001: 2bytes
010: 4bytes
011: 8bytes
100: 16bytes
| biu_pad_arburst[1:0] | O   | 0   | Transfer | types of read | re- |
| -------------------- | --- | --- | -------- | ------------- | --- |
quests:
01: INCR
10: WRAP
| biu_pad_arlock | O   | 0   | Access | modes of read | re- |
| -------------- | --- | --- | ------ | ------------- | --- |
quests:
0: Normalaccess
1: Exclusiveaccess
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 129

Chapter10BusInterface
Table 10.5–continuedfrompreviouspage
| Signals              | I/O | Reset | Description |              |         |
| -------------------- | --- | ----- | ----------- | ------------ | ------- |
| biu_pad_arcache[3:0] | O   | 0     | Memory      | access types | of read |
requests:
|     |     |     | 0000: | Device Non-bufferable |     |
| --- | --- | --- | ----- | --------------------- | --- |
(strongorder)
|     |     |     | 0001: | Device | Bufferable |
| --- | --- | --- | ----- | ------ | ---------- |
(strongorder)
|     |     |     | 0011: Normal | Non-cacheable |     |
| --- | --- | --- | ------------ | ------------- | --- |
Bufferable(weakorder)
1111: Cacheable
| biu_pad_arprot[2:0] | O   | 0   | Protection | types of | read re- |
| ------------------- | --- | --- | ---------- | -------- | -------- |
quests:
0|1
[2]: Data|Instruction
|     |     |     | [1]: Secure | | Non-Secure | (fixed |
| --- | --- | --- | ----------- | ------------ | ------ |
1)
[0]: User|Privileged
| biu_pad_arvalid | O   | 0   | Read address | channel | valid |
| --------------- | --- | --- | ------------ | ------- | ----- |
signal
| pad_biu_arready | I   | -   | Read address | channel | slave |
| --------------- | --- | --- | ------------ | ------- | ----- |
readysignal
ReadDataChannelInterfaces
| pad_biu_rid[7:0]     | I   | -   | ReadrequestdataID |             |         |
| -------------------- | --- | --- | ----------------- | ----------- | ------- |
| pad_biu_rdata[127:0] | I   | -   | Readrequestdata   |             |         |
| pad_biu_rresp[3:0]   | I   | -   | Response          | information | of read |
requests
|     |     |     | [1:0]: 00: | OKAY |     |
| --- | --- | --- | ---------- | ---- | --- |
01: EXOKAY
10: SLVERR
11: DECERR
[2]: PASSDIRTY
[3]: ISSHARED
| pad_biu_rlast | I   | -   | Lastbeatdataofreaddata |     |     |
| ------------- | --- | --- | ---------------------- | --- | --- |
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 130

Chapter10BusInterface
Table 10.5–continuedfrompreviouspage
| Signals        | I/O | Reset | Description  |         |         |
| -------------- | --- | ----- | ------------ | ------- | ------- |
| pad_biu_rvalid | I   | -     | Valid signal | of read | request |
data
| biu_pad_rready | O   | 1   | Read data | channel ready | sig- |
| -------------- | --- | --- | --------- | ------------- | ---- |
nal
WriteAddressChannelInterfaces
| biu_pad_awid[7:0]    | O   | 0   | WriterequestaddressID       |     |     |
| -------------------- | --- | --- | --------------------------- | --- | --- |
| biu_pad_awaddr[39:0] | O   | 0   | Writerequestaddress         |     |     |
| biu_pad_awlen[1:0]   | O   | 0   | Burstlengthofwriterequests: |     |     |
00: 1beat
11: 4beats
| biu_pad_awsize[2:0] | O   | 0   | Data width | per beat | for write |
| ------------------- | --- | --- | ---------- | -------- | --------- |
requests:
000: 1byte
001: 2bytes
010: 4bytes
011: 8bytes
100: 16bytes
| biu_pad_awburst[1:0] | O   | 0   | Transfertypeofwriterequests: |     |     |
| -------------------- | --- | --- | ---------------------------- | --- | --- |
01: INCR
10: WRAP
| biu_pad_awlock | O   | 0   | Accessmodeofwriterequests: |     |     |
| -------------- | --- | --- | -------------------------- | --- | --- |
0: Normalaccess
1: Exclusiveaccess
| biu_pad_awcache[3:0] | O   | 0   | Memory | access type | of write |
| -------------------- | --- | --- | ------ | ----------- | -------- |
requests:
|     |     |     | 0000: | Device Non-bufferable |     |
| --- | --- | --- | ----- | --------------------- | --- |
(strongorder)
|     |     |     | 0001: | Device Bufferable |     |
| --- | --- | --- | ----- | ----------------- | --- |
(strongorder)
|     |     |     | 0011: Normal | Non-cacheable |     |
| --- | --- | --- | ------------ | ------------- | --- |
Bufferable(weakorder)
0111: Write-backNo-allocate
1111: Write-backCacheable
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 131

Chapter10BusInterface
Table 10.5–continuedfrompreviouspage
| Signals             | I/O | Reset | Description |         |           |
| ------------------- | --- | ----- | ----------- | ------- | --------- |
| biu_pad_awprot[2:0] | O   | 0     | Protection  | type of | write re- |
quests: 0|1
[2]: Data|Instruction
|     |     |     | [1]: Secure | | Non-Secure | (fixed |
| --- | --- | --- | ----------- | ------------ | ------ |
1)
[0]: User|Privileged
| biu_pad_awvalid | O   | 0   | Write address | channel | valid |
| --------------- | --- | --- | ------------- | ------- | ----- |
signal
| pad_biu_arready | I   | -   | Write address | channel | slave |
| --------------- | --- | --- | ------------- | ------- | ----- |
readysignal
WriteDataChannelInterfaces
| biu_pad_wdata[127:0] | O   | 0   | Writerequestdata            |     |     |
| -------------------- | --- | --- | --------------------------- | --- | --- |
| biu_pad_wstrb[15:0]  | O   | 0   | Databytelanestrobes         |     |     |
| biu_pad_wlast        | O   | 0   | Lastwritedata               |     |     |
| biu_pad_wvalid       | O   | 0   | Writedatachannelvalidsignal |     |     |
| pad_biu_wready       | I   | -   | Writedatachannelslaveready  |     |     |
signal
WriteResponseChannelInterfaces
| pad_biu_bid[7:0]   | I   | -   | WriteresponseID          |             |          |
| ------------------ | --- | --- | ------------------------ | ----------- | -------- |
| pad_biu_bresp[1:0] | I   | -   | Writeresponseinformation |             |          |
|                    |     |     | Response                 | information | of write |
information
00: OKAY
01: EXOKAY
10: SLVERR
11: DECERR
| pad_biu_bvalid | I   | -   | Write response | channel | valid |
| -------------- | --- | --- | -------------- | ------- | ----- |
signal
| biu_pad_bready | O   | 1   | Write response | channel | ready |
| -------------- | --- | --- | -------------- | ------- | ----- |
signal
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 132

Chapter10BusInterface
10.2 Device Coherence Port (DCP)
910MPDCPisauser-configurableinterfacethatenablesperipheralstoaccesstheL2cacheandL1
D-Cache,ensuringdataconsistencybetweentheperipheralsandtheprocessor'son-chipdata.
DCP supports AMBA AXI4 Protocol (Please refer to AMBA Specification—AMBA ® AXI™ and ACE™
ProtocolSpecification)
10.2.1 FeaturesofDCP
ThebasicfeaturesofDCPareasfollows:
• SupportsfortheAMBA4.0AXIbusprotocol.
• Supportsfora128-bitbuswidth.
• SupportsfordifferentfrequencyratiosbetweenthesystemclockandtheCPUmainclock.
• Alloutputsignalsarefloppedout,andinputsignalsarefloppedintoachievebettertim-
ing.
• Supportsforupto8concurrenttransfersforbothreadandwriteoperations.
10.2.2 SupportedTransferTypes
ThetransferfeaturessupportedbytheDCPareasfollows:
• SupportsonlyINCRtransfermodewithLENvalues0and3.
• RequiresCACHE[3:0]tobe4'b1111,4'b1011,4'b0111,otherwiseaSLVERRresponseisre-
turned.
• RequiresSIZE[2:0]tobe3'b100,otherwiseaSLVERRresponseisreturned.
• Exclusiveaccessisnotsupported.
• WSTRB:WhenLENis0,itsupportsanybyteenablement. WhenLENis3,allbitsmustbe
setto1.
• AxADDR: When LEN is 0, the address is 16-byte aligned. When LEN is 3, the address is
64-bytealigned.
• Supports5-bitAxID.
• Supportsreadandwriteoperations.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 133

Chapter10BusInterface
10.2.3 SupportedResponseTypes
TheresponsetypessupportedbyDCPareasfollows:
• OKAY
• SLVERR
10.2.4 ResponsesunderDifferentBehaviors
TheresponsetypesreturnedfromslavedevicesareillustratedinTable10.6.
Table10.6: ResponseTypesofSlaveDevices
| RRESP/BRESP Result |     |     |
| ------------------ | --- | --- |
OKAY Thetransferaccessissuccessful,andthereceivedrequestisappropriately
processed.
SLVERR Anaccesserroroccurredandanunsupportedtransfertypewasreceived.
10.2.5 DCPSignals
|        | Table10.7: | DCPSignals |
| ------ | ---------- | ---------- |
| Signal | I/O Reset  | Definition |
TheInterfacesRelatedtoReadingAddressChannels
| pad_slvif_araddr[39:0] | I - | Readaddressbus: |
| ---------------------- | --- | --------------- |
40-bitaddressbus
| pad_slvif_arburst[1:0] | I - | Bursttransferindicationsignal: |
| ---------------------- | --- | ------------------------------ |
Indicationtransferispartofabursttransfer.
01: INCR
pad_slvif_arcache[3:0] I - The cache attributes corresponding to read
requests:
[3]: OtherAllocate
[2]: Allocate
[1]: Modifiable
[0]: Bufferable
| pad_slvif_arid[4:0]  | I - | ReadaddressID        |
| -------------------- | --- | -------------------- |
| pad_slvif_arlen[7:0] | I - | Bursttransferlength: |
00000000: 1beat
00000011: 4beats
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 134

Chapter10BusInterface
Table 10.7–continuedfrompreviouspage
| Signal           | I/O Reset | Definition   |               |             |
| ---------------- | --------- | ------------ | ------------- | ----------- |
| pad_slvif_arlock | I -       | Access modes | corresponding | to read re- |
quests:
0: normalaccess
1: exclusiveaccess
| pad_slvif_arprot[2:0] | I - | Protectiontypesofreadrequests: |     |     |
| --------------------- | --- | ------------------------------ | --- | --- |
0|1
[2]: Data|Instruction
[1]: Secure|Non-Secure
[0]: User|Privileged
| pad_slvif_arsize[2:0] | I - | Datawidthperbeatforreadrequests: |     |     |
| --------------------- | --- | -------------------------------- | --- | --- |
100: 128bits.
| pad_slvif_arvalid | I -    | Readaddressvalidsignals        |     |     |
| ----------------- | ------ | ------------------------------ | --- | --- |
| slvif_pad_arready | O 1'b1 | Readaddresschannelreadysignals |     |     |
TheInterfacesRelatedtoReadingDataChannels
| slvif_pad_rdata[127:0] | O 128'b0 | Readdatabus: |     |     |
| ---------------------- | -------- | ------------ | --- | --- |
128-bitdatabus
| slvif_pad_rid[4:0]   | O 5'b0 | ReaddataID           |     |     |
| -------------------- | ------ | -------------------- | --- | --- |
| slvif_pad_rresp[3:0] | O 4'b0 | Readresponsesignals: |     |     |
|                      |        | [1:0]: 00: OKAY      |     |     |
[2]: 1：IsShared
[3]：nopracticalmeaning
| slvif_pad_rlast  | O 1'b0 | Readdatalast-beatindicationsignal |     |     |
| ---------------- | ------ | --------------------------------- | --- | --- |
| slvif_pad_rvalid | O 1'b0 | Readdatavalidsignals              |     |     |
| pad_slvif_rready | I -    | Readdatachannelreadysignals       |     |     |
TheInterfacesRelatedtoWritingAddressChannels
| pad_slvif_awaddr[39:0] | I - | Writeaddressbus: |     |     |
| ---------------------- | --- | ---------------- | --- | --- |
40-bitaddressbus
| pad_slvif_awburst[1:0] | I - | Bursttransferindicationsignal |     |     |
| ---------------------- | --- | ----------------------------- | --- | --- |
Indicationtransferispartofabursttransfer
01: INCR
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 135

Chapter10BusInterface
Table 10.7–continuedfrompreviouspage
| Signal | I/O Reset | Definition |     |     |
| ------ | --------- | ---------- | --- | --- |
pad_slvif_awcache[3:0] I - The cache attributes corresponding to write
requests
[3]: OtherAllocate
[2]: Allocate
[1]: Modifiable
[0]: Bufferable
| pad_slvif_awid[4:0]  | I - | WritedataID          |               |              |
| -------------------- | --- | -------------------- | ------------- | ------------ |
| pad_slvif_awlen[7:0] | I - | Bursttransferlength: |               |              |
|                      |     | 00000000: 1beat      |               |              |
|                      |     | 00000011: 4beats     |               |              |
| pad_slvif_awlock     | I - | Access modes         | corresponding | to write re- |
quests:
0: normalaccess
1: exclusiveaccess
| pad_slvif_awprot[2:0] | I - | Protectiontypesofwriterequests: |     |     |
| --------------------- | --- | ------------------------------- | --- | --- |
0|1
[2]: Data|Instruction
[1]: Secure|Non-Secure
[0]: User|Privileged
| pad_slvif_awsize[2:0] | I - | Datawidthperbeatforwriterequests: |     |     |
| --------------------- | --- | --------------------------------- | --- | --- |
100: 128bits
| pad_slvif_awvalid | I -    | Writeaddressvalidsignals        |     |     |
| ----------------- | ------ | ------------------------------- | --- | --- |
| slvif_pad_awready | O 1'b1 | Writeaddresschannelreadysignals |     |     |
TheInterfacesRelatedtoWritingDataChannels
| pad_slvif_wdata[127:0] | I - | Writedatabus: |     |     |
| ---------------------- | --- | ------------- | --- | --- |
128-bitwritedatabus
| pad_slvif_wstrb[15:0] | I -    | Writedatabytevalidsignals          |     |     |
| --------------------- | ------ | ---------------------------------- | --- | --- |
| pad_slvif_wlast       | I -    | Writedatalast-beatindicationsignal |     |     |
| pad_slvif_wvalid      | I -    | Writedatavalidsignals              |     |     |
| slvif_pad_wready      | O 1'b1 | Writedatachannelreadysignals       |     |     |
TheSignalsRelatedtoWritingResponseChannels
| slvif_pad_bid[4:0] | O 5'b0 | WriteresponseID |     |     |
| ------------------ | ------ | --------------- | --- | --- |
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 136

Chapter10BusInterface
Table 10.7–continuedfrompreviouspage
| Signal               | I/O Reset | Definition            |
| -------------------- | --------- | --------------------- |
| slvif_pad_bresp[1:0] | O 2'b0    | Writeresponsesignals: |
00: OKAY
10: SLVERR
| slvif_pad_bvalid | O 1'b0 | Writeresponsevalidsignals        |
| ---------------- | ------ | -------------------------------- |
| pad_slvif_bready | I -    | Writeresponsechannelreadysignals |
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 137

Chapter11Debug
11 Debug
11.1 Debug Features
ThedebuginterfaceprovidesaninteractionchannelbetweensoftwareandtheCPU.Userscan
obtaininformationabouttheCPUregisters,memorycontents,andotheron-chipperipheralin-
formation. In addition, operations such as program downloading can also be accomplished
throughthedebuginterface.
The C910MP supports the JTAG communication protocol compatible with the IEEE-1149.1 stan-
dard (commonly referred to as JTAG5) and can be integrated with existing JTAG components or
standaloneJTAGcontrollers.
Thedebuginterfaceprovidesthefollowingkeyfeatures:
• DebuggingthroughstandardJTAGinterface.
• Supports synchronous and asynchronous debug, enabling the CPU to enter the debug
modeinextremescenarios.
• Supportssoftwarebreakpoints.
• Supportssettingmultiplememorybreakpoints.
• ChecksandsettheCPUregistervalues.
• Checksandmodifiesthememoryvalue.
• Supportssingle-stepormulti-stepexecutionofinstructions.
• Supportsfastprogramsdownload.
• SupportsenteringdebugmodeaftertheresetofCPU.
C910 debugging is coordinately implemented by the debug software, debug agent, debugger,
and debug interface. The location of the debug interface in CPU debug environment is shown
infig_debug_interface_location. Thedebugsoftwareisconnectedtothedebugagent
overnetwork. ThedebugagentisconnectedtothedebuggerthroughUSB.Thedebuggercom-
municateswiththedebuginterfaceofCPUinJTAGmode.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 138

Chapter11Debug
Fig.11.1: LocationoftheDebugInterfaceinCPUDebugEnvironment
11.2 Connection between Debug and CPU core
C910MP adopts the debug framework with multi-core and single port, accessing the auxiliary
debugunit(HAD)ofeachcorewithasharedJTAGinterface. Ittriggerscorestoenter/exitdebug
mode and access processor resources. By setting the coreSEL field in the HACR of the JTAG in-
terface to designate the target core, subsequently configure the HAD registers of the specified
core.
In the scenarios of multi-core, when a specific core enters the debug mode, other cores need
to also enter the debug mode. When a core exists debug mode, other cores also need to exist
thedebugmode. Therefore,C910MPdesignanintegratedEventTransferModule(ETM),facilitat-
ing the transfers of entering and existing the debug mode among multi-cores. When the C910
corereceivesadebugcommandfromtheICEandtriggersadebugentryorexitevent,itsimul-
taneouslysends this event to the ETM, which then forwardsthe event to other coresto achieve
synchronized entry/exit of multiple cores into/from debug mode. The C910 multi-core debug-
ging framework is illustrated in fig_multi_corframework (using a dual-core configuration
asanexample).
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 139

Chapter11Debug
Fig.11.2: TheOverllMulti-coreDebugFramework
Multi-CoreSystemDebugEntryScenario:
When a core enters debug mode, it generates an output DBG_ENT signal. The
EVENT_OUTENregisterofthatcorecontrolswhetherthisDBGsignalcanbetransmit-
ted to the ETM module. If the EVENT_OUTEN register is enabled, the DBG signal is
forwarded to other cores via the ETM module. Whether other cores enter the debug
statedependsontheirrespectiveEVENT_INENregisters.
Multi-CoreSystemDebugExitScenario:
When a core exits debug mode, it generates an output DBG_EXIT signal. The
EVENT_OUTENregisterofthatcorecontrolswhetherthisDBG_EXITsignalcanbetrans-
mittedtotheETMmodule. IftheEVENT_OUTENregisterisenabled,theDBG_EXITsignal
is forwardedto other coresvia the ETM module. Whether other coresexit the debug
statedependsontheirrespectiveEVENT_INENregisters.
11.3 Debug Interface Signals
ThedebugmoduleandexternalinterfacesprimarilyconsistofJTAG-relatedinterfacesignalsand
debug-relatedinterfacesignals. Table11.1liststhedebug-relatedinterfacesignals.
Table11.1: SignalsforDebugModuleandExternalInterface
Signals Direction
corex_pad_halted Output
pad_corex_dbgrq_b Input
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 140

Chapter11Debug
Table 11.1–continuedfrompreviouspage
Signals Direction
corex_pad_jdb_pm[1:0] Output
pad_corex_dbg_mask Input
pad_had_jtg_tclk Input
pad_had_jtg_trst_b Input
pad_had_jtg_tdi Input
had_pad_jtg_tdo Output
had_pad_jtg_tdo_en Output
pad_had_jtg_tms Input
corex_pad_halted
Ahighlevelindicatesthatthecorrespondingcoreisindebugmode.
pad_corex_dbgrq_b
Asynchronousdebugentryrequestsignal,active-low. Thissignalisanexternalinput
to the core. After being synchronized by the system clock within the core, it is trans-
ferredintotheHAD.TheHADusesthissignaltosynchronouslytriggerthecoretoenter
debug mode. Pulling this signal low has the same effect as setting the DR bit in the
HADHCRregister.
corex_pad_jdb_pm[1:0]
Thecorex_pad_jdb_pm[1:0]signalsindicatethecurrentoperatingmodeofthecorre-
spondingcore. ThesesignalscanbeusedtodeterminewhethertheCPUhasentered
debugmode,asdetailedinTable11.2.
Table11.2: CurrentCPUStatusIndicatedbyPM
had_pad_jdb_pm[1:0] Description
00 NormalMode
01 Low-powerMode
10 DebugMode
11 Reserved
pad_corex_dbg_mask
Debug request mask signal, driven by the SoC, to mask debug requests targeting
corex. Thissignalmustbesethighduringthepower-downsequence.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 141

Chapter11Debug
pad_had_jtg_tclk
JTAG clock signal. This external input signal is typically generated by the debugger.
ThefrequencyofthisclocksignalmustbeensuredtobelessthanhalftheCPUclock
frequencytoguaranteeproperoperationbetweenthedebugmoduleandthecore.
pad_had_jtg_trst_b
Thepad_had_jtg_trst_bsignalistheJTAGresetsignal,whichresetstheTAPstatema-
chineandotherrelatedcontrolsignals.
JTAG5-RelatedSignals
• pad_had_jtg_tdi: JTAGserialinputsignalfortheHAD.TheHADsamplesthissignalonthe
risingedgeoftheJTAGclock(tclk),whiletheexternaldebuggerdrivesthissignalonthe
fallingedgeoftheJTAGclock.
• pad_had_jtg_tms: JTAGmodeselectsignal,issuedbythedebugger,tocontroltheoper-
ationoftheTAPstatemachineintheHAD.
• had_pad_jtg_tdo: JTAG serial output signal from the HAD. The HAD drives this signal on
the falling edge of the JTAG clock (tclk), while the external debugger samples it on the
risingedgeoftheJTAGclock.
• had_pad_jtg_tdo_en: Indicates the validity of the had_pad_jtg_tdo signal. External de-
buggerstypicallymonitorthissignaltodeterminewhetherhad_pad_jtg_tdoisvalid. Al-
ternatively, debuggers may ignore this signal and decide to sample had_pad_jtg_tdo
based on the internal TAP state machine status. This signal is primarily used to identify
whichJTAG’soutputisactivewhenmultipleTAPstatemachinesareimplemented.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 142

Chapter12PowerManagement
| 12 Power | Management |     |
| -------- | ---------- | --- |
SinceR1S4version(alsocalledas"1.4.xversion"),C910hasimprovedsignificantlyinpowerman-
agement features, supporting multiple power domains, power-down of a single core, cluster
power-down,andclearingoftheL2cachebyexternalhardwareinterface. Thischapterdescribes
thepowermanagementfeatureofC910indetail.
| 12.1 Power | Domain |     |
| ---------- | ------ | --- |
C910canbedividedintoupto5PowerDomain.
• Each core has its own power domain, including the computing unit, control logic and
CacheRAM.
• L2 subsystem, also referred as top level, is also a power domain, including submodule
suchasCIU,L2C,Debug,PLIC,CLINT,andSYSIO.
| 12.2 Overview | of Low-Power | Mode |
| ------------- | ------------ | ---- |
C910supportsthefollowinglow-powermodes:
| • Normalmode: | AllcoresandL2arerunningproperly. |     |
| ------------- | -------------------------------- | --- |
• Wait-For-Interrupt(WFI)modeincores: SomecoresareinWFImode.
| • Power-downofthesinglecore: |     | Somecoresarepowereddown. |
| ---------------------------- | --- | ------------------------ |
• Power-downofallclusters: Theentirecluster,including4coresandL2,areallpowered
down.
| 12.3 Core WFI | Process |     |
| ------------- | ------- | --- |
By executing the WFI low power instruction, a core enters WFI mode and outputs signal
core(x)_pad_lpmd_b[1:0]=2'b00,whichindicatesthatthecorehasenteredWFImode. Atthismo-
ment, the L2 subsystem will disable the global Integrated Clock Gating (ICG) of this core inside
thecluster.
ThecorewillbewokenupandexitWFImodeupontheoccurrenceofthefollowingevents:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 143

Chapter12PowerManagement
• Resets;
• Interruptrequests: externalinterrupt,softwareinterrupt,ortimerinterruptrequestssent
bythePlatform-LevelInterruptController(PLIC)orCoreLocalInterrupter(CLINT);
• Debugrequests.
Whenthefollowingeventoccurs,thecoreistemporarilywokenuptoprocesstheevent. Itreen-
ters low power mode after the event is processed. But the core does not exit WFI mode during
theentireprocess.
• Snooprequest: Snooprequestssentbyothercores.
12.4 Single-Core Power-Down Process
The system can completely terminate the static power of the core by shutting down the core
power. Andthecorrespondingterminateprocessisasfollows:
C910coreperformsthefollowingpower-downoperations:
1. NotifiesSoCthatthesingle-corepower-downprocessistobeexecuted. Andtheimple-
mentationofthisstepissubjecttotheSoCdesign.
2. Masksallinterruptrequestsofthecore,includingexternalinterrupts,softwareinterrupts,
and timer interrupts, and then disables the interrupt enable bit (mie, sie) of the MSTA-
TUS/SSTATUS register and the interrupt enable bit of the MIE/SIE register. If the power-
down process is executed in Machine Mode (M-mode), disable the interrupt enable bits
of the MSTATUS and MIE registers. If the power-down process is executed in Supervisor
Mode(S-mode),disabletheinterruptenablebitsoftheSSTATUSandSIEregisters.
3. Disablesdataprefetch.
4. ExecutesD-CacheINV&CLRALLandwritesthedirtylinebacktoL2cache.
5. DisablesD-Cache
(cid:159) Attention
Nostoreinstructionisallowedbetweencacheinvalidationanddisablement.
6. DisablestheSMPENbitandmasksnooprequestsofthecore.
7. Executesfenceiorw,iorwinstructions
8. ExecutestheWait-For-Interrupt(WFI)instructionandentersWFImode.
Thesystemperformsthefollowingoperations:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 144

Chapter12PowerManagement
1. Detectsavalidlow-poweroutputsignalcore(x)_pad_lpmd_bfromthecore.
2. Assertspad_core(x)_dbg_masktomaskdebugrequestsofthecoretobepowereddown.
3. Activatestheoutputsignalclampbitofthecoretobepowereddown.
4. Pullsdowntheresetsignalpad_core(x)_rst_bofthecoretobepowereddown.
5. Powersdownthecore.
Whenthecoreisinapowered-offstate,itcanonlyberestartedbyareset. Thecorerepowering
procedureisasfollows:
1. Thesystemdetectsaspecificeventanddeterminestopowerup(alsoreferredtoas"wak-
ingup")thecore.
2. Thesystemsetstheresetaddressfortheawakenedcore.
3. Pullsdowntheresetsignalofthecore.
4. Powersupandmaintainstheresetsignalasserted.
5. Releasestheoutputsignalclampofthecore.
6. Releasestheresetsignalofthecore.
7. Theawakenedcoreexecutesaninitializationprogram,enablesSMPENbitandperforms
initializationoperationssuchasenablingtheMMUandDCACHE.
12.5 Cluster Power-Down Process (Hardware Clearing of the L2 Cache)
First,makesurethatthepowerisshutdownforallcoresexceptthemaincoreinthecluster. In
this scenario, the "main core" refers to the last core to be powered down, which can be any of
the4cores.
Themaincoreperformsthefollowingoperations:
1. NotifiesSoCthattheclusterpower-downprocessistobeexecuted. Theimplementation
issubjecttotheSoCdesign.
2. Masksallinterruptrequests,includingexternalinterrupts,softwareinterrupts,andtimer
interrupts,andthendisablestheinterruptenablebit(mie,sie)oftheMSTATUS/SSTATUS
registerandtheinterruptenablebitoftheMIE/SIEregister.
3. Disablesdataprefetch.
4. ExecutestheD-CacheINV&CLRALLoperation.
5. DisablesD-Cache
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 145

Chapter12PowerManagement
(cid:159) Attention
Nostoreinstructionisallowedbetweencacheinvalidationanddisablement.
6. DisablestheSMPENbitforthecore.
7. Executesthefenceiorw，iorwinstructions
8. Executesthelow-powerinstructionWFIandenterlow-powermode.
Thesystemperformsthefollowingoperations:
1. Thesystemdetectsthatthelowpoweroutputsignalcore(x)_pad_lpmd_bofthemaincore
isvalid.
2. Thesystemassertspad_core(x)_dbg_masktomaskdebugrequestsforthemaincore.
3. Activatestheoutputsignalclampofthemaincore.
4. Pullsdowntheresetsignalpad_core(x)_rst_bofthemaincore.
5. Powersdownthemaincore.
6. Assertspad_cpu_l2cache_flush_reqtostarttheprocessofclearingtheL2cache.
7. WaitsforC910toreturncpu_pad_l2cache_flush_done=1.
8. Deasserts pad_cpu_l2cache_flush_req. (Then C910 will deassert
cpu_pad_l2cache_flush_done)
9. EnsuresDCP(ifconfigured)hasnonewrequests.
10. WaitsforC910toreturncpu_pad_no_op=1.
11. Activatestheoutputsignalclampofthetop-levelcomponents.
12. DeassertstheL2resetsignalpad_cpu_rst_b.
13. Powersdownthetop-levelcomponents.
TheClusterispoweredupagainthrougharesetprocesswiththefollowingsteps:
1. Pullsdowntheresetsignalofallcoresandtop-levelcomponentsintheCluster.
2. Powersupandmaintainstheresetsignalassertedandpllstable.
3. Releasestheoutputsignalclampsofallcoresandtop-levelcomponents.
4. Releasestheresetsignalsofallcoresandtop-levelcomponents.
5. ExecutestheresetexceptionserviceroutinetorestoretheCPUstate.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 146

Chapter12PowerManagement
12.6 Power-Down Process (Software Clearing of the L2 Cache)
First, make sure that the power is shut down for all cores except the main core in the cluster.
Inthisscenario,itisrecommendedtodistinguishtherolesofthe'primarycore'and'secondary
cores'intheSoC,withCore0designatedastheprimarycore
Themaincoreperformsthefollowingoperations:
1. NotifiesSoCthattheclusterpower-downprocessistobeexecuted. Theimplementation
issubjecttotheSoCdesign.
2. Masksallinterruptrequests,includingexternalinterrupts,softwareinterrupts,andtimer
interrupts,andthendisablestheinterruptenablebit(mie,sie)oftheMSTATUS/SSTATUS
registerandtheinterruptenablebitoftheMIE/SIEregister.
3. Disablesdataprefetch.
4. ExecutestheD-CacheINV&CLRALLoperation.
5. DisablesD-Cache
(cid:159) Attention
Nostoreinstructionisallowedbetweencacheinvalidationanddisablement.
6. DisablestheSMPENbitforthecore.
7. Executesthefenceiorw，iorwinstructions
8. ExecutestheCLR&INVL2Cacheinstructions
9. Executesthefenceiorw，iorwinstructions
10. Executesthelow-powerinstructionWFIandenterlow-powermode.
Thesystemperformsthefollowingoperations:
1. Thesystemdetectsthatthelowpoweroutputsignalcore(x)_pad_lpmd_bofthemaincore
isvalid.
2. Thesystemassertspad_core(x)_dbg_masktomaskdebugrequestsforthemaincore.
3. Activatestheoutputsignalclampofthemaincore.
4. Pullsdowntheresetsignalpad_core(x)_rst_bofthemaincore.
5. Powersdownthemaincore.
6. EnsuresDCP(ifconfigured)hasnonewrequests.
7. WaitsforC910toreturncpu_pad_no_op=1.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 147

Chapter12PowerManagement
8. Activatestheoutputsignalclampofthetop-levelcomponents.
9. DeassertstheL2resetsignalpad_cpu_rst_b.
10. Powersdownthetop-levelcomponents.
12.7 Simplified Scenario: Overall Cluster Power-Down Process (Hardware
Clearing of the L2 cache)
In some systems, SoC designers may take a simplified way to divide power domains. That is,
taketheentireC910cluster(4cores+L2)asapowerdomainandpowerdowntheclusterasa
whole, instead of distinguishing each single core. In this scenario, the power-down procedure
(hardwareclearingoftheL2cache)performsthefollowingsteps:
Thesystemperformsthefollowingoperations:
1. Notifies SoC that the overall cluster power-down process is to be executed. The imple-
mentationissubjecttotheSoCdesign.
2. EnsurethatallexistingtransfersontheDCP(ifany)arecompletedandnonewreadand
writerequestsaresenttotheDCP.
The core performs the following operations (There is no need to distinguish the main core and
secondarycoresinthisscenario,astheprocessisthesameforthem).
1. Masks all interrupt requests of the core, including external interrupts, software inter-
rupts, and timer interrupts, and disables the interrupt enable bit (mie, sie) of the MSTA-
TUS/SSTATUSregister,aswellastheinterruptenablebitoftheMIE/SIEregister.
2. Disablesdataprefetch.
3. ExecutesINV&CLRD-CacheALLandwritesdirtylinesbacktoL2cache.
4. DisablesD-Cache(Nostoreinstructionisallowedbetweenclearinganddisablingcache
operations).
5. DisablestheSMPENbitandmaskssnooprequestsforthecore.
6. Executesfenceiorw,iorwinstructions.
7. ExecutestheWFIinstruction.
Thesystemperformsthefollowingoperations:
1. Waitsforallcore(x)_pad_lpmd_b[1:0]==2'b00,indicatingthatallCPUshaveenteredlow
powerstate.
2. Assertsallpad_core(x)_dbg_masktoblockdebugrequests.
3. Assertspad_cpu_l2cache_flush_reqtoinitiatetheprocessofhardwareclearingL2cache.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 148

Chapter12PowerManagement
4. Waits for C910 to return cpu_pad_l2cache_flush_done=1, indicating that L2 cache has
beencleared.
5. Deasserts pad_cpu_l2cache_flush_req. (Subsequently, C910 will deassert
cpu_pad_l2cache_flush_done.)
6. Waitsforcpu_pad_no_op==1'b1,indicatingthatL2isinidlestate. (Atthispoint,allCPUs
arestillinlow-powermode.)
7. Activatestheoutputsignalclampsofthecluster.
8. Assertsallresetsignals.
9. Powersdowntheentirecluster.
12.8 Simplified Scenario: Overall Cluster Power-Down Process (Software
Clearing of the L2 cache)
Similarly,thissectionisalsoappplicableforsimplifiedpowerdomainpartitioning. Taketheentire
C910cluster(4cores+L2)asapowerdomainandpowerdowntheclusterasawhole,insteadof
distinguishingeachsinglecore. Inthisscenario,thepower-downprocedure(softwareclearing
oftheL2cache)performsthefollowingsteps:
Thesystemperformsthefollowingoperations:
1. Notifies SoC that the overall cluster power-down process is to be executed. The imple-
mentationissubjecttotheSoCdesign.
2. EnsurethatallexistingtransfersontheDCP(ifany)arecompletedandnonewreadand
writerequestsaresenttotheDCP.
The core performs the following operations (There is no need to distinguish the main core and
secondarycoresinthisscenario,astheprocessisthesameforthem).
Thesecondarycores(e.g. CPU1/2/3)performthefollowingoperations:
1. Masks all interrupt requests of the core, including external interrupts, software inter-
rupts, and timer interrupts, and disables the interrupt enable bit (mie, sie) of the MSTA-
TUS/SSTATUSregister,aswellastheinterruptenablebitoftheMIE/SIEregister.
2. Disablesdataprefetch.
3. ExecutesINV&CLRD-CacheALLandwritesdirtylinesbacktoL2cache.
4. DisablesD-Cache(Nostoreinstructionisallowedbetweenclearinganddisablingcache
operations).
5. DisablestheSMPENbitandmaskssnooprequestsforthecore.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 149

Chapter12PowerManagement
6. Executesfenceiorw,iorwinstructions.
7. ExecutestheWFIinstruction.
Theprimarycoreexecutesthefollowingoperations:
1. Masks all interrupt requests of the core, including external interrupts, software inter-
rupts, and timer interrupts, and disables the interrupt enable bit (mie, sie) of the MSTA-
TUS/SSTATUSregister,aswellastheinterruptenablebitoftheMIE/SIEregister.
2. Disablesdataprefetch.
3. ExecutesINV&CLRD-CacheALLandwritesdirtylinesbacktoL2cache.
4. DisablesD-Cache(Nostoreinstructionisallowedbetweenclearinganddisablingcache
operations).
5. DisablestheSMPENbitandmaskssnooprequestsforthecore.
6. Executesfenceiorw,iorwinstructions.
7. The primary core waits for all secondary cores to enter WFI mode (The speific methods
dependonSoCdesign).
8. ExecutesINV&CLRL2CacheALL，clearingL2cache.
9. Executesfenceiorw,iorwinstruction
10. ExecutestheWFIinstruction.
Thesystemexecutesthefollowingoperations:
1. Waitsforallcore(x)_pad_lpmd_b[1:0]==2'b00andcpu_pad_no_op==1'b1,indicatingthat
allCPUshaveenteredlow-powerstateandL2hasenteredanidlestate.
2. Assertsallpad_core(x)_dbg_masktoblockdebugrequests.
3. Activatestheoutputsignalclampsofthecluster.
4. Assertsallresetsignals.
5. Powersdowntheentirecluster.
12.9 Low-power Related Programming Models and Interface Signals
12.9.1 ChangesintheProgrammingModel
MachineResetRegister(MRMR)
This register has been deleted. If this register is accessed, the read value will be
zero and the write will be invalid, without reporting any exceptions. The impact
of this change is that the reset signals of each core are no longer controlled by
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 150

Chapter12PowerManagement
MRMR.TheSoCcanindependentlycontroltheresetandde-resetofeachcorethrough
pad_core(x)_rst_b.
MachineSnoopEnableRegister(MSMPR)
Itisanewlyaddedregisterwithawidthof64bits. Onlybit[0](SMPEN)isdefinedwitha
defaultvalueof0. Thefeatureofthisregisteristocontrolwhetherthecorecanaccept
snooprequests.
• MSMPR.SMPEN=0,thecorecannotprocesssnooprequests,andthetop-level
componentsmasksendingsnooprequeststothecore.
• MSMPR.SMPEN=1,thecorecanprocesssnooprequests,andthetop-levelcom-
ponentssendsnooprequeststothecore.
Before powering down the core, it is required to set SMPEN=0 for the corresponding
core. Afterpoweringupthecore,softwareneedstosetSMPEN=1beforeenablingD-
CacheandMMU.ThecoremustkeepSMPEN=1innormaloperationmode.
MachineResetVectorBaseRegister(MRVBR)
Theprogrammingmodelhasbeenmodified. Theimplementationhaschangedfrom
"4-coreshared"to"core-private". Theaccesspermissionhaschangedfrom"MRW"to
"MRO". TheinitialvaluesofMRVBRforeachcoreareindependentanddeterminedby
hardwaresignalpad_core(x)_rvba[39:1].
12.9.2 InterfaceSignals
The communication between C910 and the SoC power management unit is mainly achieved
throughthefollowingsignals:
• core(x)_pad_lpmd_b:
It determines if a core is in WFI mode. 2'b11 represents normal mode, and 2'b00 repre-
sentsWFImode.
• cpu_pad_no_op:
ItisanL2Cacheidleindicationsignal. WhenallcoresenterlowpowermodeandL2Cache
completesalltransfers,thissignalisvalid(activehigh).
• pad_cpu_l2cache_flush_reqandcpu_pad_l2cache_flush_done:
This signal group is used to clear the L2 cache under the control of SoC, and the appli-
cationscenariois thepower-down ofcluster. The"req"signalis drivenbySoC, andthe
"done"signalisdrivenbyC910. Andthecorrespondingoperationsequenceisasfollows:
First,SoCassertsandmaintains"req"toinitiatetheL2clearingprocess;AfterC910com-
pletestheL2clearing,itreturns"done"=1;SoCdeasserts"req"signal;thenC910deasserts
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 151

Chapter12PowerManagement
"done"signal.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 152

Chapter13PerformanceMonitorUnit(PMU)
13 Performance Monitor Unit (PMU)
13.1 PMU Overview
TheC910PMUcomplieswithRISC-Vstandard. AndthePMUisdesignedtocollectsoftwareand
partial hardware information during a program operation, for software developers to optimize
programs.
ThesoftwareandhardwareinformationcollectedbythePMUisclassifiedasfollows:
• Numberofrunningclocksandthetime
• Instructionstatistics
• Statisticsofkeycomponents
13.2 PMU Programming Model
13.2.1 BasicFeaturesofPMU
BasicfeaturesofthePMUareasfollow:
• Prohibitsthecountingofalleventsbythemcountinhibitregister.
• Resets the current value of each PMU counter to 0, including mcycle, minstret, and mh-
pmcounter3tomhpmcounter31.
• ConfiguresthecorrespondingeventsforeachPMUcounter. Thecorrespondencebetween
C910event-counterisfixed. Theconfigurationshouldbeperformedwithfixedpatterns.
Forexample,0x1mustbewrittenintomhpmevent3,indicatingmhpmcounter3counters
for 0x1 event only (access times to L1 I-Cache); 0x2 must be written into mhpmevent4,
indicatingmhpmcounter4countersfor0x2eventonly(accessmisstimestoL1I-Cache).
• Accessauthorization: ThemcounterenregisterdetermineswhetherPMUcounterscanbe
accessedinSupervisorMode(S-mode),andscounterendetermineswhetherPMUcoun-
terscanbeaccessedinUserMode(U-mode).
• Releasesdisablingstatusbythemcountinhibitregisterandstartscounting.
Forspecificinstances,pleaserefertoPMUSetupInstance
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 153

Chapter13PerformanceMonitorUnit(PMU)
13.2.2 PMUEventOverflowInterrupts
C910implementsMachineEventOverflowFlagRegister(MCOUNTEROF)andMachineEventInter-
ruptEnableRegister(MCOUNTERINTEN).Forthefeaturesandread/writepermissionsofregisters,
pleaserefertoAppendixc-1Machine-levelCSRs.
• Each bit in this MCOUNTEROF register corresponds to an event counter and indicates
whethertherespectiveeventcounterhasoverflowed.
• Each bit in this MCOUNTERINTEN register corresponds to an event counter and controls
whetheraninterruptrequestistriggeredwhentheassociatedeventcounteroverflows.
TheoverflowinterruptinitiatedbyPMUunithasaunifiedinterruptvectornumber17. Theinter-
ruptenablementandhandlingprocessarethesameasthatofregularprivateinterrupts,andfor
detailedinformation,pleaserefertoExceptionandInterrupt.
13.3 PMU Control Registers
13.3.1 mcounterenRegister
MachineCounterAccessEnableRegister(mcounteren)isdesignedtoauthorizewhetherS-mode
canaccessusercounters.
Fig.13.1: MCOUNTERENRegister
Table13.1: MCOUNTERENRegisterDescription
Bit Read/Write Name Description
31:3 Read/Write HPMn TheaccessbitofthehpmcounternregisterinS-mode.
0: Anillegalinstructionexceptionwilloccurforaccessestothe
hpmcounternregisterinS-mode.
1: The hpmcountern register can be normally accessed in S-
mode.
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 154

Chapter13PerformanceMonitorUnit(PMU)
Table 13.1–continuedfrompreviouspage
Bit Read/Write Name Description
2 Read/Write IR TheaccessbitoftheminstretregisterinS-mode.
0: Anillegalinstructionexceptionwilloccurforaccessestothe
minstretregisterinS-mode.
1: TheminstretregistercanbenormallyaccessedinS-mode.
1 Read/Write TM TheaccessbitofthetimeregisterinS-mode.
0: Anillegalinstructionexceptionwilloccurforaccessestothe
timeregisterinS-mode.
1: When the corresponding bit of the mcounteren register is 1,
the time register can be normally accessed in S-mode. Other-
wise,anillegalinstructionexceptionwilloccur.
0 Read/Write CY TheaccessbitofthemcycleregisterinS-mode.
0: Anillegalinstructionexceptionwilloccurforaccessestothe
cycleregisterinS-mode.
1: ThecycleregistercanbenormallyaccessedinS-mode.
13.3.2 ScounterenRegister
The Supervisor Counter Access Enable Register (scounteren) is designed to authorize whether
usercountercanbeaccessedinU-mode.
Fig.13.2: SCOUNTERENRegister
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 155

Chapter13PerformanceMonitorUnit(PMU)
Table13.2: SCOUNTERENRegisterDescription
Bit Read/Write Name Description
31:3 Read/Write HPMn TheaccessbitofthehpmcounternregisterinU-mode.
0: An illegal instruction exception will occur for accesses to
thehpmcounternregisterinU-mode.
1: Whenthecorrespondingbitsofthemcounterenregisteris
1, the hpmcountern register can be normally accessed in U-
mode.
Otherwise,anillegalinstructionexceptionwilloccur.
2 Read/Write IR TheaccessbitoftheinstretregisterinU-mode.
0: An illegal instruction exception will occur for accesses to
theinstretregisterinU-mode.
1: Whenthecorrespondingbitsofthemcounterenregisteris
1,theinstretregistercanbenormallyaccessedinU-mode.
Otherwise,anillegalinstructionexceptionwilloccur.
1 Read/Write TM TheaccessbitofthetimeregisterinU-mode.
0: An illegal instruction exception will occur for accesses to
thetimeregisterinU-mode.
1: Whenthecorrespondingbitsofthemcounterenregisteris
1,thetimeregistercanbenormallyaccessedinU-mode.
Otherwise,anillegalinstructionexceptionwilloccur.
0 Read/Write CY TheaccessbitofthecycleregisterinU-mode.
0: An illegal instruction exception will occur for accesses to
thecycleregisterinU-mode.
1: Whenthecorrespondingbitsofthemcounterenregisteris
1,thecycleregistercanbenormallyaccessedinU-mode.
Otherwise,anillegalinstructionexceptionwilloccur.
13.3.3 mcountinhibitRegister
MachineCountInhibitRegister(mcountinhibit)canprohibitmachinecounterfromcounting,and
disable counters in scenarios where performance analysis is not required, reducing the power
consumptionoftheprocessor.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 156

Chapter13PerformanceMonitorUnit(PMU)
Fig.13.3: MCOUNTINHIBITRegister
|     |            | Table13.3: MCOUNTINHIBITRegister |             |
| --- | ---------- | -------------------------------- | ----------- |
| Bit | Read/Write | Name                             | Description |
31:3 Read/Write MHPMn Thecountinhibitbitofthemhpmcounternreg-
ister
0: normalcounting
1: countinginhibited
| 2   | Read/Write | MIR | Thecountinhibitbitoftheminstretregister |
| --- | ---------- | --- | --------------------------------------- |
0: normalcounting
1: countinginhibited
| 1   | -          | -   | -                                     |
| --- | ---------- | --- | ------------------------------------- |
| 0   | Read/Write | MCY | Thecountinhibitbitofthemcycleregister |
0: normalcounting
1: countinginhibited
13.3.4 MachineWriteEnableRegister(mcounterwen)
MCOUNTERWEN authorizes whether S-mode can write to Supervisor event counters. As a
Machine-modeextendedregister,itsdetaileddescriptioncanbefoundinAppendixC-1Machine-
levelControlandStatusRegitsers(CSRs).
13.3.5 MachinePerformanceMonitorEventSelectRegister
MachinePerformanceMonitorEventSelectRegister(mhpmevent3-31)isdesignedtoselectsthe
counting event corresponding to a counter. In C910, each counter can be configured with any
event. Thecountercancounttheconfiguredeventnormallybywritingtheeventindexvalueinto
themhpmevent3-31Register.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 157

Chapter13PerformanceMonitorUnit(PMU)
Fig.13.4: MHPMEVENTRegister
Table13.4isthedetailedinformationformhpmeventregister.
Table13.4: MHPMEVENTRegisterDescription
| Bit | Read/Write | Name | Description |     |     |
| --- | ---------- | ---- | ----------- | --- | --- |
Permission
| 63:0 | Read/write | EventIndex | Performancemonitoreventindex |     |     |
| ---- | ---------- | ---------- | ---------------------------- | --- | --- |
0: noevents
|     |     |     | 0x1~0x2A:              | the performance | monitor event  |
| --- | --- | --- | ---------------------- | --------------- | -------------- |
|     |     |     | implementedbyhardware. |                 | Forthedetails, |
pleaserefertoTable13.5
>0x2A:theundefinedperformancemonitor
eventbyhardware
Thecorrespondencebetweeneventselectors,events,andcountersinTable13.5.
Table13.5: CounterEventCorrespondenceList
| Index |     | Event                              |     |     |     |
| ----- | --- | ---------------------------------- | --- | --- | --- |
| 0x1   |     | L1I-CacheAccessCounter             |     |     |     |
| 0x2   |     | L1I-CacheMissCounter               |     |     |     |
| 0x3   |     | I-UTLBMissCounter                  |     |     |     |
| 0x4   |     | D-UTLBMissCounter                  |     |     |     |
| 0x5   |     | JTLBMissCounter                    |     |     |     |
| 0x6   |     | ConditionalBranchMispredictCounter |     |     |     |
| 0x7   |     | ConditionalBranchCounter           |     |     |     |
| 0x8   |     | IndirectBranchMispredictCounter    |     |     |     |
| 0x9   |     | IndirectBranchCounter              |     |     |     |
| 0xA   |     | LSUSpecFailCounter                 |     |     |     |
| 0xB   |     | StoreInstructionCounter            |     |     |     |
| 0xC   |     | L1D-CacheloadaccessCounter         |     |     |     |
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 158

Chapter13PerformanceMonitorUnit(PMU)
Table 13.5–continuedfrompreviouspage
Index Event
0xD L1D-CacheloadmissCounter
0xE L1D-CachestoreaccessCounter
0xF L1D-CachestoremissCounter
0x10 L2loadaccessCounter
0x11 L2loadmissCounter
0x12 L2storeaccessCounter
0x13 L2storemissCounter
0x14 RFLaunchFailCounter
0x15 RFRegLaunchFailCounter
0x16 RFInstructionCounter
0x17 LSUCross4KStallCounter
0x18 LSUOtherStallCounter
0x19 LSUSQDiscardCounter
0x1A LSUSQDataDiscardCounter
0x1B IFUBranchTargetMispredCounter
0x1C IFUBranchTargetInstructionCounter
0x1D ALUInstructionCounter
0x1E LDSTInstructionCounter
0x1F VectorSIMDInstructionCounter
0x20 CSRInstructionCounter
0x21 SyncInstructionCounter
0x22 LDSTUnalignedAccessCounter
0x23 InteruptNumberCounter
0x24 InterruptOffCycleCounter
0x25 EnvironmentCallCounter
0x26 LongJumpCounter
0x27 StalledCyclesFrontendCounter
0x28 StalledCyclesBackendCounter
0x29 SyncStallCounter
0x2A FloatingPointInstructionCounter
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 159

Chapter13PerformanceMonitorUnit(PMU)
|                     | Table | 13.5–continuedfrompreviouspage |     |     |
| ------------------- | ----- | ------------------------------ | --- | --- |
| Index               |       | Event                          |     |     |
| >=0x2B              |       | Undefinedcurrently             |     |     |
| 13.4 Event Counters |       |                                |     |     |
Eventcountersaredividedintothreegroups: Machineeventcounters,C910extendedsupervisor
eventcounters,andusereventcounters.
MachineeventcountersareshowninTable13.6.
|      | Table13.6: | MachineEventCounterList |         |             |
| ---- | ---------- | ----------------------- | ------- | ----------- |
| Name | Index      | Read/Write              | Initial | Description |
Value
| MCYCLE       | 0xB00 | MRW | 0x0 | cyclecounter                |
| ------------ | ----- | --- | --- | --------------------------- |
| MINSTRET     | 0xB02 | MRW | 0x0 | instructions-retiredcounter |
| MHPMCOUNTER3 | 0xB03 | MRW | 0x0 | performance-monitoring      |
counter
| MHPMCOUNTER4 | 0xB04 | MRW | 0x0 | performance-monitoring |
| ------------ | ----- | --- | --- | ---------------------- |
counter
| ...           | ...   | ... | ... | ...                    |
| ------------- | ----- | --- | --- | ---------------------- |
| MHPMCOUNTER31 | 0xB1F | MRW | 0x0 | performance-monitoring |
counter
UsereventcountersarelistedinTable13.7.
|             | Table13.7: | UserEventCountersList |              |                             |
| ----------- | ---------- | --------------------- | ------------ | --------------------------- |
| Name        | Index      | Read/Write            | InitialValue | Description                 |
| CYCLE       | 0xC00      | URO                   | 0x0          | cyclecounter                |
| TIME        | 0xC01      | URO                   | 0x0          | timer                       |
| INSTRET     | 0xC02      | URO                   | 0x0          | instructions-retiredcounter |
| HPMCOUNTER3 | 0xC03      | URO                   | 0x0          | performance-monitoring      |
counter
| HPMCOUNTER4 | 0xC04 | URO | 0x0 | performance-monitoring |
| ----------- | ----- | --- | --- | ---------------------- |
counter
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 160

Chapter13PerformanceMonitorUnit(PMU)
|              | Table | 13.7–continuedfrompreviouspage |              |                        |
| ------------ | ----- | ------------------------------ | ------------ | ---------------------- |
| Name         | Index | Read/Write                     | InitialValue | Description            |
| ...          | ...   | ...                            | ...          | ...                    |
| HPMCOUNTER31 | 0xC1F | URO                            | 0x0          | performance-monitoring |
counter
|              | Table13.8: | SupervisorEventCountersList |              |                             |
| ------------ | ---------- | --------------------------- | ------------ | --------------------------- |
| Name         | Index      | Read/Write                  | InitialValue | Description                 |
| SCYCLE       | 0x5E0      | SRO                         | 0x0          | cyclecounter                |
| SINSTRET     | 0x5E2      | SRO                         | 0x0          | instructions-retiredcounter |
| SHPMCOUNTER3 | 0x5E3      | SRO                         | 0x0          | performance-monitoring      |
counter
| SHPMCOUNTER4 | 0x5E4 | SRO | 0x0 | performance-monitoring |
| ------------ | ----- | --- | --- | ---------------------- |
counter
| ...           | ...   | ... | ... | ...                    |
| ------------- | ----- | --- | --- | ---------------------- |
| SHPMCOUNTER31 | 0x5FF | SRO | 0x0 | performance-monitoring |
counter
CYCLE, INSTRET and HPMCOUNTERn counters in U-mode are read-only mappings of the corre-
spondingmachineeventcounters.
TheTIMEcounteristheread-onlymappingoftheMTIMEregister
SCYCLE,SINSTRET,andSHPMCOUNTERncountersinS-modearemappingsofcorrespondingma-
chineeventcounters.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 161

Chapter14ProgramInstances
14 Program Instances
Thischaptermainlydescribesmultipleprograminstances,includingMemoryManagementUnit
(MMU)setup,PhysicalMemoryProtection(PMP)setup,cachesetup,multi-corestartup,synchro-
nizationprimitive,PlatformLevelInterruptController(PLIC)setup,andPerformanceMonitoring
Unit(PMU)setup.
14.1 Optimal CPU Performance Configuration
TheoptimalperformanceofC910canbeachievedbythefollowingconfigurations:
• MHCR=0x11FF
• MHINT=0x1EE30C
• MCCR2=0xE249000B
(cid:140) Note
Mccr2 contains RAM latency setting, and users need to set the suitable RAM latency
basedontheactualsituation.
• MXSTATUS=0x638000
• MSMPR=0x1
# mhcr
li x3, 0x11ff
csrs mhcr,x3
#mhint
li x3, 0x1ee30c
csrs mhint,x3
# mxstatus
li x3, 0x638000
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 162

Chapter14ProgramInstances
(continuedfrompreviouspage)
csrs mxstatus,x3
# msmpr
csrsi msmpr,0x1
# mccr2
li x3, 0xe249000b
csrs mccr2,x3
14.2 MMU Setup Instance
/******************************************************************************
* Function: An example of setting C910MP MMU.
* Memory space: Virtual address <-> physical address.
*
* Pagesize 4K：vpn: {vpn2,vpn1,vpn0} <-> ppn: {ppn2,ppn1,ppn0}
* Pagesize 2M：vpn: {vpn2,vpn1} <-> ppn:{ppn2,ppn1}
* Pagesize 1G：vpn: {vnp2} <-> ppn: {ppn2}
*
**********************************************************************************/
/*C910 will invalidate all MMU TLB entries automatically when reset*/
/*You can use sfence.vma to invalid all MMU TLB entries if necessary*/
sfence.vma x0, x0
/* Pagesize 4K：vpn: {vpn2, vpn1, vpn0} <-> ppn: {ppn2, ppn1, ppn0}*/
/* First-level page addr base：PPN (defined in satp)*/
/* Second-level page addr base：BASE2 (self define)*/
/* Third-level page addr base：BASE3 (self define)*/
/* 1. Get first-level page addr base: PPN and vpn*/
/* Get PPN*/
csrr x3, satp
li x4, 0xfffffffffff
and x3, x3, x4
/*2. Config first-level page*/
/*First-level page addr: {PPN, vpn2, 3'b0}, first-level page pte:{ 44'b BASE2, 10
,→'b1} */
/*Get first-level page addr*/
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 163

Chapter14ProgramInstances
(continuedfrompreviouspage)
| slli x3, | x3, 12 |     |     |     |     |
| -------- | ------ | --- | --- | --- | --- |
/*Get vpn2*/
li x4, VPN
li x5, 0x7fc0000
| and x4,      | x4, x5             |        |      |        |     |
| ------------ | ------------------ | ------ | ---- | ------ | --- |
| srli x4,     | x4, 15             |        |      |        |     |
| and x5,      | x3, x4             |        |      |        |     |
| /*Store      | pte at first-level |        | page | addr*/ |     |
| li x6, {44'b | BASE2,             | 10'b1} |      |        |     |
sd x6, 0(x5)
| /*3. Config | second-level |     | page*/ |     |     |
| ----------- | ------------ | --- | ------ | --- | --- |
/*Second-level page addr: {BASE2, vpn1, 3'b0}, second-level page pte:{ 44'b␣
| ,→BASE3, 10'b1}    | */  |      |        |     |     |
| ------------------ | --- | ---- | ------ | --- | --- |
| /*Get second-level |     | page | addr*/ |     |     |
/* VPN1*/
li x4, VPN
li x5, 0x3fe00
| and x4,  | x4, x5 |     |     |     |     |
| -------- | ------ | --- | --- | --- | --- |
| srli x4, | x4, 9  |     |     |     |     |
/*BASE2*/
li x5, BASE2
| srli x5,     | x5, 12              |        |      |       |     |
| ------------ | ------------------- | ------ | ---- | ----- | --- |
| and x5,      | x5, x4              |        |      |       |     |
| /*Store      | pte at second-level |        | page | addr* |     |
| li x6, {44'b | BASE3,              | 10'b1} |      |       |     |
sd x6, 0(x5)
| /*4. Config | third-level |     | page*/ |     |     |
| ----------- | ----------- | --- | ------ | --- | --- |
/*Third-level page addr: {BASE3, vpn0, 3'b0}, third-level page pte:{
| theadflag,         | ppn2, | ppn1, | ppn0,  | 9'b flags,1'b1} | */  |
| ------------------ | ----- | ----- | ------ | --------------- | --- |
| /*Get second-level |       | page  | addr*/ |                 |     |
/* VPN0*/
li x4, VPN
li x5, 0x1ff
| and x4,  | x4, x5 |     |     |     |     |
| -------- | ------ | --- | --- | --- | --- |
| srli x4, | x4, 3  |     |     |     |     |
/*BASE3*/
li x5, BASE3
| srli x5, | x5, 12              |       |       |           |              |
| -------- | ------------------- | ----- | ----- | --------- | ------------ |
| and x5,  | x5, x4              |       |       |           |              |
| /*Store  | pte at second-level |       | page  | addr*/    |              |
| li x6, { | theadflag,          | ppn2, | ppn1, | ppn0, 9'b | flags, 1'b1} |
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 164

Chapter14ProgramInstances
(continuedfrompreviouspage)
sd x6, 0(x5)
| /* Pagesize    | 2M：vpn:     | {vpn2, | vpn1}      | <->      | ppn:    | {ppn2,     | ppn1}*/ |
| -------------- | ----------- | ------ | ---------- | -------- | ------- | ---------- | ------- |
| /*First-level  | page        | addr   | base：PPN   | (defined |         | in satp)*/ |         |
| /*Second-level | page        | addr   | base：BASE2 |          | (self   | define)*/  |         |
| /*1. Get       | first-level | page   | addr       | base:    | PPN and | vpn*/      |         |
/* Get PPN*/
| csrr x3, | satp |     |     |     |     |     |     |
| -------- | ---- | --- | --- | --- | --- | --- | --- |
li x4, 0xfffffffffff
| and x3,     | x3, x4      |     |        |     |     |     |     |
| ----------- | ----------- | --- | ------ | --- | --- | --- | --- |
| /*2. Config | first-level |     | page*/ |     |     |     |     |
/*First-level page addr: {PPN, vpn2, 3'b0}, first-level page pte:{ 44'b
BASE2, 10'b1}*/
| /*Get first-level |        | page addr*/ |     |     |     |     |     |
| ----------------- | ------ | ----------- | --- | --- | --- | --- | --- |
| slli x3,          | x3, 12 |             |     |     |     |     |     |
/*Get vpn2*/
li x4, VPN
li x5, 0x7fc0000
| and x4,      | x4, x5             |        |      |        |     |     |     |
| ------------ | ------------------ | ------ | ---- | ------ | --- | --- | --- |
| srli x4,     | x4, 15             |        |      |        |     |     |     |
| and x5,      | x3, x4             |        |      |        |     |     |     |
| /*Store      | pte at first-level |        | page | addr*/ |     |     |     |
| li x6, {44'b | BASE2,             | 10'b1} |      |        |     |     |     |
sd x6, 0(x5)
| /*3. Config | second-level |     | page*/ |     |     |     |     |
| ----------- | ------------ | --- | ------ | --- | --- | --- | --- |
/*Second-level page addr: {BASE2, vpn1, 3'b0}, second-level page pte:{
| theadflag,         | ppn2, ppn1, | 9'b0, | 9'b    | flags,1'b1} |     | */  |     |
| ------------------ | ----------- | ----- | ------ | ----------- | --- | --- | --- |
| /*Get second-level |             | page  | addr*/ |             |     |     |     |
/*VPN1*/
li x4, VPN
li x5, 0x3fe00
| and x4,  | x4, x5 |     |     |     |     |     |     |
| -------- | ------ | --- | --- | --- | --- | --- | --- |
| srli x4, | x4, 9  |     |     |     |     |     |     |
/*BASE2*/
li x5, BASE2
| srli x5, | x5, 12              |     |      |        |     |     |     |
| -------- | ------------------- | --- | ---- | ------ | --- | --- | --- |
| and x5,  | x5, x4              |     |      |        |     |     |     |
| /*Store  | pte at second-level |     | page | addr*/ |     |     |     |
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 165

Chapter14ProgramInstances
(continuedfrompreviouspage)
| li x6,        | { theadflag,  |      | ppn2,    | ppn1, | 9'b0,         | 9'b flags,1'b1} |            |
| ------------- | ------------- | ---- | -------- | ----- | ------------- | --------------- | ---------- |
| sd x6,        | 0(x5)         |      |          |       |               |                 |            |
| /* Pagesize   | 1G：vpn:       |      | {vpn2}   | <->   | ppn: {ppn2}*/ |                 |            |
| /*First-level | page          | addr | base：PPN |       | (defined      |                 | in satp)*/ |
| /*1. Get      | first-level   |      | page     | addr  | base: PPN     | and             | vpn*/      |
| /* Get        | PPN*/         |      |          |       |               |                 |            |
| csrr x3,      | satp          |      |          |       |               |                 |            |
| li x4,        | 0xfffffffffff |      |          |       |               |                 |            |
| and x3,       | x3, x4        |      |          |       |               |                 |            |
| /*2. Config   | first-level   |      | page*/   |       |               |                 |            |
/*First-level page addr: {PPN, vpn2, 3'b0}, first-level page pte:{
| theadflag,        | ppn2,        | 9'b0,       | 9'b0,  | 9'b   | flags,1'b1}*/ |                 |     |
| ----------------- | ------------ | ----------- | ------ | ----- | ------------- | --------------- | --- |
| /*Get first-level |              | page        | addr*/ |       |               |                 |     |
| slli x3,          | x3, 12       |             |        |       |               |                 |     |
| /*Get vpn2*/      |              |             |        |       |               |                 |     |
| li x4,            | VPN          |             |        |       |               |                 |     |
| li x5,            | 0x7fc0000    |             |        |       |               |                 |     |
| and x4,           | x4, x5       |             |        |       |               |                 |     |
| srli x4,          | x4, 15       |             |        |       |               |                 |     |
| and x5,           | x3, x4       |             |        |       |               |                 |     |
| /*Store           | pte at       | first-level |        | page  | addr*/        |                 |     |
| li x6,            | { theadflag, |             | ppn2,  | 9'b0, | 9'b0,         | 9'b flags,1'b1} |     |
| sd x6,            | 0(x5)        |             |        |       |               |                 |     |
| 14.3 PMP          | Setup        | Instance    |        |       |               |                 |     |
/******************************************************************************
| * Function:         | An instance   |     | of    | setting | C910MP   | PMP. |     |
| ------------------- | ------------- | --- | ----- | ------- | -------- | ---- | --- |
| * 0x0 ~ 0xf0000000, |               | TOR | Mode, | RWX     |          |      |     |
| * 0xf0000000        | ~ 0xf8000000, |     |       | NAPOT   | Mode, RW |      |     |
| *0xfff73000         | ~ 0xfff74000, |     | NAPOT |         | Mode, RW |      |     |
| *0xfffc0000         | ~ 0xfffc2000, |     | NAPOT |         | Mode, RW |      |     |
*The above four regions are configured with different execution permissions.
In addition, it is necessary to configure the PMP accordingly, to prevent the CPU␣
,→from speculatively executing into unsupported address regions, especially in the␣
,→machine mode (M-mode) that has default full execution permissions.
Specifically, after configuring the address regions that require execution␣
,→permissions, the remaining address regions should be configured with no␣
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 166

Chapter14ProgramInstances
(continuedfrompreviouspage)
| ,→permissions, |     | as  | shown | in the | following | instance. |
| -------------- | --- | --- | ----- | ------ | --------- | --------- |
**********************************************************************************/
# pmpaddr0,0x0 ~ 0xf0000000, TOR Mode, read and write and execution permissions
| li x3, | (0xf0000000 |     | >>  | 2)  |     |     |
| ------ | ----------- | --- | --- | --- | --- | --- |
| csrw   | pmpaddr0,   | x3  |     |     |     |     |
# pmpaddr1,0xf0000000 ~ 0xf8000000, NAPOT Mode, read and write permissions
| li x3, | ( 0xf0000000 |     | >>  | 2 | | (0x8000000-1) | >> 3)) |
| ------ | ------------ | --- | --- | --- | ------------- | ------ |
| csrw   | pmpaddr1,    | x3  |     |     |               |        |
# pmpaddr2,0xfff73000 ~ 0xfff74000, NAPOT Mode, read and write permissions
| li x3, | ( 0xfff73000 |     | >>  | 2 | | (0x1000-1) | >> 3)) |
| ------ | ------------ | --- | --- | --- | ---------- | ------ |
| csrw   | pmpaddr2,    | x3  |     |     |            |        |
# pmpaddr3,0xfffc0000 ~ 0xfffc2000, NAPOT Mode, read and write permissions
| li x3, | ( 0xfffc0000 |     | >>  | 2 | | (0x2000-1) | >> 3)) |
| ------ | ------------ | --- | --- | --- | ---------- | ------ |
| csrw   | pmpaddr3,    | x3  |     |     |            |        |
# pmpaddr4,0xf0000000 ~ 0x100000000, NAPOT Mode, no permission
| li x3, | ( 0xf0000000 |     | >>  | 2 | | (0x10000000-1) | >> 3)) |
| ------ | ------------ | --- | --- | --- | -------------- | ------ |
| csrw   | pmpaddr4,    | x3  |     |     |                |        |
# pmpaddr5,0x100000000 ~ 0xffffffffff, TOR Mode, no permission
| li x3, | (0xffffffffff |     |     | >> 2) |     |     |
| ------ | ------------- | --- | --- | ----- | --- | --- |
| csrw   | pmpaddr5,     | x3  |     |       |     |     |
# PMPCFG0, configure execution permissions/modes/lock bits for each table entry.
When the lock bit is set to 1, the table entry is only effective in M-mode.
li x3,0x88989b9b9b8f
| csrw | pmpcfg0, | x3  |     |     |     |     |
| ---- | -------- | --- | --- | --- | --- | --- |
# pmpaddr5,0x100000000 ~ 0xffffffffff, TOR Mode, 0x100000000 <= addr <␣
,→0xffffffffff,
| pmpaddr5 | will | always |     | be hit. |     |     |
| -------- | ---- | ------ | --- | ------- | --- | --- |
However, pmpaddr5 cannot be hit in the address range 0xfffffff000 ~ 0xffffffffff␣
| ,→(the | minimum | PMP | granularity |     | is 4 KB | in C910). |
| ------ | ------- | --- | ----------- | --- | ------- | --------- |
If it is required to mask the last 4K space of the 1T space, another table entry␣
| ,→in NAPOT | mode  | needs    | to  | be  | configured. |     |
| ---------- | ----- | -------- | --- | --- | ----------- | --- |
| 14.4       | Cache | Instance |     |     |             |     |
14.4.1 CacheEnablingInstance
/*C910 will invalidate all I-cache automatically when reset*/
| /*You can    | invalidate |           | I-cache |     | by yourself | if necessary*/ |
| ------------ | ---------- | --------- | ------- | --- | ----------- | -------------- |
| /*Invalidate |            | I-cache*/ |         |     |             |                |
li x3, 0x33
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 167

Chapter14ProgramInstances
(continuedfrompreviouspage)
| csrc mcor, | x3  |     |     |     |
| ---------- | --- | --- | --- | --- |
li x3, 0x11
| csrs mcor, | x3  |     |     |     |
| ---------- | --- | --- | --- | --- |
// You can also use icache instrucitons to replace the invalidate sequence
| // if theadisaee | is  | enabled. |     |     |
| ---------------- | --- | -------- | --- | --- |
//icache.iall
//sync.is
| /*Enable | I-cache*/ |     |     |     |
| -------- | --------- | --- | --- | --- |
li x3, 0x1
| csrs mhcr, | x3  |     |     |     |
| ---------- | --- | --- | --- | --- |
/*C910 will invalidate all D-cache automatically when reset*/
| /*You can    | invalidate | D-cache | by yourself | if necessary*/ |
| ------------ | ---------- | ------- | ----------- | -------------- |
| /*Invalidate | D-cache*/  |         |             |                |
li x3, 0x33
| csrc mcor, | x3  |     |     |     |
| ---------- | --- | --- | --- | --- |
li x3, 0x12
| csrs mcor, | x3  |     |     |     |
| ---------- | --- | --- | --- | --- |
// You can also use dcache instrucitons to replace the invalidate sequence
| // if theadisaee | is  | enabled. |     |     |
| ---------------- | --- | -------- | --- | --- |
// dcache.iall
// sync.is
| /*Enable | D-cache*/ |     |     |     |
| -------- | --------- | --- | --- | --- |
li x3, 0x2
| csrs mhcr, | x3  |     |     |     |
| ---------- | --- | --- | --- | --- |
/*C910 will invalidate all L2 cache automatically when reset*/
| /*You can    | invalidate | L2 by yourself | if necessary*/ |     |
| ------------ | ---------- | -------------- | -------------- | --- |
| /*Invalidate | L2-cache   | if theadisaee  | is enabled*/   |     |
l2cache.iall
sync.is
| /*Enable | L2-cache*/ |     |     |     |
| -------- | ---------- | --- | --- | --- |
li x3, 8
| csrs mccr2, | x3  |     |     |     |
| ----------- | --- | --- | --- | --- |
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 168

Chapter14ProgramInstances
14.4.2 SynchronizationInstancebetweenInstructionCacheandDataCache
CPU0
| sd x3,0(x4) | //  | a new     | instruction |            | defined |        | in x3   |         |     |        |
| ----------- | --- | --------- | ----------- | ---------- | ------- | ------ | ------- | ------- | --- | ------ |
|             | //  | is stored |             | to program |         | memory | address | defined |     | in x4. |
dcache.cval1 r0 // clean the new instruction to the shared L2 cache.
| sync.s |     | //  | ensure | completion |     | of clean | operation. |     |     |     |
| ------ | --- | --- | ------ | ---------- | --- | -------- | ---------- | --- | --- | --- |
// the dcache clean is not necessarily if INSDE is not enabled.
icache.iva r0 // invalid icache according to shareable configuraiton.
| sync.s/fence.i |     | //     | ensure | completion |        | in all    | CPUs.       |     |     |     |
| -------------- | --- | ------ | ------ | ---------- | ------ | --------- | ----------- | --- | --- | --- |
| sd x5,0(x6)    |     | // set | flag   | to         | signal | operation | completion. |     |     |     |
sync.is
| jr x4 // | jmp | to new | code |     |     |     |     |     |     |     |
| -------- | --- | ------ | ---- | --- | --- | --- | --- | --- | --- | --- |
CPU1~CPU3
WAIT_FINISH:
ld x7,0(x6)
| bne x7,x5, |     | WAIT_FINISH |     | // wait | CPU0 | modification |     | finish. |     |     |
| ---------- | --- | ----------- | --- | ------- | ---- | ------------ | --- | ------- | --- | --- |
sync.is
| jr x4  |                                               |     |     | // jmp | to new | code |     |     |     |     |
| ------ | --------------------------------------------- | --- | --- | ------ | ------ | ---- | --- | --- | --- | --- |
| 14.4.3 | SynchronizationInstancebetweenTLBandDataCache |     |     |        |        |      |     |     |     |     |
CPU0
| sd x4,0(x3)          | //    | update | a            | new translation |         | table     | entry        |     |     |     |
| -------------------- | ----- | ------ | ------------ | --------------- | ------- | --------- | ------------ | --- | --- | --- |
| sync.is/fence.i      |       | //     | ensure       | completion      |         | of update | operation.   |     |     |     |
| sfence.vma           | x5,x0 | //     | invalid      | the             | TLB     | by va     |              |     |     |     |
| sync.is/fence.i      |       | //     | ensure       | completion      |         | of TLB    | invalidation |     | and |     |
|                      |       | //     | synchronises |                 | context |           |              |     |     |     |
| 14.5 Synchronization |       |        |              | Primitive       |         | Instance  |              |     |     |     |
CPU0
li x1, 0x1
li x6, 0x0
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 169

Chapter14ProgramInstances
(continuedfrompreviouspage)
| ACQUIRE_LOCK: |              |              |     | //  | (x3)      | is the | lock  | address.  | 0: Free; | 1: Busy. |
| ------------- | ------------ | ------------ | --- | --- | --------- | ------ | ----- | --------- | -------- | -------- |
| lr x4,        | 0(x3)        |              |     | //  | Read      | lock   |       |           |          |          |
| bnez x4,      | ACQUIRE_LOCK |              |     | //  | Try again | if     | the   | lock is   | in use   |          |
| sc x5,        | x1, 0(x3)    |              |     | //  | Attempt   | to     | store | new value |          |          |
| bne x6,       | x5,          | ACQUIRE_LOCK |     | //  | Try again | if     | fail  |           |          |          |
sync.s
| ... |     |     |     | //  | Critical | section |     | code |     |     |
| --- | --- | --- | --- | --- | -------- | ------- | --- | ---- | --- | --- |
CPU1
sync.s/fence.i // Ensure all operations are observed before clearing the lock.
| sd x0,        | 0(x3)           |           | //        | Clear the   | lock.  |         |            |      |     |     |
| ------------- | --------------- | --------- | --------- | ----------- | ------ | ------- | ---------- | ---- | --- | --- |
| 14.6          | PLIC            | Setup     | Instance  |             |        |         |            |      |     |     |
| //Init        | id 1            | machine   | mode      | int for     | hart   | 0       |            |      |     |     |
| /*1.set       | hart            | threshold |           | if needed*/ |        |         |            |      |     |     |
| li x3,        | (plic_base_addr |           |           | + 0x200000) |        | // h0   | mthreshold | addr |     |     |
| li x4,        | 0xa //threshold |           |           | value       |        |         |            |      |     |     |
| sw x4,0x0(x3) |                 | //        | set hart0 | threshold   |        | as 0xa  |            |      |     |     |
| /*2.set       | priority        |           | for int   | id 1*/      |        |         |            |      |     |     |
| li x3,        | (plic_base_addr |           |           | + 0x0)      | // int | id 1    | prio       | addr |     |     |
| li x4,        | 0x1f            | // prio   | value     |             |        |         |            |      |     |     |
| sw x4,0x4(x3) |                 | //        | init id1  | priority    |        | as 0x1f |            |      |     |     |
| /*3.enable    | m-mode          |           | int id1   | to hart*/   |        |         |            |      |     |     |
| li x3,        | (plic_base_addr |           |           | + 0x2000)   | //     | h0 mie0 | addr       |      |     |     |
li x4, 0x2
| sw x4,0x0(x3) |                 | //   | enable    | int id1   | to      | hart0         |     |      |     |     |
| ------------- | --------------- | ---- | --------- | --------- | ------- | ------------- | --- | ---- | --- | --- |
| /*4.set       | ip or           | wait | external  | int*/     |         |               |     |      |     |     |
| /*following   |                 | code | set ip*/  |           |         |               |     |      |     |     |
| li x3,        | (plic_base_addr |      |           | + 0x1000) | //      | h0 mthreshold |     | addr |     |     |
| li x4,        | 0x2 //          | id   | 1 pending |           |         |               |     |      |     |     |
| sw x4,        | 0x0(x3)         | //   | set int   | id1       | pending |               |     |      |     |     |
/*5.core enters interrupt handler, read PLIC_CLAIM and get ID*/
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 170

Chapter14ProgramInstances
(continuedfrompreviouspage)
| /*6.core | takes | interrupt*/ |     |     |     |     |
| -------- | ----- | ----------- | --- | --- | --- | --- |
/*7.core needs to clear external interrupt source if LEVEL(not PULSE)
configured, then core writes ID to PLIC_CLAIM and exits interrupt*/
| 14.7        | PMU | Setup    | Instance   |     |     |     |
| ----------- | --- | -------- | ---------- | --- | --- | --- |
| /*1.inhibit |     | counters | counting*/ |     |     |     |
li x3, 0xffffffff
| csrw mcountinhibit, |         |         | x3       |          |     |                  |
| ------------------- | ------- | ------- | -------- | -------- | --- | ---------------- |
| /*2.C910            | will    | initial | all pmu  | counters |     | when reset*/     |
| /*you can           | initial | pmu     | counters | manually |     | if necessarily*/ |
| csrw mcycle,        |         | x0      |          |          |     |                  |
| csrw minstret,      |         | x0      |          |          |     |                  |
| csrw mhpmcounter3,  |         |         | x0       |          |     |                  |
……
| csrw mhpmcounter31, |     |             | x0  |     |     |     |
| ------------------- | --- | ----------- | --- | --- | --- | --- |
| /*3.configure       |     | mhpmevent*/ |     |     |     |     |
li x3, 0x1
csrw mhpmevent3, x3 // mhpmcounter3 count event: L1 ICache Access Counter
li x3, 0x2
csrw mhpmevent4, x3 // mhpmcounter4 count event: L1 ICache Miss Counter
……
li x3, 0x13
csrw mhpmevent21, x3 // mhpmcounter21 count event: L2 Cache write miss Counter
| /*4. configure |     | mcounteren | and | scounteren*/ |     |     |
| -------------- | --- | ---------- | --- | ------------ | --- | --- |
li x3, 0xffffffff
| csrw mcounteren, |     | x3  | // enable | super | mode | to read hpmcounter |
| ---------------- | --- | --- | --------- | ----- | ---- | ------------------ |
li x3, 0xffffffff
| csrw scounteren,    |     | x3       | // enable | user | mode | to read hpmcounter |
| ------------------- | --- | -------- | --------- | ---- | ---- | ------------------ |
| /*5. enable         |     | counters | to count  | when | you  | want*/             |
| csrw mcountinhibit, |     |          | x0        |      |      |                    |
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 171

Chapter15AppendixAStandardInstructions
15 Appendix A Standard Instructions
C910MPimplementstheRV64IMAFDCinstructionsetarchitecture. Andthefollowingsectionspro-
videspecificdescriptionsofeachinstructionindifferentinstructionsets.
15.1 Appendix A-1 I Instructions
ThissectiondescribestheRISC-VIinstructionsimplementedbyC910indetail. Andtheinstruc-
tionsarelistedinalphabeticorder.
The instructions are 32-bit wide by default. However, in specific cases, the system assembles
someinstructionsinto16-bitcompressedinstructions. Formoreinformationaboutcompressed
instructions,pleaserefertoAppendixA-6CInstructions.
15.1.1 ADD——TheSignedAddInstruction
Syntax:
addrd,rs1,rs2
Operation:
rd←rs1+rs2
ExecutePermission:
MachineMode(M-mode)/SupervisorMode(S-mode)/User-mode(U-mode)
Exception:
None
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 172

Chapter15AppendixAStandardInstructions
15.1.2 ADDI——TheSignedImmediateAddInstruction
Syntax:
addird,rs1,imm12
Operation:
rd←rs1+sign_extend(imm12)
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.3 ADDIW——TheSignedImmediateAddInstructionfortheLower32Bits
Syntax:
addiwrd,rs1,imm12
Operation:
tmp[31:0]←rs1[31:0]+sign_extend(imm12)[31:0]
rd←sign_extend(tmp[31:0])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.4 ADDW——TheSignedAddInstructionfortheLower32Bits
Syntax:
addwrd,rs1,rs2
Operation:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 173

Chapter15AppendixAStandardInstructions
tmp[31:0]←rs1[31:0]+rs2[31:0]
rd←sign_extend(tmp[31:0])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.5 AND——TheBitwiseANDInstruction
Syntax:
andrd,rs1,rs2
Operation:
rd←rs1&rs2
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.6 ANDI——TheImmediateBitwiseANDInstruction
Syntax:
andird,rs1,imm12
Operation:
rd←rs1&sign_extend(imm12)
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 174

Chapter15AppendixAStandardInstructions
Instructionformat:
15.1.7 AUIPC——TheAddUpperImmediatetoPCInstruction
Syntax:
auipcrd,imm20
Operation:
rd←currentpc+sign_extend(imm20<<12)
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.8 BEQ——TheBranch-If-EqualInstruction
Syntax:
beqrs1,rs2,label
Operation:
if(rs1==rs2)
nextpc=currentpc+sign_extend(imm12<<1)
else
nextpc=currentpc+4
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• Theassemblercalculatesimm12basedonthelabel.
• Theinstructionjumprangeis±4KBaddressspace.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 175

Chapter15AppendixAStandardInstructions
Instructionformat:
15.1.9 BGE——TheSignedBranch-If-Greater-than-or-EqualInstruction
Syntax:
bgers1,rs2,label
Operation:
if(rs1>=rs2)
nextpc=currentpc+sign_extend(imm12<<1)
else
nextpc=currentpc+4
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• Theassemblercalculatesimm12basedonthelabel.
• Theinstructionjumprangeis±4KBaddressspace.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 176

Chapter15AppendixAStandardInstructions
15.1.10 BGEU——TheUnsignedBranch-If-Greater-than-or-Equalinstruction
Syntax:
bgeurs1,rs2,label
Operation:
if(rs1>=rs2)
nextpc=currentpc+sign_extend(imm12<<1)
else
nextpc=currentpc+4
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• Theassemblercalculatesimm12basedonthelabel.
• Theinstructionjumprangeis±4KBaddressspace.
Instructionformat:
15.1.11 BLT——TheSignedBranch-If-Less-thanInstruction
Syntax:
bltrs1,rs2,label
Operation:
if(rs1<rs2)
nextpc=currentpc+sign_extend(imm12<<1)
else
nextpc=currentpc+4
ExecutePermission:
M-mode/S-mode/U-mode
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 177

Chapter15AppendixAStandardInstructions
Exception:
None
Notes:
• Theassemblercalculatesimm12basedonthelabel.
• Theinstructionjumprangeis±4KBaddressspace.
Instructionformat:
15.1.12 BLTU——TheUnsignedBranch-If-Less-thanInstruction
Syntax:
blturs1,rs2,label
Operation:
if(rs1<rs2)
nextpc=currentpc+sign_extend(imm12<<1)
else
nextpc=currentpc+4
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• Theassemblercalculatesimm12basedonthelabel.
• Theinstructionjumprangeis±4KBaddressspace.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 178

Chapter15AppendixAStandardInstructions
15.1.13 BNE——TheBranch-If-Not-EqualInstruction
Syntax:
bners1,rs2,label
Operation:
if(rs1!=rs2)
nextpc=currentpc+sign_extend(imm12<<1)
else
nextpc=currentpc+4
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• Theassemblercalculatesimm12basedonthelabel.
• Theinstructionjumprangeis±4KBaddressspace.
Instructionformat:
15.1.14 CSRRC——TheControlandStatusRegisterRead/ClearInstruction
Syntax:
csrrcrd,csr,rs1
Operation:
rd←csr
csr←csr&(~rs1)
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 179

Chapter15AppendixAStandardInstructions
Notes:
• The Control and Status Register (CSR) that can be accessed vary depending on the per-
missionlevels. PleaserefertoCSRchapterforspecificdetails.
• Whenrs1=x0,thisinstructiondoesnotgenerateawriteoperationorcauseanyexceptions
relatedtowritebehavior.
Instructionformat:
15.1.15 CSRRCI——TheCSRRead/ClearImmediateInstruction
Syntax:
csrrcird,csr,imm5
Operation:
rd←csr
csr←csr&~zero_extend(imm5)
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Notes:
• TheCSRscanbeaccessedvarydependingonthepermissionlevels. PleaserefertoCSR
chapterforspecificdetails.
• Whenrs1=x0,thisinstructiondoesnotgenerateawriteoperationorcauseanyexceptions
relatedtowritebehavior.
Instructionformat:
15.1.16 CSRRS——TheCSRRead/SetInstruction
Syntax:
csrrsrd,csr,rs1
Operation:
rd←csr
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 180

Chapter15AppendixAStandardInstructions
csr←csr|rs1
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Notes:
• TheCSRscanbeaccessedvarydependingonthepermissionlevels. PleaserefertoCSR
chapterforspecificdetails.
• Whenrs1=x0,thisinstructiondoesnotgenerateawriteoperationorcauseanyexceptions
relatedtowritebehavior.
Instructionformat:
15.1.17 CSRRSI——TheCSRRead/SetImmediateInstruction
Syntax:
csrrsird,csr,imm5
Operation:
rd←csr
csr←csr|zero_extend(imm5)
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Notes:
• TheCSRscanbeaccessedvarydependingonthepermissionlevels. PleaserefertoCSR
chapterforspecificdetails.
• Whenrs1=x0,thisinstructiondoesnotgenerateawriteoperationorcauseanyexceptions
relatedtowritebehavior.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 181

Chapter15AppendixAStandardInstructions
15.1.18 CSRRW——TheCSRRead/WriteInstruction
Syntax:
csrrwrd,csr,rs1
Operation:
rd←csr
csr←rs1
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Note:
• TheCSRscanbeaccessedvarydependingonthepermissionlevels. PleaserefertoCSR
chapterforspecificdetails.
• Whenrs1=x0,thisinstructiondoesnotgenerateawriteoperationorcauseanyexceptions
relatedtowritebehavior.
Instructionformat:
15.1.19 CSRRWI——TheCSRRead/WriteImmediateInstruction
Syntax:
csrrwird,csr,imm5
Operation:
rd←csr
csr[4:0]←imm5
csr[63:5]←0
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Note:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 182

Chapter15AppendixAStandardInstructions
• TheCSRscanbeaccessedvarydependingonthepermissionlevels. PleaserefertoCSR
chapterforspecificdetails.
• Whenrs1=x0,thisinstructiondoesnotgenerateawriteoperationorcauseanyexceptions
relatedtowritebehavior.
Instructionformat:
15.1.20 EBREAK——TheBreakpointInstruction
Syntax:
ebreak
Operation:
Generatesbreakpointexceptionsorentersthedebugmode.
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Thebreakpointexception
Instructionformat:
15.1.21 ECALL——TheEnvironmentCallInstruction
Syntax:
ecall
Operation:
Generatesenvironmentalexceptions.
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
U-mode,S-mode,M-modeenvironmentcallexceptions
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 183

Chapter15AppendixAStandardInstructions
15.1.22 FENCE——TheMemorySynchronizationInstruction
Syntax:
fenceiorw,iorw
Operation:
Ensuresthatallmemoryorperipheralread/writeinstructionsprecedingthisinstructionareob-
servedbeforeallmemoryorperipheralread/writeinstructionsfollowingthisinstruction.
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Note:
Whenpi=1,so=1,andtheinstructionsyntaxisfencei,o,andsoforth.
Instructionformat:
15.1.23 FENCE.I——TheInstructionStreamSynchronizationInstruction
Syntax:
fence.i
Operation:
Clears the Instruction Cache (I-Cache) to ensure that all the data access results before this in-
structioncanbeaccessedbytheinstruction'ssubsequentfetchoperation.
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 184

Chapter15AppendixAStandardInstructions
15.1.24 JAL——TheInstructionforDirectlyJumpingtoaSubroutine
Syntax:
jalrd,label
Operation:
nextpc←currentpc+sign_extend(imm20<<1)
rd←currectpc+4
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
Theassemblercalculatesimm20basedonthelabel.
Thejumprangeoftheinstructionis±1MBaddressspace.
Instructionformat:
15.1.25 JALR——TheJumpandLinkRegisterInstruction
Syntax:
jalrrd,rs1,imm12
Operation:
nextpc←(rs1+sign_extend(imm12))&64'hfffffffffffffffe
rd←currectpc+4
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 185

Chapter15AppendixAStandardInstructions
• Thejumprangeoftheinstructionistheentire1TBaddressspace,whenM-modeorthe
MemoryManagementUnit(MMU)isdisabled.
• Thejumprangeoftheinstructionistheentire512GBaddressspace,whennone-machine
modeandtheMMUareenabled.
Instructionformat:
15.1.26 LB——TheSignedExtendedByteLoadInstruction
Syntax:
lbrd,imm12(rs1)
Operation:
address←rs1+sign_extend(imm12)
rd←sign_extend(mem[address])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions on load in-
structions
Instructionformat:
15.1.27 LBU——TheunsignedExtendedByteLoadInstruction
Syntax:
lburd,imm12(rs1)
Operation:
address←rs1+sign_extend(imm12)
rd←zero_extend(mem[address])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 186

Chapter15AppendixAStandardInstructions
Unalignedaccessexceptions, accesserrorexceptions, andpageerrorexceptionson
loadinstructions
Instructionformat:
15.1.28 LD——TheDoublewordLoadInstruction
Syntax:
ldrd,imm12(rs1)
Operation:
address←rs1+sign_extend(imm12)
rd←mem[(address+7):address]
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions on load in-
structions
Instructionformat:
15.1.29 LH——TheSignedExtendedHalfwordLoadInstruction
Syntax:
lhrd,imm12(rs1)
Operation:
address←rs1+sign_extend(imm12)
rd←sign_extend(mem[(address+1):address])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions on load in-
structions
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 187

Chapter15AppendixAStandardInstructions
Instructionformat:
15.1.30 LHU——TheUnsignedExtendedHalfwordLoadInstruction
Syntax:
lhurd,imm12(rs1)
Operation:
address←rs1+sign_extend(imm12)
rd←zero_extend(mem[(address+1):address])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions on load in-
structions
Instructionformat:
15.1.31 LUI——TheUpperImmediateLoadInstruction
Syntax:
luird,imm20
Operation:
rd←sign_extend(imm20<<12)
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 188

Chapter15AppendixAStandardInstructions
15.1.32 LW——TheSignedExtendedWordLoadInstruction
Syntax:
lwrd,imm12(rs1)
Operation:
address←rs1+sign_extend(imm12)
rd←sign_extend(mem[(address+3):address])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions on load in-
structions
Instructionformat:
15.1.33 LWU——TheUnsignedExtendedWordLoadInstruction
Syntax:
lwurd,imm12(rs1)
Operation:
address←rs1+sign_extend(imm12)
rd←zero_extend(mem[(address+3):address])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions on load in-
structions
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 189

Chapter15AppendixAStandardInstructions
15.1.34 MRET——TheExceptionReturnInstructioninM-mode
Syntax:
mret
Operation:
nextpc←mepc
mstatus.mie←mstatus.mpie
mstatus.mpie←1
ExecutePermission:
M-mode
Exception:
Theillegalinstructionexception
Instructionformat:
15.1.35 OR——TheBitwiseORInstruction
Syntax:
orrd,rs1,rs2
Operation:
rd←rs1|rs2
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 190

Chapter15AppendixAStandardInstructions
15.1.36 ORI——TheImmediateBitwiseORInstruction
Syntax:
orird,rs1,imm12
Operation:
rd←rs1|sign_extend(imm12)
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.37 SB——TheByteStoreInstruction
Syntax:
sbrs2,imm12(rs1)
Operation:
address←rs1+sign_extend(imm12)
mem[:address]←rs2[7:0]
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions on load in-
structions
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 191

Chapter15AppendixAStandardInstructions
15.1.38 SD——TheDoublewordStoreInstruction
Syntax:
sdrs2,imm12(rs1)
Operation:
address←rs1+sign_extend(imm12)
mem[(address+7):address]←rs2
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions on load in-
structions
Instructionformat:
15.1.39 SFENCE.VMA——TheVirtualMemorySynchronizationInstruction
Syntax:
sfence.vmars1,rs2
Operation:
Invalidationandsynchronizationoperationsofvirtualmemory
ExecutePermission:
M-mode/S-mode
Exception:
Theillegalinstructionexception
Notes:
• mstatus.tvm=1,runningthisinstructioninS-modewilltriggeranillegalinstructionexcep-
tion.
• rs1: thevirtualaddress,rs2: theAddressSpaceIdentifier(ASID).
– rs1=x0,rs2=x0,allTLBentriesareinvalidated.
– rs1!=x0, rs2=x0, all TLB entries that hit the virtual address specified by rs1 are invali-
dated.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 192

Chapter15AppendixAStandardInstructions
– rs1=x0,rs2!=x0,allTLBentriesthathittheprocessIDspecifiedbyrs2areinvalidated.
– rs1!=x0, rs2!=x0, all TLB entries that hit the virtual address specified by rs1 and the
processIDspecifiedbyrs2areinvalidated.
Instructionformat:
15.1.40 SH——TheHalfwordStoreInstruction
Syntax:
shrs2,imm12(rs1)
Operation:
address←rs1+sign_extend(imm12)
mem[(address+1):address]←rs2[15:0]
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions on load in-
structions
Instructionformat:
15.1.41 SLL——TheLogicalLeftShiftinstruction
Syntax:
sllrd,rs1,rs2
Operation:
rd←rs1<<rs2[5:0]
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 193

Chapter15AppendixAStandardInstructions
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.42 SLLI——TheImmediateLogicalLeftShiftInstruction
Syntax:
sllird,rs1,shamt6
Operation:
rd←rs1<<shamt6
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.43 SLLIW——TheImmediateLogicalLeftShiftInstructionontheLower32Bits
Syntax:
slliwrd,rs1,shamt5
Operation:
tmp[31:0]←(rs1[31:0]<<shamt5)[31:0]
rd←sign_extend(tmp[31:0])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 194

Chapter15AppendixAStandardInstructions
15.1.44 SLLW——TheLogicalLeftShiftInstructionontheLower32Bits
Syntax:
sllwrd,rs1,rs2
Operation:
tmp[31:0]←(rs1[31:0]<<rs2[4:0])[31:0]
rd←sign_extend(tmp[31:0])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.45 SLT——TheSignedSet-If-Less-thanInstruction
Syntax:
sltrd,rs1,rs2
Operation:
if(rs1<rs2)
rd←1
else
rd←0
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 195

Chapter15AppendixAStandardInstructions
15.1.46 SLTI——TheSignedSet-If-Less-than-ImmediateInstruction
Syntax:
sltird,rs1,imm12
Operation:
if(rs1<sign_extend(imm12))
rd←1
else
rd←0
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.47 SLTIU——TheUnsignedSet-If-Less-than-ImmediateInstruction
Syntax:
sltiurd,rs1,imm12
Operation:
if(rs1<sign_extend(imm12))
rd←1
else
rd←0
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 196

Chapter15AppendixAStandardInstructions
15.1.48 SLTU——TheUnsignedSet-If-Less-thanInstruction
Syntax:
slturd,rs1,rs2
Operation:
if(rs1<rs2)
rd←1
else
rd←0
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.49 SRA——TheArithmeticRightShiftInstruction
Syntax:
srard,rs1,rs2
Operation:
rd←rs1>>rs2[5:0]
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 197

Chapter15AppendixAStandardInstructions
15.1.50 SRAI——TheImmediateArithmeticRightShiftInstruction
Syntax:
sraird,rs1,shamt6
Operation:
rd←rs1>>shamt6
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.51 SRAIW——TheImmediateArithmeticRightShiftInstructionontheLower32Bits
Syntax:
sraiwrd,rs1,shamt5
Operation:
tmp[31:0]←(rs1[31:0]>>shamt5)[31:0]
rd←sign_extend(tmp[31:0])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.52 SRAW——TheArithmeticRightShiftInstructionontheLower32Bits
Syntax:
srawrd,rs1,rs2
Operation:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 198

Chapter15AppendixAStandardInstructions
tmp←(rs1[31:0]>>rs2[4:0])[31:0]
rd←sign_extend(tmp)
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.53 SRET——TheExceptionReturnInstructioninS-mode
Syntax:
sret
Operation:
nextpc←sepc
sstatus.sie←sstatus.spie
sstatus.spie←1
ExecutePermission:
S-mode
Exception:
Theillegalinstructionexception
Instructionformat:
15.1.54 SRL——TheLogicalRightShiftInstruction
Syntax:
srlrd,rs1,rs2
Operation:
rd←rs1>>rs2[5:0]
ExecutePermission:
M-mode/S-mode/U-mode
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 199

Chapter15AppendixAStandardInstructions
Exception:
None
Instructionformat:
15.1.55 SRLI——TheImmediateLogicalRightShiftInstruction
Syntax:
srlird,rs1,shamt6
Operation:
rd←rs1>>shamt6
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.56 SRLIW——TheImmediateLogicalRightShiftInstructionontheLower32Bits
Syntax:
srliwrd,rs1,shamt5
Operation:
tmp[31:0]←(rs1[31:0]>>shamt5)[31:0]
rd←sign_extend(tmp[31:0])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 200

Chapter15AppendixAStandardInstructions
15.1.57 SRLW——TheLogicalRightShiftInstructionontheLower32Bits
Syntax:
srlwrd,rs1,rs2
Operation:
tmp←(rs1[31:0]>>rs2[4:0])[31:0]
rd←sign_extend(tmp)
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.58 SUB——TheSignedSubtractInstruction
Syntax:
subrd,rs1,rs2
Operation:
rd←rs1-rs2
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.59 SUBW——TheSignedSubtractInstructionontheLower32Bits
Syntax:
subwrd,rs1,rs2
Operation:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 201

Chapter15AppendixAStandardInstructions
tmp[31:0]←rs1[31:0]-rs2[31:0]
rd←sign_extend(tmp[31:0])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.60 SW——TheWordStoreInstruction
Syntax:
swrs2,imm12(rs1)
Operation:
address←rs1+sign_extend(imm12)
mem[(address+3):address]←rs2[31:0]
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions on load in-
structions
Instructionformat:
15.1.61 WFI——TheInstructionforEnteringtheLowPowerMode
Syntax:
wfi
Operation:
Theprocessorenters alow-power mode, during whichthe CPUclock isdisabled andmost pe-
ripheralclocksarealsodisabled.
ExecutePermission:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 202

Chapter15AppendixAStandardInstructions
M-mode/S-mode
Exception:
None
Instructionformat:
15.1.62 XOR——TheBitwiseXORInstruction
Syntax:
xorrd,rs1,rs2
Operation:
rd←rs1^rs2
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.1.63 XORI——TheImmediateBitwiseXORInstruction
Syntax:
xorird,rs1,imm12
Operation:
rd←rs1&sign_extend(imm12)
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 203

Chapter15AppendixAStandardInstructions
15.2 Appendix A-2 M Instructions
ThissectiondescribestheRISC-VMinstructionsetimplementedbyC910. Andinstructionsofthis
sectionare32-bitwideandlistedinalphabeticorder.
15.2.1 DIV——TheSignedDivideInstruction
Syntax
divrd,rs1,rs2
Operation:
rd←rs1/rs2
Executepermission:
Machinemode(M-mode)/Supervisormode(S-mode)/Usermode(U-mode)
Exception:
None
Notes:
• Whenthedivisoris0,thedivisionresultis0xffffffffffffffff.
• Whenoverflowoccurs,thedivisionresultis0x8000000000000000.
Instructionformat:
15.2.2 DIVU——TheUnsignedDivideInstruction
Syntax
divurd,rs1,rs2
Operation:
rd←rs1/rs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Note:
Whenthedivisoris0,thedivisionresultis0xffffffffffffffff.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 204

Chapter15AppendixAStandardInstructions
Instructionformat:
15.2.3 DIVUW——TheUnsignedDivideInstructionontheLower32Bits
Syntax
divuwrd,rs1,rs2
Operation:
tmp[31:0]←(rs1[31:0]/rs2[31:0])[31:0]
rd←sign_extend(tmp[31:0])
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Note:
Whenthedivisoris0,thedivisionresultis0xffffffffffffffff.
Instructionformat:
15.2.4 DIVW——TheSignedDivideInstructionontheLower32Bits
Syntax
divwrd,rs1,rs2
Operation:
tmp[31:0]←(rs1[31:0]/rs2[31:0])[31:0]
rd←sign_extend(tmp[31:0])
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• Whenthedivisoris0,thedivisionresultis0xffffffffffffffff.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 205

Chapter15AppendixAStandardInstructions
• Whenoverflowoccurs,thedivisionresultis0x8000000000000000.
Instructionformat:
15.2.5 MUL——TheSignedMultiplyInstruction
Syntax
mulrd,rs1,rs2
Operation:
rd←(rs1*rs2)[63:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.2.6 MULH——TheSignedMultiplyUpperBitExtractionInstruction
Syntax
mulhrd,rs1,rs2
Operation:
rd←(rs1*rs2)[127:64]
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 206

Chapter15AppendixAStandardInstructions
15.2.7 MULHSU——TheSignedandUnsignedMultiplyUpperBitExtractionInstruction
Syntax
mulhsurd,rs1,rs2
Operation:
rd←(rs1*rs2)[127:64]
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Note:
rs1: Signednumber;rs2: Unsignednumber
Instructionformat:
15.2.8 MULHU——TheUnsignedMultiplyUpperBitExtractionInstruction
Syntax
mulhurd,rs1,rs2
Operation:
rd←(rs1*rs2)[127:64]
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 207

Chapter15AppendixAStandardInstructions
15.2.9 MULW——TheSignedMultiplyInstructionontheLower32Bits
Syntax
mulwrd,rs1,rs2
Operation:
tmp←(rs1[31:0]*rs2[31:0])[31:0]
rd←sign_extend(tmp[31:0])
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.2.10 REM——TheSignedRemainderInstruction
Syntax
remrd,rs1,rs2
Operation:
rd←rs1%rs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• Whenthedivisoris0,theremainderoperationresultisthedividend.
• Whenoverflowoccurs,theremainderoperationresultis0x0.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 208

Chapter15AppendixAStandardInstructions
15.2.11 REMU——TheUnsignedRemainderDivideInstruction
Syntax
remurd,rs1,rs2
Operation:
rd←rs1%rs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Note:
Whenthedivisoris0,theremainderoperationresultisthedividend.
Instructionformat:
15.2.12 REMUW——TheUnsignedRemainderDivideInstructionontheLower32Bits
Syntax
remwrd,rs1,rs2
Operation:
tmp←(rs1[31:0]%rs2[31:0])[31:0]
rd←sign_extend(tmp)
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Note:
Whenthedivisoris0,theremainderistheresultofsign-extendingthesignbitofthedividendat
bitposition[31].
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 209

Chapter15AppendixAStandardInstructions
15.2.13 REMW——TheSignedRemainderDivideInstructionontheLower32Bits
Syntax
remwrd,rs1,rs2
Operation:
tmp[31:0]←(rs1[31:0]%rs2[31:0])[31:0]
rd←sign_extend(tmp[31:0])
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• When the divisor is 0, the remainder is the result of sign-extending the sign bit of the
dividendatbitposition[31].
• Whenoverflowoccurs,theremainderoperationresultis0x0.
Instructionformat:
15.3 Appendix A-3 A Instructions
This section describes the RISC-V A instructions implemented by C910. The instructions of the
sectionare32-bitwideandlistedinalphabeticorder.
15.3.1 AMOADD.D——TheAtomicAddInstruction
Syntax:
amoadd.d.aqrlrd,rs2,(rs1)
Operation:
rd←mem[rs1+7: rs1]
mem[rs1+7:rs1]←mem[rs1+7:rs1]+rs2
Executepermission:
MachineMode(M-mode)/SupervisorMode(S-mode)/UserMode(U-mode)
Exception:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 210

Chapter15AppendixAStandardInstructions
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamoadd.drd,rs2,(rs1).
• aq=0,rl=1: Thecorrespondingassemblerinstructionisamoadd.d.rlrd,rs2,(rs1). TheRe-
sultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbeforethe
instructionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is amoadd.d.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
• aq=1,rl=1: The corresponding assembler instruction is amoadd.d.aqrl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed, and all memory access instructions after the instruction can
beexecutedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.2 AMOADD.W——TheAtomicAddInstructionontheLower32Bits
Syntax:
amoadd.w.aqrlrd,rs2,(rs1)
Operation:
rd←sign_extend(mem[rs1+3: rs1])
mem[rs1+3:rs1]←mem[rs1+3:rs1]+rs2[31:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 211

Chapter15AppendixAStandardInstructions
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamoadd.wrd,rs2,(rs1).
• aq=0,rl=1: The corresponding assembler instruction is amoadd.w.rl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
theinstructionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is amoadd.w.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
• aq=1,rl=1: Thecorrespondingassemblerinstructionisamoadd.w.aqrlrd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed, and all memory access instructions after the instruction can
beexecutedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.3 AMOAND.D——TheAtomicBitwiseANDInstruction
Syntax:
amoand.d.aqrlrd,rs2,(rs1)
Operation:
rd←mem[rs1+7: rs1]
mem[rs1+7:rs1]←mem[rs1+7:rs1]&rs2
Executepermission: M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 212

Chapter15AppendixAStandardInstructions
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamoand.drd,rs2,(rs1).
• aq=0,rl=1: Thecorrespondingassemblerinstructionisamoand.d.rlrd,rs2,(rs1). TheRe-
sultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbeforethe
instructionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is amoand.d.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
• aq=1,rl=1: The corresponding assembler instruction is amoand.d.aqrl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed, and all memory access instructions after the instruction can
beexecutedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.4 AMOAND.W——TheAtomicBitwiseANDInstructionontheLower32Bits
Syntax:
amoand.w.aqrlrd,rs2,(rs1)
Operation:
rd←sign_extend(mem[rs1+3: rs1])
mem[rs1+3:rs1]←mem[rs1+3:rs1]&rs2[31:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 213

Chapter15AppendixAStandardInstructions
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamoand.wrd,rs2,(rs1).
• aq=0,rl=1: The corresponding assembler instruction is amoand.w.rl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
theinstructionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is amoand.w.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
• aq=1,rl=1: Thecorrespondingassemblerinstructionisamoand.w.aqrlrd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed, and all memory access instructions after the instruction can
beexecutedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.5 AMOMAX.D——TheAtomicSignedMaximumInstructionontheLower32Bits
Syntax:
amomax.d.aqrlrd,rs2,(rs1)
Operation:
rd←mem[rs1+7: rs1]
mem[rs1+7:rs1]←max(mem[rs1+7:rs1],rs2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamomax.drd,rs2,(rs1).
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 214

Chapter15AppendixAStandardInstructions
• aq=0,rl=1: The corresponding assembler instruction is amomax.d.rl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
theinstructionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is amomax.d.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
• aq=1,rl=1: Thecorrespondingassemblerinstructionisamomax.d.aqrlrd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed, and all memory access instructions after the instruction can
beexecutedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.6 AMOMAX.W——TheAtomicSignedMaximumInstructionontheLower32Bits
Syntax:
amomax.w.aqrlrd,rs2,(rs1)
Operation:
rd←sign_extend(mem[rs1+3: rs1])
mem[rs1+3:rs1]←max(mem[rs1+3:rs1],rs2[31:0])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamomax.wrd,rs2,(rs1).
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 215

Chapter15AppendixAStandardInstructions
• aq=0,rl=1: The corresponding assembler instruction is amomax.w.rl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
theinstructionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is amomax.w.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
• aq=1,rl=1: Thecorrespondingassemblerinstructionisamomax.w.aqrlrd,rs2,(rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed, and all memory access instructions after the instruction can
beexecutedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.7 AMOMAXU.D——TheAtomicUnsignedMaximumInstruction
Syntax:
amomaxu.d.aqrlrd,rs2,(rs1)
Operation:
rd←mem[rs1+7: rs1]
mem[rs1+7:rs1]←max(mem[rs1+7:rs1],rs2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamomaxu.drd,rs2,(rs1).
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 216

Chapter15AppendixAStandardInstructions
• aq=0,rl=1: The corresponding assembler instruction is amomaxu.d.rl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
theinstructionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is amomaxu.d.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
• aq=1,rl=1: Thecorrespondingassemblerinstructionisamomaxu.d.aqrlrd,rs2,(rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed, and all memory access instructions after the instruction can
beexecutedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.8 AMOMAXU.W——TheAtomicUnsignedMaximumInstructionontheLower32Bits
Syntax:
amomaxu.w.aqrlrd,rs2,(rs1)
Operation:
rd←zero_extend(mem[rs1+3: rs1])
mem[rs1+3:rs1]←max(mem[rs1+3:rs1],rs2[31:0])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamomaxu.wrd,rs2,(rs1).
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 217

Chapter15AppendixAStandardInstructions
• aq=0,rl=1: The corresponding assembler instruction is amomaxu.w.rl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
theinstructionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is amomaxu.w.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
• aq=1,rl=1: Thecorrespondingassemblerinstructionisamomaxu.w.aqrlrd,rs2,(rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed. All memory access instructions after the instruction can be
executedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.9 AMOMIN.D——TheAtomicSignedMinimumInstruction
Syntax:
amomin.d.aqrlrd,rs2,(rs1)
Operation:
rd←mem[rs1+7: rs1]
mem[rs1+7:rs1]←min(mem[rs1+7:rs1],rs2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamomin.drd,rs2,(rs1).
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 218

Chapter15AppendixAStandardInstructions
• aq=0,rl=1: Thecorrespondingassemblerinstructionisamomin.d.rlrd,rs2,(rs1). TheRe-
sultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbeforethe
instructionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is amomin.d.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
• aq=1,rl=1: The corresponding assembler instruction is amomin.d.aqrl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed. All memory access instructions after the instruction can be
executedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.10 AMOMIN.W——TheAtomicSignedMinimumInstructionontheLower32Bits
Syntax:
amomin.w.aqrlrd,rs2,(rs1)
Operation:
rd←sign_extend(mem[rs1+3: rs1])
mem[rs1+3:rs1]←min(mem[rs1+3:rs1],rs2[31:0])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamomin.wrd,rs2,(rs1).
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 219

Chapter15AppendixAStandardInstructions
• aq=0,rl=1: Thecorrespondingassemblerinstructionisamomin.w.rlrd,rs2,(rs1). TheRe-
sultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbeforethe
instructionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is amomin.w.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
• aq=1,rl=1: The corresponding assembler instruction isamomin.w.aqrl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed. All memory access instructions after the instruction can be
executedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.11 AMOMINU.D——TheAtomicUnsignedMinimumInstruction
Syntax:
amominu.d.aqrlrd,rs2,(rs1)
Operation:
rd←mem[rs1+7: rs1]
mem[rs1+7:rs1]←min(mem[rs1+7:rs1],rs2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamominu.drd,rs2,(rs1).
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 220

Chapter15AppendixAStandardInstructions
• aq=0,rl=1: The corresponding assembler instruction is amominu.d.rl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
theinstructionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is amominu.d.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
• aq=1,rl=1: Thecorrespondingassemblerinstructionisamominu.d.aqrlrd,rs2,(rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed. All memory access instructions after the instruction can be
executedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.12 AMOMINU.W——TheAtomicUnsignedMinimumInstructionontheLower32Bits
Syntax:
amominu.w.aqrlrd,rs2,(rs1)
Operation:
rd←sign_extend(mem[rs1+3: rs1])
mem[rs1+3:rs1]←min(mem[rs1+3:rs1],rs2[31:0])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamominu.wrd,rs2,(rs1).
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 221

Chapter15AppendixAStandardInstructions
• aq=0,rl=1: The corresponding assembler instruction is amominu.w.rl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
theinstructionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is amominu.w.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
• aq=1,rl=1: Thecorrespondingassemblerinstructionisamominu.w.aqrlrd,rs2,(rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed. All memory access instructions after the instruction can be
executedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.13 AMOOR.D——TheAtomicBitwiseORInstruction
Syntax:
amoor.d.aqrlrd,rs2,(rs1)
Operation:
rd←mem[rs1+7: rs1]
mem[rs1+7:rs1]←mem[rs1+7:rs1]|rs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamoor.drd,rs2,(rs1).
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 222

Chapter15AppendixAStandardInstructions
• aq=0,rl=1: The corresponding assembler instruction is amoor.d.rl rd, rs2, (rs1). The Re-
sultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbeforethe
instructionisexecuted.
• aq=1,rl=0: Thecorrespondingassemblerinstructionisamoor.d.aqrd,rs2,(rs1). Allmem-
ory access instructions after the instruction can be executed only after execution of the
instructioniscompleted.
• aq=1,rl=1: The corresponding assembler instruction is amoor.d.aqrl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed. All memory access instructions after the instruction can be
executedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.14 AMOOR.W——TheAtomicBitwiseORInstructionontheLower32Bits
Syntax:
amoor.w.aqrlrd,rs2,(rs1)
Operation:
rd←sign_extend(mem[rs1+3: rs1])
mem[rs1+3:rs1]←mem[rs1+3:rs1]|rs2[31:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamoor.wrd,rs2,(rs1).
• aq=0,rl=1: The corresponding assembler instruction is amoor.w.rl rd, rs2, (rs1). The Re-
sultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbeforethe
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 223

Chapter15AppendixAStandardInstructions
instructionisexecuted.
• aq=1,rl=0: Thecorrespondingassemblerinstructionisamoor.w.aqrd,rs2,(rs1). Allmem-
ory access instructions after the instruction can be executed only after execution of the
instructioniscompleted.
• aq=1,rl=1: The corresponding assembler instruction is amoor.w.aqrl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed. All memory access instructions after the instruction can be
executedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.15 AMOSWAP.D——TheAtomicSwapInstruction
Syntax:
amoswap.d.aqrlrd,rs2,(rs1)
Operation:
rd←mem[rs1+7: rs1]
mem[rs1+7:rs1]←rs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag: None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamoswap.drd,rs2,(rs1).
• aq=0,rl=1: The corresponding assembler instruction is amoswap.d.rl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
theinstructionisexecuted.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 224

Chapter15AppendixAStandardInstructions
• aq=1,rl=0: The corresponding assembler instruction is amoswap.d.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
• aq=1,rl=1: Thecorrespondingassemblerinstructionisamoswap.d.aqrlrd,rs2,(rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed. All memory access instructions after the instruction can be
executedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.16 AMOSWAP.W——TheAtomicSwapInstructionontheLower32Bits
Syntax:
amoswap.w.aqrlrd,rs2,(rs1)
Operation:
rd←sign_extend(mem[rs1+3: rs1])
mem[rs1+3:rs1]←rs2[31:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag: None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamoswap.wrd,rs2,(rs1).
• aq=0,rl=1: The corresponding assembler instruction is amoswap.w.rl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
theinstructionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is amoswap.w.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 225

Chapter15AppendixAStandardInstructions
• aq=1,rl=1: Thecorrespondingassemblerinstructionisamoswap.w.aqrlrd,rs2,(rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed. All memory access instructions after the instruction can be
executedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.17 AMOXOR.D——TheAtomicBitwiseXORInstruction
Syntax:
amoxor.d.aqrlrd,rs2,(rs1)
Operation:
rd←mem[rs1+7: rs1]
mem[rs1+7:rs1]←mem[rs1+7:rs1]^rs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamoxor.drd,rs2,(rs1).
• aq=0,rl=1: Thecorrespondingassemblerinstructionisamoxor.d.rlrd,rs2, (rs1). TheRe-
sultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbeforethe
instructionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is amoxor.d.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
• aq=1,rl=1: The corresponding assembler instruction is amoxor.d.aqrl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 226

Chapter15AppendixAStandardInstructions
the instruction is executed. All memory access instructions after the instruction can be
executedonlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.3.18 AMOXOR.W——TheAtomicBitwiseXORInstructionontheLower32Bits
Syntax:
amoxor.w.aqrlrd,rs2,(rs1)
Operation:
rd←sign_extend(mem[rs1+3: rs1])
mem[rs1+3:rs1]←mem[rs1+3:rs1]^rs2[31:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionisamoxor.wrd,rs2,(rs1).
• aq=0,rl=1: Thecorrespondingassemblerinstructionisamoxor.w.rlrd,rs2,(rs1). TheRe-
sultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbeforethe
instructionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is amoxor.w.aq rd, rs2, (rs1). All
memoryaccessinstructionsaftertheinstructioncanbeexecutedonlyafterexecutionof
theinstructioniscompleted.
• aq=1,rl=1: The corresponding assembler instruction is amoxor.w.aqrl rd, rs2, (rs1). The
Resultsofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbefore
the instruction is executed. All memory access instructions after the instruction can be
executedonlyafterexecutionoftheinstructioniscompleted.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 227

Chapter15AppendixAStandardInstructions
Instructionformat:
15.3.19 LR.D——TheDoublewordLoad-reservedInstruction
Syntax:
lr.d.aqrlrd,(rs1)
Operation:
rd←mem[rs1+7: rs1]
mem[rs1+7:rs1]isreserved
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionislr.drd,(rs1).
• aq=0,rl=1: The corresponding assembler instruction is lr.d.rl rd, (rs1). The Results of all
memoryaccessinstructionsbeforetheinstructionmustbeobservedbeforetheinstruction
isexecuted.
• aq=1,rl=0: Thecorrespondingassemblerinstructionislr.d.aqrd,(rs1). Allmemoryaccess
instructionsaftertheinstructioncanbeexecutedonlyafterexecutionoftheinstructionis
completed.
• aq=1,rl=1: Thecorrespondingassemblerinstructionislr.d.aqrlrd,(rs1). TheResultsofall
memoryaccessinstructionsbeforetheinstructionmustbeobservedbeforetheinstruction
is executed. All memory access instructions after the instruction can be executed only
afterexecutionoftheinstructioniscompleted.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 228

Chapter15AppendixAStandardInstructions
15.3.20 LR.W——TheWordLoad-reservedInstruction
Syntax:
lr.w.aqrlrd,(rs1)
Operation:
rd←sign_extend(mem[rs1+3: rs1])
mem[rs1+3:rs1]isreserved
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionislr.wrd,(rs1).
• aq=0,rl=1: The corresponding assembler instruction is lr.w.rl rd, (rs1). The Results of all
memoryaccessinstructionsbeforetheinstructionmustbeobservedbeforetheinstruction
isexecuted.
• aq=1,rl=0: Thecorrespondingassemblerinstructionislr.w.aqrd,(rs1). Allmemoryaccess
instructionsaftertheinstructioncanbeexecutedonlyafterexecutionoftheinstructionis
completed.
• aq=1,rl=1: Thecorrespondingassemblerinstructionislr.w.aqrlrd,(rs1). TheResultsofall
memoryaccessinstructionsbeforetheinstructionmustbeobservedbeforetheinstruction
is executed. All memory access instructions after the instruction can be executed only
afterexecutionoftheinstructioniscompleted.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 229

Chapter15AppendixAStandardInstructions
15.3.21 SC.D——TheDoublewordConditionalStoreInstruction
Syntax:
sc.d.aqrlrd,rs2,(rs1)
Operation:
If(mem[rs1+7:rs1]isreserved)
mem[rs1+7: rs1]←rs2
rd←0
else
rd←1
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionissc.drd,rs2,(rs1).
• aq=0,rl=1: The corresponding assembler instruction is sc.d.rl rd, rs2, (rs1). The Results
ofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbeforethein-
structionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is sc.d.aq rd, rs2, (rs1). All memory
access instructions after the instruction can be executed only after execution of the in-
structioniscompleted.
• aq=1,rl=1: Thecorrespondingassemblerinstructionissc.d.aqrlrd,rs2,(rs1). TheResults
ofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbeforethein-
structionisexecuted. Allmemoryaccessinstructionsaftertheinstructioncanbeexecuted
onlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 230

Chapter15AppendixAStandardInstructions
15.3.22 SC.W——TheWordConditionalStoreInstruction
Syntax:
sc.w.aqrlrd,rs2,(rs1)
Operation:
if(mem[rs1+3:rs1]isreserved)
mem[rs1+3:rs1]←rs2[31:0]
rd←0
else
rd←1
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unalignedaccessexceptions,accesserrorexceptions,andpageerrorexceptionsonatomicin-
structions.
Affectedflag:
None
Notes:
Theaqandrlbitsdeterminetheexecutionorderofmemoryaccessinstructionsinthepre-order
andpost-orderrespectively:
• aq=0,rl=0: Thecorrespondingassemblerinstructionissc.wrd,rs2,(rs1).
• aq=0,rl=1: The corresponding assembler instruction is sc.w.rl rd, rs2, (rs1). The Results
ofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbeforethein-
structionisexecuted.
• aq=1,rl=0: The corresponding assembler instruction is sc.w.aq rd, rs2, (rs1). All mem-
ory access instructions after the instruction can be executed only after execution of the
instructioniscompleted.
• aq=1,rl=1: Thecorrespondingassemblerinstructionissc.w.aqrlrd,rs2,(rs1). TheResults
ofallmemoryaccessinstructionsbeforetheinstructionmustbeobservedbeforethein-
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 231

Chapter15AppendixAStandardInstructions
structionisexecuted. Allmemoryaccessinstructionsaftertheinstructioncanbeexecuted
onlyafterexecutionoftheinstructioniscompleted.
Instructionformat:
15.4 Appendix A-4 F instructions
ThissectiondescribestheRISC-VFinstructionsimplementedbyC910. Theinstructionsare32-bit
wideandlistedinalphabeticorder.
Forsingle-precisionfloating-pointinstructions,iftheupper32bitsinthesourceregisterarenot
all1,thesingle-precisiondataistreatedasqNaN.
When mstatus.fs==2'b00, executing any instruction listed in this section will trigger an illegal
instruction exception; When mstatus.fs != 2'b00, mstatus.fs will be set to 2'b11 after executing
anyinstructioninthissection.
15.4.1 FADD.S——TheSingle-PrecisionFloating-pointAddInstruction
Syntax:
fadd.sfd,fs1,fs2,rm
Operation:
frd←fs1+fs2
Executepermission:
MachineMode(M-mode)/SupervisorMode(S-mode)/UserMode(U-mode)
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/OF/NX
Notes:
rmdeterminestheround-offmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfadd.sfd,fs1,fs2,rne.
• 3'b001: Rounds to zero. And the corresponding assembler instruction is fadd.s fd,
fs1,fs2,rtz.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 232

Chapter15AppendixAStandardInstructions
• 3'b010: Rounds to negative infinity. And the corresponding assembler instruction is
fadd.sfd,fs1,fs2,rdn.
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblerinstructionisfadd.s
fd,fs1,fs2,rup.
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfadd.sfd,fs1,fs2,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamically rounds off based on the rm bit of the Floating-point Control and
StatusRegister(fcsr). Andthecorrespondingassemblerinstructionisfadd.sfd,fs1,fs2.
Instructionformat:
15.4.2 FCLASS.S——TheSingle-PrecisionFloating-PointClassificationInstruction
Syntax:
fclass.srd,fs1
Operation:
if(fs1=-inf)
rd←64'h1
if(fs1=-norm)
rd←64'h2
if(fs1=-subnorm)
rd←64'h4
if(fs1=-zero)
rd←64'h8
if(fs1=+zero)
rd←64'h10
if(fs1=+subnorm)
rd←64'h20
if(fs1=+norm)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 233

Chapter15AppendixAStandardInstructions
rd←64'h40
if(fs1=+Inf)
rd←64'h80
if(fs1=sNaN)
rd←64'h100
if(fs1=qNaN)
rd←64'h200
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
None
Instructionformat:
15.4.3 FCVT.L.S——The Instruction to Convert a Single-Precision Floating-Point Number to a
SignedLongInteger
Syntax:
fcvt.l.srd,fs1,rm
Operation:
rd←single_convert_to_signed_long(fs1)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/NX
Notes:
rmdeterminestheround-offmode:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 234

Chapter15AppendixAStandardInstructions
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfcvt.l.srd,fs1,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblerinstructionisfcvt.l.srd,fs1,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembler instruction is
fcvt.l.srd,fs1,rdn.
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblerinstructionisfcvt.l.s
rd,fs1,rup.
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfcvt.l.srd,fs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fcvt.l.srd,fs1.
Instructionformat:
15.4.4 FCVT.LU.S——TheInstructiontoConvertaSingle-PrecisionFloating-PointNumbertoa
UnsignedLongInteger
Syntax:
fcvt.lu.srd,fs1,rm
Operation:
rd←single_convert_to_unsigned_long(fs1)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/NX
Notes:
rmdeterminestheround-offmode:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 235

Chapter15AppendixAStandardInstructions
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfcvt.lu.srd,fs1,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblerinstructionisfcvt.lu.srd,fs1,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembler instruction is
fcvt.lu.srd,fs1,rdn.
• 3'b011: Rounds to positive infinity. And the corresponding assembler instruction is
fcvt.lu.srd,fs1,rup.
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfcvt.lu.srd,fs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fcvt.lu.srd,fs1.
Instructionformat:
15.4.5 FCVT.S.L——The Instruction to Convert a Signed Long Integer to a Single-Precision
Floating-PointNumber
Syntax:
fcvt.s.lfd,rs1,rm
Operation:
fd←signed_long_convert_to_single(fs1)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNX
Notes:
rmdeterminestheround-offmode:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 236

Chapter15AppendixAStandardInstructions
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfcvt.s.lfd,rs1,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblerinstructionisfcvt.s.lfd,rs1,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembler instruction is
fcvt.s.lfd,fs1,rdn.
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblerinstructionisfcvt.s.l
fd,fs1,rup.
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfcvt.s.lfd,fs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fcvt.s.lfd,fs1.
Instructionformat:
15.4.6 FCVT.S.LU——TheInstructiontoConvertaUnsignedLongIntegertoaSingle-Precision
Floating-PointNumber
Syntax:
fcvt.s.lfd,fs1,rm
Operation:
fd←unsigned_long_convert_to_single_fp(fs1)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNX
Notes:
rmdeterminestheround-offmode:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 237

Chapter15AppendixAStandardInstructions
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfcvt.s.lufd,fs1,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblerinstructionisfcvt.s.lufd,fs1,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembler instruction is
fcvt.s.lufd,fs1,rdn.
• 3'b011: Rounds to positive infinity. And the corresponding assembler instruction is
fcvt.s.lufd,fs1,rup.
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfcvt.s.lufd,fs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fcvt.s.lufd,fs1.
Instructionformat:
15.4.7 FCVT.S.W——TheInstructiontoConvertaSignedIntegertoaSingle-PrecisionFloating-
PointNumber
Syntax:
fcvt.s.wfd,rs1,rm
Operation:
fd←signed_int_convert_to_single(fs1)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNX
Notes:
rmdeterminestheround-offmode:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 238

Chapter15AppendixAStandardInstructions
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfcvt.s.wfd,rs1,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblerinstructionisfcvt.s.wfd,rs1,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembler instruction is
fcvt.s.wfd,rs1,rdn.
• 3'b011: Rounds to positive infinity. And the corresponding assembler instruction is
fcvt.s.wfd,rs1,rup.
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfcvt.s.wfd,rs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fcvt.s.wfd,rs1.
Instructionformat:
15.4.8 FCVT.S.WU——The Instruction to Convert a Unsigned Integer to a Single-Precision
Floating-PointNumber
Syntax:
fcvt.s.wufd,rs1,rm
Operation:
fd←unsigned_int_convert_to_single_fp(fs1)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNX
Notes:
rmdeterminestheround-offmode:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 239

Chapter15AppendixAStandardInstructions
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfcvt.s.wufd,rs1,rne.
• 3'b001: Rounds to zero. And the corresponding assembler instruction is fcvt.s.wu
fd,rs1,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembler instruction is
fcvt.s.wufd,rs1,rdn.
• 3'b011: Rounds to positive infinity. And the corresponding assembler instruction is
fcvt.s.wufd,rs1,rup.
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfcvt.s.wufd,rs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fcvt.s.wufd,rs1.
Instructionformat:
15.4.9 FCVT.W.S——TheInstructiontoConvertaSingle-PrecisionFloating-PointNumbertoa
SignedInteger
Syntax:
fcvt.w.srd,fs1,rm
Operation:
tmp←single_convert_to_signed_int(fs1)
rd←sign_extend(tmp)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/NX
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 240

Chapter15AppendixAStandardInstructions
Notes:
rmdeterminestheround-offmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfcvt.w.srd,fs1,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblerinstructionisfcvt.w.srd,fs1,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembler instruction is
fcvt.w.srd,fs1,rdn.
• 3'b011: Rounds to positive infinity. And the corresponding assembler instruction is
fcvt.w.srd,fs1,rup.
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfcvt.w.srd,fs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fcvt.w.srd,fs1.
Instructionformat:
15.4.10 FCVT.WU.S——TheInstructiontoConvertaSingle-PrecisionFloating-PointNumberto
aUnsignedInteger
Syntax:
fcvt.wu.srd,fs1,rm
Operation:
tmp←single_convert_to_unsigned_int(fs1)
rd←sign_extend(tmp)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 241

Chapter15AppendixAStandardInstructions
Floating-pointstatusbitNV/NX
Notes:
rmdeterminestheround-offmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfcvt.wu.srd,fs1,rne.
• 3'b001: Rounds to zero. And the corresponding assembler instruction is fcvt.wu.s
rd,fs1,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembler instruction is
fcvt.wu.srd,fs1,rdn.
• 3'b011: Rounds to positive infinity. And the corresponding assembler instruction is
fcvt.wu.srd,fs1,rup.
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfcvt.wu.srd,fs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fcvt.wu.srd,fs1.
Instructionformat:
15.4.11 FDIV.S——TheSingle-PrecisionFloating-PointDivideinstruction
Syntax:
fdiv.sfd,fs1,fs2,rm
Operation:
fd←fs1/fs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 242

Chapter15AppendixAStandardInstructions
Floating-pointstatusbitNV/DZ/OF/UF/NX
Notes:
rmdeterminestheround-offmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfdiv.sfs1,fs2,rne.
• 3'b001: Rounds to zero. And the corresponding assembler instruction is fdiv.s fd
fs1,fs2,rtz.
• 3'b010: Roundstonegativeinfinity. Andthecorrespondingassemblerinstructionisfdiv.s
fd,fs1,fs2,rdn.
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblerinstructionisfdiv.s
fd,fs1,fs2,rup.
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfdiv.sfd,fs1,fs2,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fdiv.sfd,fs1,fs2.
Instructionformat:
15.4.12 FEQ.S——TheSingle-PrecisionFloating-PointCompareEqualInstruction
Syntax:
feq.srd,fs1,fs2
Operation:
if(fs1==fs2)
rd←1
else
rd←0
Executepermission:
M-mode/S-mode/U-mode
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 243

Chapter15AppendixAStandardInstructions
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV
Instructionformat:
15.4.13 FLE.S——The Single-Precision Floating-Point Compare Less than or Equal to Instruc-
tion
Syntax:
fle.srd,fs1,fs2
Operation:
if(fs1<=fs2)
rd←1
else
rd←0
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV
Instructionformat:
15.4.14 FLT.S——TheSingle-PrecisionFloating-PointCompareLessthanInstruction
Syntax:
flt.srd,fs1,fs2
Operation:
if(fs1<fs2)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 244

Chapter15AppendixAStandardInstructions
rd←1
else
rd←0
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV
Instructionformat:
15.4.15 FLW——TheSingle-PrecisionFloating-PointLoadInstruction
Syntax:
flwfd,imm12(rs1)
Operation:
address←rs1+sign_extend(imm12)
fd[31:0]←mem[(address+3):address]
fd[63:32]←32'hffffffff
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions on load in-
structions,andillegalinstructionexceptions.
Affectedflag:
None
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 245

Chapter15AppendixAStandardInstructions
15.4.16 FMADD.S——TheSingle-PrecisionFloating-PointMultiply-AddInstruction
Syntax:
fmadd.sfd,fs1,fs2,fs3,rm
Operation:
rd←fs1*fs2+fs3
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/OF/UF/IX
Notes:
rmdeterminestheround-offmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfmadd.sfd,fs1,fs2,fs3,rne.
• 3'b001: Rounds to zero. And the corresponding assembler instruction is fmadd.s fd,fs1,
fs2,fs3,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembler instruction is
fmadd.sfd,fs1,fs2,fs3,rdn.
• 3'b011: Rounds to positive infinity. And the corresponding assembler instruction is
fmadd.sfd,fs1,fs2,fs3,rup.
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfmadd.sfd,fs1,fs2,fs3,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fmadd.sfd,fs1,fs2,fs3.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 246

Chapter15AppendixAStandardInstructions
15.4.17 FMAX.S——TheSingle-PrecisionFloating-PointMaxmumInstruction
Syntax:
fmax.sfd,fs1,fs2
Operation:
if(fs1>=fs2)
fd←fs1
else
fd←fs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV
Instructionformat:
15.4.18 FMIN.S——TheSingle-PrecisionFloating-PointMinimumInstruction
Syntax:
fmin.sfd,fs1,fs2
Operation:
if(fs1>=fs2)
fd←fs2
else
fd←fs1
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 247

Chapter15AppendixAStandardInstructions
Affectedflag:
Floating-pointstatusbitNV
Instructionformat:
15.4.19 FMSUB.S——TheSingle-PrecisionFloating-PointMultiply-SubtractInstruction
Syntax:
fmsub.sfd,fs1,fs2,fs3,rm
Operation:
fd←fs1*fs2-fs3
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/OF/UF/IX
Notes:
rmdeterminestheround-offmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfmsub.sfd,fs1,fs2,fs3,rne.
• 3'b001: Rounds to zero. And the corresponding assembler instruction is fmsub.s fd,fs1,
fs2,fs3,rtz.
• 3'b010: Roundstonegativeinfinity. Andthecorrespondingassemblerinstructionisfm-
sub.sfd,fs1,fs2,fs3,rdn.
• 3'b011: Rounds to positive infinity. And the corresponding assembler instruction is fm-
sub.sfd,fs1,fs2,fs3,rup.
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfmsub.sfd,fs1,fs2,fs3,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 248

Chapter15AppendixAStandardInstructions
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fmsub.sfd,fs1,fs2,fs3.
Instructionformat:
15.4.20 FMUL.S——TheSingle-PrecisionFloating-PointMultiplyInstruction
Syntax:
fmul.sfd,fs1,fs2,rm
Operation:
fd←fs1*fs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/OF/UF/NX
Notes:
rmdeterminestheround-offmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfmul.sfd,fs1,fs2,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblerinstructionisfmul.sfd,fs1,fs2,
rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembler instruction is
fmul.sfd,fs1,fs2,rdn.
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblerinstructionisfmul.s
fd,fs1,fs2,rup.
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfmul.sfd,fs1,fs2,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 249

Chapter15AppendixAStandardInstructions
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fmul.sfs1,fs2.
Instructionformat:
15.4.21 FMV.W.X——TheSingle-PrecisionFloating-PointWriteTransferInstruction
Syntax:
fmv.w.xfd,rs1
Operation:
fd[31:0]←rs[31:0]
fd[63:32]←32'hffffffff
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
None
Instructionformat:
15.4.22 FMV.X.W——TheSingle-PrecisionFloating-PointRegisterReadTransferInstruction
Syntax:
fmv.x.wrd,fs1
Operation:
tmp[31:0]←fs1[31:0]
rd←sign_extend(tmp[31:0])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 250

Chapter15AppendixAStandardInstructions
Theillegalinstructionexception
Affectedflag:
None
Instructionformat:
15.4.23 FNMADD.S——TheSingle-PrecisionFloating-PointNegate-(Multiply-Add)Instruction
Syntax:
fnmadd.sfd,fs1,fs2,fs3,rm
Operation:
fd←-(fs1*fs2+fs3)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/OF/UF/IX
Notes:
rmdeterminestheround-offmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfnmadd.sfd,fs1,fs2,fs3,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblerinstructionisfnmadd.sfd,fs1,
fs2,fs3,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembler instruction is fn-
madd.sfd,fs1,fs2,fs3,rdn.
• 3'b011: Rounds to positive infinity. And the corresponding assembler instruction is fn-
madd.sfd,fs1,fs2,fs3,rup.
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfnmadd.sfd,fs1,fs2,fs3,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 251

Chapter15AppendixAStandardInstructions
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fnmadd.sfd,fs1,fs2,fs3.
Instructionformat:
15.4.24 FNMSUB.S——The Single-Precision Floating-Point Negate-(Multiply-Subtract) In-
struction
Syntax:
fnmsub.sfd,fs1,fs2,fs3,rm
Operation:
fd←-(fs1*fs2-fs3)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/OF/UF/IX
Notes:
rmdeterminestheround-offmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfnmsub.sfd,fs1,fs2,fs3,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblerinstructionisfnmsub.sfd,fs1,
fs2,fs3,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembler instruction is fn-
msub.sfd,fs1,fs2,fs3,rdn.
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblerinstructionisfnm-
sub.sfd,fs1,fs2,fs3,rup.
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfnmsub.sfd,fs1,fs2,fs3,rmm.
• 3'b101: Thiscodeisreservedandnotused.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 252

Chapter15AppendixAStandardInstructions
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fnmsub.sfd,fs1,fs2,fs3.
Instructionformat:
15.4.25 FSGNJ.S——TheSingle-PrecisionFloating-PointSign-InjectionInstruction
Syntax:
fsgnj.sfd,fs1,fs2
Operation:
fd[30:0]←fs1[30:0]
fd[31]←fs2[31]
fd[63:32]←32'hffffffff
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
None
Instructionformat:
15.4.26 FSGNJN.S——TheSingle-PrecisionFloating-PointNegateSign-InjectionInstruction
Syntax:
fsgnjn.sfd,fs1,fs2
Operation:
fd[30:0]←fs1[30:0]
fd[31]←! fs2[31]
fd[63:32]←32'hffffffff
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 253

Chapter15AppendixAStandardInstructions
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
None
Instructionformat:
15.4.27 FSGNJX.S——TheSingle-PrecisionFloating-PointXORSign-InjectionInstruction
Syntax:
fsgnjx.sfd,fs1,fs2
Operation:
fd[30:0]←fs1[30:0]
fd[31]←fs1[31]^fs2[31]
fd[63:32]←32'hffffffff
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
None
Instructionformat:
15.4.28 FSQRT.S——TheSingle-PrecisionFloating-PointSquare-RootInstruction
Syntax:
fsqrt.sfd,fs1,rm
Operation:
fd←sqrt(fs1)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 254

Chapter15AppendixAStandardInstructions
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/NX
Notes:
rmdeterminestheround-offmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfsqrt.sfd,fs1,rne
• 3'b001: Roundstozero. Andthecorrespondingassemblerinstructionisfsqrt.sfd,fs1,rtz
• 3'b010: Rounds to negative infinity. And the corresponding assembler instruction is
fsqrt.sfd,fs1,rdn
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblerinstructionisfsqrt.s
fd,fs1,rup
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfsqrt.sfd,fs1,rmm
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fsqrt.sfd,fs1.
Instructionformat:
15.4.29 FSUB.S——TheSingle-PrecisionFloating-PointSubtractInstruction
Syntax:
fsub.sfd,fs1,fs2,rm
Operation:
fd←fs1-fs2
Executepermission:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 255

Chapter15AppendixAStandardInstructions
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/OF/NX
Notes:
rmdeterminestheround-offmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblerinstruc-
tionisfsub.fd,fs1,fs2,rne
• 3'b001: Rounds to zero. And the corresponding assembler instruction is fsub.s fd,
fs1,fs2,rtz
• 3'b010: Roundstonegativeinfinity. Andthecorrespondingassemblerinstructionisfsub.s
fd,fs1,fs2,rdn
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblerinstructionisfsub.s
fd,fs1,fs2,rup
• 3'b100: Roundstothenearestlargervalue. Andthecorrespondingassemblerinstruction
isfsub.sfd,fs1,fs2,rmm
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamicrounding,whichdeterminestheroundingmodebasedonthermbitin
the floating-point control register fcsr. And the corresponding assembler instruction is
fsub.sfd,fs1,fs2.
Instructionformat:
15.4.30 FSW——TheSingle-PrecisionFloating-PointStoreInstruction
Syntax:
fswfs2,imm12(rs1)
Operation:
address←rs1+sign_extend(imm12)
mem[(address+31):address]←fs2[31:0]
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 256

Chapter15AppendixAStandardInstructions
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions on load in-
structions.
Instructionformat:
15.5 Appendix A-6 C Instructions
ThissectiondescribestheRISC-VCinstructionsimplementedbyC910. Andtheinstructionsare
16-bitwide,listedinalphabeticorder.
15.5.1 C.ADD——TheSignedAddInstruction
Syntax:
c.addrd,rs2
Operation:
rd←rs1+rs2
Executepermission:
MachineMode(M-mode)/SupervisorMode(S-mode)/User-mode(U-mode)
Exception:
None
Notes:
• rs1=rd!=0
• rs2! =0
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 257

Chapter15AppendixAStandardInstructions
15.5.2 C.ADDI——TheSignedImmediateAddInstruction
Syntax:
c.addird,nzimm6
Operation:
rd←rs1+sign_extend(nzimm6)
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• rs1=rd!=0
• nzimm6!=0
Instructionformat:
15.5.3 C.ADDIW——TheSignedImmediateAddInstructionontheLower32Bits
Syntax:
c.addiwrd,imm6
Operation:
tmp[31:0]←rs1[31:0]+sign_extend(imm6)
rd←sign_extend(tmp[31:0])
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Note:
rs1=rd!=0
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 258

Chapter15AppendixAStandardInstructions
15.5.4 C.ADDI4SPN——TheInstructiontoAddImmediateScaledby4toStackPointer
Syntax:
c.addi4spnrd,sp,nzuimm8<<2
Operation:
rd←sp+zero_extend(nzuimm8<<2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• nzuimm8!=0
• rdcoderepresentsthefollowingregisters:
– 000x8
– 001x9
– 010x10
– 011x11
– 100x12
– 101x13
– 110x14
– 111x15
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 259

Chapter15AppendixAStandardInstructions
15.5.5 C.ADDI16SP——TheInstructiontoAddImmediateScaledby16toStackPointer
Syntax:
c.addi16spsp,nzuimm6<<4
Operation:
sp←sp+sign_extend(nzuimm6<<4)
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.5.6 C.ADDW——TheSignedAddInstructionontheLower32Bits
Syntax:
c.addwrd,rs2
Operation:
tmp[31:0]←rs1[31:0]+rs2[31:0]
rd←sign_extend(tmp[31:0])
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• rs1=rd
• rd/rs1,rs2coderepresentsthefollowingregisters:
– 000: x8
– 001: x9
– 010: x10
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 260

Chapter15AppendixAStandardInstructions
– 011: x11
– 100: x12
– 101: x13
– 110: x14
– 111: x15
Instructionformat:
15.5.7 C.AND——TheBitwiseANDInstruction
Syntax:
c.andrd,rs2
Operation:
rd←rs1&rs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• rs1=rd
• rd/rs1,rs2coderepresentthefollowingregisters:
– 000: x8
– 001: x9
– 010: x10
– 011: x11
– 100: x12
– 101: x13
– 110: x14
– 111: x15
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 261

Chapter15AppendixAStandardInstructions
15.5.8 C.ANDI——TheImmediateBitwiseANDInstruction
Syntax:
c.andird,imm6
Operation:
rd←rs1&sign_extend(imm6)
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• rs1=rd
• rd/rs1coderepresentsthefollowingregisters:
– 000: x8
– 001: x9
– 010: x10
– 011: x11
– 100: x12
– 101: x13
– 110: x14
– 111: x15
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 262

Chapter15AppendixAStandardInstructions
15.5.9 C.BEQZ——TheBranch-if-equal-to-zeroInstruction
Syntax:
c.beqzrs1,label
Operation:
if(rs1==0)
nextpc=currentpc+imm8<<1;
else
nextpc=currentpc+2;
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• rs1coderepresentsthefollowingregisters:
– 000: x8
– 001: x9
– 010: x10
– 011: x11
– 100: x12
– 101: x13
– 110: x14
– 111: x15
• Theassemblercalculatesimm8basedonthelabel.
• Theinstructionjumprangeis±256Baddressspace.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 263

Chapter15AppendixAStandardInstructions
15.5.10 C.BNEZ——TheBranch-if-not-equal-to-zeroInstruction
Syntax:
c.bnezrs1,label
Operation:
if(rs1!=0)
nextpc=currentpc+imm8<<1;
else
nextpc=currentpc+2;
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• rs1coderepresentsthefollowingregisters:
– 000: x8
– 001: x9
– 010: x10
– 011: x11
– 100: x12
– 101: x13
– 110: x14
– 111: x15
• Theassemblercalculatesimm12basedonthelabel.
• Theinstructionjumprangeis±256Baddressspace.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 264

Chapter15AppendixAStandardInstructions
15.5.11 C.EBREAK——TheBreakpointInstruction
Syntax:
c.ebreak
Operation:
Generatesbreakpointexceptionsorentersthedebugmode.
Executepermission:
M-mode/S-mode/U-mode
Exception:
Breakpointexceptions
Instructionformat:
15.5.12 C.FLD——TheFloating-pointDoublewordLoadInstruction
Syntax:
c.fldfd,uimm5<<3(rs1)
Operation:
address←rs1+zero_extend(uimm5<<3)
fd←mem[address+7:address]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions.
Notes:
• rs1coderepresentsthefollowingregisters:
– 000: x8
– 001: x9
– 010: x10
– 011: x11
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 265

Chapter15AppendixAStandardInstructions
– 100: x12
– 101: x13
– 110: x14
– 111: x15
• fdcoderepresentsthefollowingregisters:
– 000: f8
– 001: f9
– 010: f10
– 011: f11
– 100: f12
– 101: f13
– 110: f14
– 111: f15
Instructionformat:
15.5.13 C.FLDSP——TheInstructiontoLoadFloating-pointDoublewordfromaStack
Syntax:
c.fldspfd,uimm6<<3(sp)
Operation:
address←sp+zero_extend(uimm6<<3)
fd←mem[address+7:address]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 266

Chapter15AppendixAStandardInstructions
15.5.14 C.FSD——TheInstructiontoStoreDoublewordintoaStack
Syntax:
c.fsdfs2,uimm5<<3(rs1)
Operation:
address←rs1+zero_extend(uimm5<<3)
mem[address+7:address]←fs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions.
Notes:
• fs1coderepresentsthefollowingregisters:
– 000: x8
– 001: x9
– 010: x10
– 011: x11
– 100: x12
– 101: x13
– 110: x14
– 111: x15
• rs2coderepresentsthefollowingregisters:
– 000: f8
– 001: f9
– 010: f10
– 011: f11
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 267

Chapter15AppendixAStandardInstructions
– 100: f12
– 101: f13
– 110: f14
– 111: f15
Instructionformat:
15.5.15 C.FSDSP——TheInstructiontoStoreFloating-pointDoublewordintoaStack
Syntax:
c.fsdspfs2,uimm6<<3(sp)
Operation:
address←sp+zero_extend(uimm6<<3)
mem[address+7:address]←fs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions.
Instructionformat:
15.5.16 C.J——TheUnconditionalJumpInstruction
Syntax:
c.jlabel
Operation:
nextpc←currentpc+sign_extend(imm<<1);
Executepermission:
M-mode/S-mode/U-mode
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 268

Chapter15AppendixAStandardInstructions
Exception:
None
Notes:
• Theassemblercalculatesimm11basedonthelabel.
• Theinstructionjumprangeis±2KBaddressspace.
Instructionformat:
15.5.17 C.JALR——TheJumpandLinkRegisterInstruction
Syntax:
c.jalrrs1
Operation:
nextpc←rs1;
x1←currentpc+2;
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
rs1!=0
• WhenMMUisenabled,thejumprangeistheentire512GBaddressspace.
• WhenMMUisdisabled,thejumprangeistheentire1TBaddressspace.
Instructionformat:
15.5.18 C.JR——TheJumptoRegisterInstruction
Syntax:
c.jrrs1
Operation:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 269

Chapter15AppendixAStandardInstructions
nextpc=rs1;
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
rs1!=0
• WhenMMUisenabled,thejumprangeistheentire512GBaddressspace.
• WhenMMUisdisabled,thejumprangeistheentire1TBaddressspace.
Instructionformat:
15.5.19 C.LD——TheDoublewordLoadInstruction
Syntax:
c.ldrd,uimm5<<3(rs1)
Operation:
address←rs1+zero_extend(uimm5<<3)
rd←mem[address+7:address]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions.
Notes:
rs1/rdcoderepresentsthefollowingregisters:
• 000: x8
• 001: x9
• 010: x10
• 011: x11
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 270

Chapter15AppendixAStandardInstructions
• 100: x12
• 101: x13
• 110: x14
• 111: x15
Instructionformat:
15.5.20 C.LDSP——TheInstructiontoLoadDoublewordfromStack
Syntax:
c.ldsprd,uimm6<<3(sp)
Operation:
address←sp+zero_extend(uimm6<<3)
rd←mem[address+7:address]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions.
Note:
rd!=0
Instructionformat:
15.5.21 C.LI——TheImmediateTransferInstruction
Syntax:
c.lird,imm6
Operation:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 271

Chapter15AppendixAStandardInstructions
rd←sign_extend(imm6)
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Note:
rd!=0
Instructionformat:
15.5.22 C.LUI——TheUpperBitImmediateTransferInstruction
Syntax:
c.luird,nzimm6
Operation:
rd←sign_extend(nzimm6<<12)
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
rd!=0
Nzimm6!=0
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 272

Chapter15AppendixAStandardInstructions
15.5.23 C.LW——TheWordLoadInstruction
Syntax:
c.lwrd,uimm5<<2(rs1)
Operation:
address←rs1+zero_extend(uimm5<<2)
tmp[31:0]←mem[address+3:address]
rd←sign_extend(tmp[31:0])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions.
Notes:
rs1/rdcoderepresentsthefollowingregisters:
• 000: x8
• 001: x9
• 010: x10
• 011: x11
• 100: x12
• 101: x13
• 110: x14
• 111: x15
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 273

Chapter15AppendixAStandardInstructions
15.5.24 C.LWSP——TheLoadWordfromStackPointerInstruction
Syntax:
c.lwsprd,uimm6<<2(sp)
Operation:
address←sp+zero_extend(uimm6<<2)
tmp[31:0]←mem[address+3:address]
rd←sign_extend(tmp[31:0])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions.
Note:
rd!=0
Instructionformat:
15.5.25 C.MV——TheDataTransferInstruction
Syntax:
c.mvrd,rs2
Operation:
rd←rs2;
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Note:
rs2!=0,rd!=0
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 274

Chapter15AppendixAStandardInstructions
Instructionformat:
15.5.26 C.NOP——TheNo-operationInstruction
Syntax:
c.nop
Operation:
Nooperation
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Instructionformat:
15.5.27 C.OR——TheBitwiseORInstruction
Syntax:
c.orrd,rs2
Operation:
rd←rs1|rs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• rs1=rd
• rd/rs1coderepresentsthefollowingregisters:
– 000: x8
– 001: x9
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 275

Chapter15AppendixAStandardInstructions
– 010: x10
– 011: x11
– 100: x12
– 101: x13
– 110: x14
– 111: x15
Instructionformat:
15.5.28 C.SD——TheDoublewordStoreInstruction
Syntax:
c.sdrs2,uimm5<<3(rs1)
Operation:
address←rs1+zero_extend(uimm5<<3)
mem[address+7:address]←rs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions.
Notes:
rs1/rdcoderepresentsthefollowingregisters:
• 000: x8
• 001: x9
• 010: x10
• 011: x11
• 100: x12
• 101: x13
• 110: x14
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 276

Chapter15AppendixAStandardInstructions
• 111: x15
Instructionformat:
15.5.29 C.SDSP——TheInstructiontoStoreDoublewordintoaStack
Syntax:
c.fsdsprs2,uimm6<<3(sp)
Operation:
address←sp+zero_extend(uimm6<<3)
mem[address+7:address]←rs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions.
Instructionformat:
15.5.30 C.SLLI——TheImmediateLogicalLeftShiftInstruction
Syntax:
c.sllird,nzuimm6
Operation:
rd←rs1<<nzuimm6
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 277

Chapter15AppendixAStandardInstructions
• rs1==rd
• rd/rs1!=0,nzuimm6!=0
Instructionformat:
15.5.31 C.SRAI——TheImmediateArithmeticRightShiftInstruction
Syntax:
c.sraird,nzuimm6
Operation:
rd←rs1>>nzuimm6
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• nzuimm6!=0
• rs1==rd
• rs1/rdcoderepresentsthefollowingregisters:
– 000: x8
– 001: x9
– 010: x10
– 011: x11
– 100: x12
– 101: x13
– 110: x14
– 111: x15
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 278

Chapter15AppendixAStandardInstructions
15.5.32 C.SRLI——TheImmediateLogicalRightShiftInstruction
Syntax:
c.srlird,nzuimm6
Operation:
rd←rs1>>nzuimm6
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• nzuimm6!=0
• rs1==rd
• rs1/rdcoderepresentsthefollowingregisters:
– 000: x8
– 001: x9
– 010: x10
– 011: x11
– 100: x12
– 101: x13
– 110: x14
– 111: x15
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 279

Chapter15AppendixAStandardInstructions
15.5.33 C.SW——TheWordStoreInstruction
Syntax:
c.swrs2,uimm5<<2(rs1)
Operation:
address←rs1+zero_extend(uimm5<<2)
mem[address+3:address]←rs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions.
Notes:
rs1/rs2coderepresentsthefollowingregisters:
• 000: x8
• 001: x9
• 010: x10
• 011: x11
• 100: x12
• 101: x13
• 110: x14
• 111: x15
Instructionformat:
15.5.34 C.SWSP——AStoreWordtoStackPointerInstruction
Syntax:
c.swsprs2,uimm6<<2(sp)
Operation:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 280

Chapter15AppendixAStandardInstructions
address←sp+zero_extend(uimm6<<2)
mem[address+3:address]←rs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions.
Instructionformat:
15.5.35 C.SUB——TheSignedSubtractInstruction
Syntax:
c.subrd,rs2
Operation:
rd←rs1-rs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• rs1==rd
• rs1/rdcoderepresentsthefollowingregisters:
– 000: x8
– 001: x9
– 010: x10
– 011: x11
– 100: x12
– 101: x13
– 110: x14
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 281

Chapter15AppendixAStandardInstructions
– 111: x15
Instructionformat:
15.5.36 C.SUBW——TheSignedSubtractInstructionontheLower32Bits
Syntax:
c.subwrd,rs2
Operation:
tmp[31:0]←rs1[31:0]-rs2[31:0]
rd←sign_extend(tmp)
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• rs1==rd
• rs1/rdcoderepresentsthefollowingregisters:
– 000: x8
– 001: x9
– 010: x10
– 011: x11
– 100: x12
– 101: x13
– 110: x14
– 111: x15
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 282

Chapter15AppendixAStandardInstructions
C.XOR——TheBitwiseXORInstruction
15.5.37
Syntax:
c.xorrd,rs2
Operation:
rd←rs1^rs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
None
Notes:
• rs1==rd
• rs1/rdcoderepresentsthefollowingregisters:
| – 000: x8  |     |     |     |
| ---------- | --- | --- | --- |
| – 001: x9  |     |     |     |
| – 010: x10 |     |     |     |
| – 011: x11 |     |     |     |
| – 100: x12 |     |     |     |
| – 101: x13 |     |     |     |
| – 110: x14 |     |     |     |
| – 111: x15 |     |     |     |
Instructionformat:
| 15.6 Appendix | A-8 Pseudo | Instruction | List |
| ------------- | ---------- | ----------- | ---- |
RISC-V implements a series of pseudo instructions, listed in Table 15.1 for reference only and
sortedinalphabeticorder.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 283

Chapter15AppendixAStandardInstructions
Table15.1: RISC-VPseudoInstructionList
PseudoInstruction BaseInstruction Description
beqzrs,offset beqrs,x0,offset Take the branch jump if the value in
thersregisteriszero.
bnezrs,offset bners,x0,offset Take the branch jump if the value in
thersregisterisnotzero.
blezrs,offset bgex0,rs,offset Take the branch jump if the value in
thersregisterislessthanorequalto
zero.
bgezrs,offset bgers,x0,offset Take the branch jump if the value in
thersregisterisgreaterthanorequal
tozero.
bltzrs,offset bltrs,x0,offset Take the branch jump if the value in
thersregisterislessthanzero.
bgtzrs,offset bltx0,xs,offset Take the branch jump if the value in
therstheregisterisgreaterthanzero.
bgtrs,rt,offset bltrt,rs,offset Take the branch jump if the value in
the rs register is greater than that of
thertregister.
blers,rt,offset bgert,rs,offset Take the branch jump if the value in
thersregisterislessthanorequalto
thatofthertregister.
bgturs,rt,offset blturt,rs,offset Takesthebranchjumpifthevaluein
the rs register is greater than that of
the rt register, using unsigned com-
parison.
bleurs,rt,offset bgeurt,rs,offset Takesthebranchjumpifthevaluein
thersregisterislessthanorequalto
thatofthertregister,usingunsigned
comparison.
calloffset auipcx6,offset[31:12] Function Jump within a 4KB to 4GB
jalrx1,x6,offset[11:0] addressrange
csrccsr,rs csrrcx0,csr,rs Clear the corresponding bits in the
control/statusregister(CSR)
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 284

Chapter15AppendixAStandardInstructions
Table 15.1–continuedfrompreviouspage
| PseudoInstruction | BaseInstruction | Description |     |     |     |
| ----------------- | --------------- | ----------- | --- | --- | --- |
csrcicsr,imm csrrcix0,csr,imm Clear the corresponding bits in the
lower5bitsoftheCSR
| csrrrd,csr | csrrsrd,csr,x0 | Read the | corresponding | bits | in the |
| ---------- | -------------- | -------- | ------------- | ---- | ------ |
CSR
| csrscsr,rs | csrrsx0,csr,rs | SetthecorrespondingbitsintheCSR |     |     |     |
| ---------- | -------------- | ------------------------------- | --- | --- | --- |
csrsicsr,imm csrrsix0,csr,imm Set the corresponding bits in the
lower5bitsoftheCSR
csrwcsr,rs csrrwx0,csr,rs Write the corresponding bits in the
CSR
csrwicsr,imm csrrwix0,csr,imm Write the corresponding bits in the
lower5bitsoftheCSR
| fabs.drd,rs | fsgnjx.drd,rs,rs | Taketheabsolutevalueofadouble- |     |     |     |
| ----------- | ---------------- | ------------------------------ | --- | --- | --- |
precisionFloating-point(FP)number.
fabs.srd,rs fsgnjx.srd,rs,rs Take the absolute value of a single-
precisionFPnumber.
| fence | fenceiorw,iorw | The synchronization |     | instruction | be- |
| ----- | -------------- | ------------------- | --- | ----------- | --- |
tweenmemoryanddevice
fl{w|d}rd,symbol,rt auipcrt,symbol[31:12] TheFPloadinstructionfora4GBad-
|            | fl{w|d}rd,symbol[11:0](rt) | dressspace |             |              |     |
| ---------- | -------------------------- | ---------- | ----------- | ------------ | --- |
| fmv.drd,rs | fsgnj.drd,rs,rs            | The copy   | instruction | of a double- |     |
precisionFP
| fmv.srd,rs | fsgnj.srd,rs,rs | The copy | instruction | of a | single- |
| ---------- | --------------- | -------- | ----------- | ---- | ------- |
precisionFP
fneg.drd,rs fsgnjn.drd,rs,rs The negate instruction of a double-
precisionFP
fneg.srd,rs fsgnjn.srd,rs,rs The negate instruction of a single-
precisionFP
| frcsrrd | csrrsx0,fcsr,x0 | ReadtheinstructionfromtheFPCSR |     |     |     |
| ------- | --------------- | ------------------------------ | --- | --- | --- |
frflagsrd csrrsrd,fflags,x0 Readthe instructionin theFP excep-
tionflag
| frrmrd | csrrsrd,frm,x0 | ReadtheinstructionintheFPround- |     |     |     |
| ------ | -------------- | ------------------------------- | --- | --- | --- |
ingbit
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 285

Chapter15AppendixAStandardInstructions
Table 15.1–continuedfrompreviouspage
| PseudoInstruction | BaseInstruction | Description                  |     |     |
| ----------------- | --------------- | ---------------------------- | --- | --- |
| fscsrrs           | csrrwx0,fcsr,rs | WritetheinstructionfromFPCSR |     |     |
fscsrrd,rs csrrsrd,fcsr,rs Read and write the instruction from
theFPCSR
| fsflagsrs | csrrwx0,fcsr,rs | WritetheinstructionintheFPexcep- |     |     |
| --------- | --------------- | -------------------------------- | --- | --- |
tionflag
fsflagsrd,rs csrrsrd,fcsr,rs Read and write the instruction in the
FPexceptionflag
fsflagsiimm csrrwix0,fflags,imm The instruction to write a specified
immediatenumberintotheFPexcep-
tionflag
fsflagsird,imm csrrwird,fflags,imm The instruction to read and write the
|     |     | value of | the FP exception | flag by the |
| --- | --- | -------- | ---------------- | ----------- |
immediate
| fsrmrs | csrrwx0,frm,rs | The instruction | to write | a specific |
| ------ | -------------- | --------------- | -------- | ---------- |
valueintotheFProundingmode
fsrmrd,rs csrrsrd,frm,rs The instruction to read and write FP
roundingmode
| fsrmiimm | csrrwix0,frm,imm | Theinstructiontowriteanimmediate |     |     |
| -------- | ---------------- | -------------------------------- | --- | --- |
valuetotheFProundingmode
fsrmird,imm csrrwird,frm,imm The instruction to read and write the
valueoftheFProundingmodebythe
immediate
fs{w|d}rd,symbol,rt auipcrt,symbol[31:12] TheinstructiontostoreFPnumbersin
|           | fs{w|d}rd,symbol[11:0](rt) | a4GBaddressspace                 |     |     |
| --------- | -------------------------- | -------------------------------- | --- | --- |
| joffset   | jalx0,offset               | Thedirectjumpinstruction         |     |     |
| jaloffset | jalx1,offset               | Thesubroutinejumpandlinkinstruc- |     |     |
tion
| jalrrs | jalrx1,rs,0 | The instructions | of subroutine | jump |
| ------ | ----------- | ---------------- | ------------- | ---- |
registerandlinkregister
| jrrs | jalrx0,rs,0 | Thejumptoregisterinstruction |     |     |
| ---- | ----------- | ---------------------------- | --- | --- |
lard,symbol auipcrd,symbol[31:12] Theinstructiontoloadaddress
addird,rd,symbol[11:0]
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 286

Chapter15AppendixAStandardInstructions
Table 15.1–continuedfrompreviouspage
| PseudoInstruction | BaseInstruction |     | Description |     |     |
| ----------------- | --------------- | --- | ----------- | --- | --- |
lird,immediate Split into multiple instruc- Theinstructiontoloadimmediate
|     | tions based | on the size | of  |     |     |
| --- | ----------- | ----------- | --- | --- | --- |
theimmediate
l{b|h|w|d}rd,symbol,rt auipcrt,symbol[31:12] The load instruction in 4GB address
|     | l{b|h|w|d} | rd, | sym- space |     |     |
| --- | ---------- | --- | ---------- | --- | --- |
bol[11:0](rt)
| mvrd,rs  | addird,rs,0 |     | Thedatatransferinstruction       |     |     |
| -------- | ----------- | --- | -------------------------------- | --- | --- |
| negrd,rs | subrd,x0,rs |     | Theinstructiontotakenegativefrom |     |     |
aregister
| negwrd,rs | subwrd,x0,rs |     | Theinstructiontotakenegativeofthe |     |     |
| --------- | ------------ | --- | --------------------------------- | --- | --- |
lower32bitsofaregister
| nop      | addix0,x0,0  |     | Nooperation |            |              |
| -------- | ------------ | --- | ----------- | ---------- | ------------ |
| notrd,rs | xorird,rs,-1 |     | The bitwise | complement | register in- |
struction
rdcycle[h]rd csrrsrd,cycle[h],x0 The instruction to read the cycle
counter
rdinstret[h]rd csrrsrd,instret[h],x0 Theinstructiontoreadthenumberof
instructions
rdtime[h]rd csrrsrd,time[h],x0 The real-time clock retrieval instruc-
tion
| ret | jalrx0,x1,0 |     | Returnfromthesubroutine |     |     |
| --- | ----------- | --- | ----------------------- | --- | --- |
s{b|h|w|d}rd,symbol,rt auipcrt,symbol[31:12] Storethe4GiBaddressspace
s{b|h|w|d}
rd,symbol[11:0](rt)
| seqzrd,rs  | sltiurd,rs,1 |     | Settheregistervalue0to1     |     |     |
| ---------- | ------------ | --- | --------------------------- | --- | --- |
| sextwrd,rs | addiwrd,rs,0 |     | Thesignextensioninstruction |     |     |
sgtzrd,rs sltrd,rs,x0,rs The instruction to set the if-greater-
than-zeroregistervalueto1
sltzrd,rs sltrd,rs,rs,x0 The instruction to set the if-smaller-
than-zeroregistervalueto1
snezrd,rs slturd,rs,x0,rs The instruction to set the non-zero
registervalueto1
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 287

Chapter15AppendixAStandardInstructions
Table 15.1–continuedfrompreviouspage
PseudoInstruction BaseInstruction Description
tailoffset auipcx6,offset[31:12] Notlinkorjumptothesubroutine
jalrx0,x6,offset[11:0]
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 288

Chapter16AppendixBXuanTieExtendedInstructions
16 Appendix B XuanTie Extended Instructions
Apart from the standard defined GCV instruction set, C910 implements custom instruction sets,
including the subsets of Cache instructions, synchronization instructions, arithmetic operation
instructions, bitwiseoperationinstructions, storeinstructions, andhalf-precisionfloating-point
instructions.
Amongtheseinstructionsubsets,thesubsetsofCacheinstructions,synchronizationinstructions,
arithmetic operation instructions, bitwise operation instructions, and store instructions can be
executed normally only when mxstatus.theadisaee == 1. Otherwise, illegal instruction excep-
tions will occur; The floating-point half-precision instruction subset can be executed normally
onlywhenmstatus.fs!=2'b00. Otherwise, illegalinstructionexceptionswilloccur. Thissection
specificallydescribeseachinstructionaccordingtothedifferentinstructionsubsetextensions.
16.1 Appendix B-1 Cache Instructions
Cache instruction subset has implemented the cache operation with 32-bit width for each in-
struction.
Thefollowinginstructionsarelistedinalphabeticorder.
16.1.1 DCACHE.CALL——TheInstructionthatClearsAllDirtyTableEntriesintheD-Cache
Syntax:
dcache.call
Operation:
ClearsalltableentriesintheL1DataCache(D-Cache)andwritesalldirtytableentriesbackinto
thenext-levelstorage,operatingonlyonthecurrentcore.
Executepermission:
MachineMode(M-mode)/SupervisorMode(S-mode)
Exception:
Theillegalinstructionexception
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 289

Chapter16AppendixBXuanTieExtendedInstructions
Note:
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,executingthisinstructioninUserMode(U-mode)causesanille-
galinstructionexception.
Instructionformat:
16.1.2 DCACHE.CIALL——TheInstructiontoClearAllDirtyTableEntriesintheD-CacheandIn-
validatestheD-Cache
Syntax:
dcache.ciall
Operation:
WritesalldirtytableentriesintheL1D-Cachebackintothenext-levelstorageandinvalidateall
thesetableentries.
Executepermission:
M-mode/S-mode
Exception:
Theillegalinstructionexception
Note:
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,executingthisinstructioninU-modecausesanillegalinstruction
exception.
Instructionformat:
16.1.3 DCACHE.CIPA——The Instruction to Clear Dirty Table Entries by Specified Physical Ad-
dressesintheD-CacheandInvalidatestheD-Cache
Syntax:
dcache.cipars1
Operation:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 290

Chapter16AppendixBXuanTieExtendedInstructions
WritestheD-Cache/L2Cachetableentriescorrespondingtothephysicaladdressesinrs1back
intothenext-levelstorageandinvalidatethesetableentries, operatingonallcoresandtheL2
Cache.
Executepermission:
M-mode/S-mode
Exception:
Theillegalinstructionexception
Note:
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,executingthisinstructioninU-modecausesanillegalinstruction
exception.
Instructionformat:
16.1.4 DCACHE.CISW——TheInstructiontoClearDirtyTableEntriesintheD-CachebytheSpec-
ifiedWay/SetandInvalidatestheD-Cache
Syntax:
dcache.ciswrs1
Operation:
Writes the dirty L1 D-Cache table entry that matches the specified way/set in rs1 back into the
next-levelstorageandinvalidatethistableentry,operatingonlyonthecurrentcore.
Executepermission:
M-mode/S-mode
Exception:
Theillegalinstructionexception
Note:
C910D-Cacheisa2-wayset-associativecache,wherers1[31]isthewayencodingandrs1[w:6]is
thesetencoding. Whenthesizeofthedcacheis32K,thevalueofwis13,andwhenthedcache
sizeis64K,thevalueofwis14.
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 291

Chapter16AppendixBXuanTieExtendedInstructions
• mxstatus.theadisaee=1,executingthisinstructioninU-modecausesanillegalinstruction
exception.
Instructionformat:
16.1.5 DCACHE.CIVA——The Instruction to Clear Dirty Table Entries by Specified Virtual Ad-
dressesintheD-CacheandInvalidatestheD-Cache
Syntax:
dcache.civars1
Operation:
Writesthedcache/L2cachetableentrybelongingtothespecifiedvirtualaddressinrs1backinto
the next-level storage and invalidate this table entry, operating on the current core and the L2
Cache. Andthesharingattributeofthevirtualaddressdetermineswhethertobroadcasttoother
cores.
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception/Theexceptiontoloadinstructionpages
Note:
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,mxstatus.ucme=1,thisinstructioncanbeexecutedinU-mode.
• mxstatus.theadisaee=1, mxstatus.ucme =0, executing this instruction in U-mode causes
anillegalinstructionexception.
Instructionformat:
16.1.6 DCACHE.CPA——The Instruction to Clear Dirty Table Entries by Specified Physical Ad-
dressesinD-CACHE
Syntax:
dcache.cpars1
Operation:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 292

Chapter16AppendixBXuanTieExtendedInstructions
Writesthedcache/l2cachetableentrycorrespondingtothephysicaladdressinrs1backtothe
nextlevelofstorage,operatingonallcoresandtheL2cache.
Executepermission:
M-mode/S-mode
Exception:
Theillegalinstructionexception
Note:
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,executingthisinstructioninU-modecausesanillegalinstruction
exception.
Instructionformat:
16.1.7 DCACHE.CPAL1——TheInstructiontoClearDirtyTableEntriesbySpecifiedPhysicalAd-
dressesinL1D-CACHE
Syntax:
dcache.cpal1rs1
Operation:
Writes the dcache table entry that matches the specified physical address in rs1 back into the
next-levelstorage,operatingonallcoresandtheL1Cache.
Executepermission:
M-mode/S-mode
Exception:
Theillegalinstructionexception
Note:
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,executingthisinstructioninU-modecausesanillegalinstruction
exception.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 293

Chapter16AppendixBXuanTieExtendedInstructions
16.1.8 DCACHE.CVA——The Instruction to Clear Dirty Table Entries by Specified Virtual Ad-
dressesinD-CACHE
Syntax:
dcache.cvars1
Operation:
Writesthedcache/L2cachetableentrybelongingtothespecifiedvirtualaddressinrs1backinto
thenext-levelstorage,operatingonthecurrentcoreandL2CACHE.Andthesharingattributeof
thevirtualaddressdetermineswhethertobroadcasttoothercores.
Executepermission:
M-mode/S-mode
Exception:
Theillegalinstructionexception/Theexceptiontoloadinstructionpages
Note:
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,executingthisinstructioninU-modecausesanillegalinstruction
exception.
Instructionformat:
16.1.9 DCACHE.CVAL1——The Instruction to Clear Dirty Table Entries by Specified Virtual Ad-
dressesinL1D-CACHE
Syntax:
dcache.cval1rs1
Operation:
WritestheD-Cachetableentrythatmatchesthespecifiedvirtualaddresins1backintothenext-
levelstorage,operatingonallcoresandtheL1Cache.
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception/Theexceptiontoloadinstructionpages
Note:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 294

Chapter16AppendixBXuanTieExtendedInstructions
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1, mxstatus.ucme =0, executing this instruction in U-mode causes
anillegalinstructionexception.
Instructionformat:
16.1.10 DCACHE.IPA——TheDCACHEInvalidInstructionbySpecifiedPhysicalAddresses
Syntax:
dcache.ipars1
Operation:
Invalidates the dcache/l2 cache table entry that matches the specified physical address in rs1,
operatingonallcoresandtheL2Cache.
Executepermission:
M-mode/S-mode
Exception:
Theillegalinstructionexception
Note:
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,executingthisinstructioninU-modecausesanillegalinstruction
exception.
Instructionformat:
16.1.11 DCACHE.ISW——TheDCACHEInvalidationInstructionbySpecifiedSet/Way
Syntax:
dcache.iswrs1
Operation:
InvalidatestheD-CachetableentriesbyspecifiedSETandWAY,operatingonthecurrentcore.
Executepermission:
M-mode/S-mode
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 295

Chapter16AppendixBXuanTieExtendedInstructions
Exception:
Theillegalinstructionexception
Note:
C910D-Cacheisa2-wayset-associativecache,wherers1[31]isthewayencodingandrs1[w:6]is
thesetencoding. Whenthesizeofthedcacheis32K,thevalueofwis13,andwhenthedcache
sizeis64K,thevalueofwis14.
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,executingthisinstructioninU-modecausesanillegalinstruction
exception.
Instructionformat:
16.1.12 DCACHE.IVA——TheDCACHEInvalidationInstructionbySpecifiedVirtualAddresses
Syntax:
dcache.ivars1
Operation:
Invalidatesthedcache/l2cachetableentrythatmatchesthespecifiedvirtualaddressinrs1,op-
eratingonthecurrentcoreandL2CACHE.Andthesharingattributeofthevirtualaddressdeter-
mineswhethertobroadcasttoothercores.
Executepermission:
M-mode/S-mode
Exception:
Theillegalinstructionexception/Theexceptiontoloadinstructionpages
Note:
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,executingthisinstructioninU-modecausesanillegalinstruction
exception.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 296

Chapter16AppendixBXuanTieExtendedInstructions
16.1.13 DCACHE.IALL——TheInstructiontoInvalidateAllTableEntriesintheD-Cache
Syntax:
dcache.iall
Operation:
InvalidatealltableentriesintheL1D-Cache,operatingonthecurrentcore.
Executepermission:
M-mode/S-mode
Exception:
Theillegalinstructionexception
Note:
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,executingthisinstructioninU-modecausesanillegalinstruction
exception.
Instructionformat:
16.1.14 ICACHE.IALL——TheInstructiontoInvalidateAllTableEntriesintheI-Cache
Syntax:
icache.iall
Operation:
InvalidatesalltableentriesintheI-Cache,operatingonthecurrentcore.
Executepermission:
M-mode/S-mode
Exception:
Theillegalinstructionexception
Note:
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,executingthisinstructioninU-modecausesanillegalinstruction
exception.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 297

Chapter16AppendixBXuanTieExtendedInstructions
16.1.15 ICACHE.IALLS——TheInstructiontoInvalidateAllTableEntriesintheI-Cachethrough
Broadcasting
Syntax:
icache.ialls
Operation:
Invalidates all table entries in the I-Cache and other cores invalidate all their respective table
entriesinI-Cachethroughbroadcasting,operatingonallcores.
Executepermission:
M-mode/S-mode
Exception:
Theillegalinstructionexception
Note:
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,executingthisinstructioninU-modecausesanillegalinstruction
exception.
Instructionformat:
16.1.16 ICACHE.IPA——The Instruction to Invalidate Table Entries by Specified Physical Ad-
dressesintheI-Cache
Syntax:
icache.ipars1
Operation:
InvalidatestheI-Cachetableentrythatmatchesthespecifiedphysicaladdressinrs1,operating
onallcores.
Executepermission:
M-mode/S-mode
Exception:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 298

Chapter16AppendixBXuanTieExtendedInstructions
Theillegalinstructionexception
Note:
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,executingthisinstructioninU-modecausesanillegalinstruction
exception.
Instructionformat:
16.1.17 ICACHE.IVA——The Instruction to Invalidate Table Entries by Specified Virtual Ad-
dressesintheI-Cache
Syntax:
icache.ivars1
Operation:
InvalidatestheI-Cachetableentrythatmatchesthespecifiedvirtualaddressinrs1,operatingon
thecurrentcore. Andthesharingattributeofthevirtualaddressdetermineswhethertobroad-
casttoothercores.
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception/Theexceptiontoloadinstructionpages
Note:
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,mxstatus.ucme=1,U-modesupportsexecutingtheinstruction.
• mxstatus.theadisaee=1, mxstatus.ucme=0, executing this instruction in U-mode causes
anillegalinstructionexception.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 299

Chapter16AppendixBXuanTieExtendedInstructions
16.1.18 DCACHE.CSW——TheInstructiontoClearDirtyTableEntriesintheD-CachebySpecified
Set/Way
Syntax:
dcache.cswrs1
Operation:
WritesthethedirtytableentryfromtheD-Cachebackintothenext-levelstoragedevicebased
onthespecifiedSETandWAY.
Executepermission:
M-mode/S-mode
Exception:
Theillegalinstructionexception
Note:
C910D-Cacheisa2-wayset-associativecache,wherers1[31]isthewayencodingandrs1[w:6]is
thesetencoding. Whenthesizeofthedcacheis32K,thevalueofwis13,andwhenthedcache
sizeis64K,thevalueofwis14.
• mxstatus.theadisaee=0,executingthisinstructioncausesanillegalinstructionexception.
• mxstatus.theadisaee=1,executingthisinstructioninU-modecausesanillegalinstruction
exception.
Instructionformat:
16.2 Appendix B-2 Multi-Core Synchronization Instructions
Thissynchronizationinstructionsetimplementstheextensionofmulti-coresynchronizationin-
structions, with 32-bit width for each instruction. And the following instructions are listed in
alphabeticorder.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 300

Chapter16AppendixBXuanTieExtendedInstructions
16.2.1 SYNC——TheSynchronizationInstruction
Syntax:
sync
Operation:
Ensuresthatallprecedinginstructionsretireearlierthanthisinstructionandallsubsequentin-
structionsretirelaterthanthisinstruction.
ExecutePermission:
MachineMode(M-mode)/SupervisorMode(S-mode)/UserMode(U-mode)
Exception:
Theillegalinstructionexception
Instructionformat:
16.2.2 SYNC.I——TheInstructionforSynchronizingtheClearingOperation
Syntax:
sync.i
Operation:
Ensuresthatallprecedinginstructionsretireearlierthanthisinstructionandallsubsequentin-
structionsretirelaterthanthisinstruction,andclearsthepipelinewhenthisinstructionretires.
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 301

Chapter16AppendixBXuanTieExtendedInstructions
16.2.3 SYNC.IS——TheBroadcastInstructionforSynchronizingtheClearingOperation
Syntax:
sync.is
Operation:
Ensuresthatallprecedinginstructionsretireearlierthanthisinstructionandallsubsequentin-
structions retire later than this instruction. Clears the pipeline when this instruction retires and
broadcaststherequesttoothercores.
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
16.2.4 SYNC.S——TheInstructiontoSynchronizeandBroadcast
Syntax:
sync.s
Operation:
Ensuresthatallprecedinginstructionsretireearlierthanthisinstructionandallsubsequentin-
structionsretirelaterthanthisinstruction,andbroadcaststherequesttoothercores.
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 302

Chapter16AppendixBXuanTieExtendedInstructions
16.3 Appendix B-3 Arithmetic Operation Instructions
Arithmeticoperationinstructionsubsetimplementstheextensionofarithmeticinstructions,with
32-bitwidthforeachinstruction.
Andthefollowinginstructionsarelistedinalphabeticorder.
16.3.1 ADDSL——TheShiftandAddInstructioninRegisters
Syntax:
addslrdrs1,rs2,imm2
Operation:
rd←rs1+rs2<<imm2
ExecutePermission:
MachineMode(M-mode)/SupervisorMode(S-mode)/UserMode(U-mode)
Exception:
Theillegalinstructionexception
Instructionformat:
16.3.2 MULA——TheMultiply-AddInstruction
Syntax:
mulard,rs1,rs2
Operation:
rd←rd+(rs1*rs2)[63:0]
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 303

Chapter16AppendixBXuanTieExtendedInstructions
16.3.3 MULAH——TheMultiply-AddInstructionontheLower16Bits
Syntax:
mulahrd,rs1,rs2
Operation:
tmp[31:0]←rd[31:0]+(rs1[15:0]*rs[15:0])
rd←sign_extend(tmp[31:0])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
16.3.4 MULAW——TheMultiply-AddInstructionontheLower32Bits
Syntax:
mulawrd,rs1,rs2
Operation:
tmp[31:0]←rd[31:0]+(rs1[31:0]*rs[31:0])[31:0]
rd←sign_extend(tmp[31:0])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 304

Chapter16AppendixBXuanTieExtendedInstructions
16.3.5 MULS——TheMultiply-SubtractInstruction
Syntax:
mulsrd,rs1,rs2
Operation:
rd←rd-(rs1*rs2)[63:0]
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
16.3.6 MULSH——TheMultiply-SubtractInstructionontheLower16Bits
Syntax:
mulshrd,rs1,rs2
Operation:
tmp[31:0]←rd[31:0]-(rs1[15:0]*rs[15:0])
rd←sign_extend(tmp[31:0])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
16.3.7 MULSW——TheMultiply-SubtractInstructionontheLower32Bits
Syntax:
mulswrd,rs1,rs2
Operation:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 305

Chapter16AppendixBXuanTieExtendedInstructions
tmp[31:0]←rd[31:0]-(rs1[31:0]*rs[31:0])
rd←sign_extend(tmp[31:0])
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
16.3.8 MVEQZ——TheTransferInstructionIfRegisterValueisZero
Syntax:
mveqzrd,rs1,rs2
Operation:
if(rs2==0)
rd←rs1
else
rd←rd
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
16.3.9 MVNEZ——TheTransferInstructionIfRegisterValueisnotZero
Syntax:
mvnezrd,rs1,rs2
Operation:
if(rs2!=0)
rd←rs1
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 306

Chapter16AppendixBXuanTieExtendedInstructions
else
rd←rd
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
16.3.10 SRRI——TheRotateRightInstruction
Syntax:
srrird,rs1,imm6
Operation:
rd←rs1>>imm6
Shiftsrighttheoriginalvalueofrs1,withtheleftbitshiftedinandtherightbitshiftedout.
ExecutePermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
16.3.11 SRRIW——TheRotateRightInstructionontheLower32Bits
Syntax:
srriwrd,rs1,imm5
Operation:
rd←sign_extend(rs1[31:0]>>imm5)
Shiftsrighttheoriginalvalueofrs1[31:0],withtheleftbitshiftedinandtherightbitshiftedout.
ExecutePermission:
M-mode/S-mode/U-mode
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 307

Chapter16AppendixBXuanTieExtendedInstructions
Exception:
Theillegalinstructionexception
Instructionformat:
16.4 Appendix B-4 Bitwise Operation Instruction
Bitwisemanipulationinstructionsubsetimplementstheextensionofbitwiseoperationinstruc-
tions,with32-bitwidthforeachinstruction.
Andthefollowinginstructionsarelistedinalphabeticorder.
16.4.1 EXT——The Instruction to Extract the Sign Bit and Extending in Consecutive Bits of a
Register
Syntax:
extrd,rs1,imm1,imm2
Operation:
rd←sign_extend(rs1[imm1:imm2])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Note:
Ifimm1<imm2,thebehaviorofthisinstructionisunpredictable.
Instructionformat:
16.4.2 EXTU——TheZeroExtensionInstructiontoExtractConsecutiveBitsofaRegister
Syntax:
exturd,rs1,imm1,imm2
Operation:
rd←zero_extend(rs1[imm1:imm2])
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 308

Chapter16AppendixBXuanTieExtendedInstructions
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Note:
Ifimm1<imm2,thebehaviorofthisinstructionisunpredictable.
Instructionformat:
16.4.3 FF0——TheInstructiontoFindtheFirstBitWiththeValueof0inaRegister
Syntax:
ff0rd,rs1
Operation:
Findsthefirstbitwiththevalueof0fromthehighestbitofrs1andwritestheresultbackintothe
rdregister. Ifthehighestbitofrs1is0,theresultis0. Ifthereisno0inrs1,theresultis64.
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
16.4.4 FF1——TheInstructiontoFindtheFirstBitWiththeValueof1inaRegister
Syntax:
ff1rd,rs1
Operation:
Finds the first bit with the value of 1 from the highest bit of rs1 and writes the index of this bit
backintord. Ifthehighestbitofrs1is0,theresultis0. Ifthereisno1inrs1,theresultis64.
Executepermission:
M-mode/S-mode/U-mode
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 309

Chapter16AppendixBXuanTieExtendedInstructions
Exception:
Theillegalinstructionexception
Instructionformat:
16.4.5 REV——TheInstructiontoReversetheByteOrder
Syntax:
revrd,rs1
Operation:
rd[63:56]←rs1[7:0]
rd[55:48]←rs1[15:8]
rd[47:40]←rs1[23:16]
rd[39:32]←rs1[31:24]
rd[31:24]←rs1[39:32]
rd[23:16]←rs1[47:40]
rd[15:8]←rs1[55:48]
rd[7:0]←rs1[63:56]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
16.4.6 REVW——TheInstructiontoReversestheByteOrderontheLower32Bits
Syntax:
revwrd,rs1
Operation:
tmp[31:24]←rs1[7:0]
tmp[23:16]←rs1[15:8]
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 310

Chapter16AppendixBXuanTieExtendedInstructions
tmp[15:8]←rs1[23:16]
tmp[7:0]←rs1[31:24]
rd←sign_extend(tmp[31:0])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
16.4.7 TST——TheInstructiontoTestBitswiththeValueof0
Syntax:
tstrd,rs1,imm6
Operation:
if(rs1[imm6]==1)
rd←1
else
rd←0
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
16.4.8 TSTNBZ——Zero-ByteTestInstruction
Syntax:
tstnbzrd,rs1
Operation:
rd[63:56]←(rs1[63:56]==0)? 8'hff: 8'h0
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 311

Chapter16AppendixBXuanTieExtendedInstructions
| rd[55:48]←(rs1[55:48]==0)? |        | 8'hff: 8'h0 |
| -------------------------- | ------ | ----------- |
| rd[47:40]←(rs1[47:40]==0)? |        | 8'hff: 8'h0 |
| rd[39:32]←(rs1[39:32]==0)? |        | 8'hff: 8'h0 |
| rd[31:24]←(rs1[31:24]==0)? |        | 8'hff: 8'h0 |
| rd[23:16]←(rs1[23:16]==0)? |        | 8'hff: 8'h0 |
| rd[15:8]←(rs1[15:8]==0)?   | 8'hff: | 8'h0        |
| rd[7:0]←(rs1[7:0]==0)?     | 8'hff: | 8'h0        |
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Instructionformat:
| 16.5 Appendix | B-5 Store | Instructions |
| ------------- | --------- | ------------ |
Thestoreinstructionsubsetimplementstheextensionofstoreinstructions,with32-bitwidthfor
eachinstruction.
Andthefollowinginstructionsarelistedinalphabeticorder.
16.5.1 FLRD——TheInstructiontoShiftandLoadDoublewordinFloating-PointRegisters
Syntax:
flrdrd,rs1,rs2,imm2
Operation:
| rd←mem[(rs1+rs2<<imm2)+7: |     | (rs1+rs2<<imm2)] |
| ------------------------- | --- | ---------------- |
Executepermission:
MachineMode(M-mode)/SupervisorMode(S-mode)/UserMode(U-mode)
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 312

Chapter16AppendixBXuanTieExtendedInstructions
Ifmxstatus.theadisaee=1'b0ormstatus.fs=2'b00,executingthisinstructioncausesanillegalin-
structionexception.
Instructionformat:
16.5.2 FLRW——TheInstructiontoShiftandLoadWordinFloating-PointRegisters
Syntax:
flrwrd,rs1,rs2,imm2
Operation:
rd←one_extend(mem[(rs1+rs2<<imm2)+3: (rs1+rs2<<imm2)])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Ifmxstatus.theadisaee=1'b0ormstatus.fs=2'b00,executingthisinstructioncausesanillegalin-
structionexception.
Instructionformat:
16.5.3 FLURD——The Doubleword Load Instruction to Shift the Low 32 Bits of Floating-point
Registers
Syntax:
flurdrd,rs1,rs2,imm2
Operation:
rd←mem[(rs1+rs2[31:0]<<imm2)+7: (rs1+rs2[31:0]<<imm2)]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 313

Chapter16AppendixBXuanTieExtendedInstructions
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
• rs2[31:0]isanunsignednumber,andtheupperbits[63:32]arefilledwithzerosforaddress
calculation.
• If mxstatus.theadisaee=1'b0 or mstatus.fs = 2'b00, executing this instruction causes an
illegalinstructionexception.
Instructionformat:
16.5.4 FLURW——TheLoadWordInstructiontoShifttheLow32BitsofFloating-pointRegisters
Syntax:
flurwrd,rs1,rs2,imm2
Operation:
rd←one_extend(mem[(rs1+rs2[31:0]<<imm2)+3: (rs1+rs2[31:0]<<imm2)])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
• rs2[31:0]isanunsignednumber,andtheupperbits[63:32]arefilledwithzerosforaddress
calculation.
• If mxstatus.theadisaee=1'b0 or mstatus.fs = 2'b00, executing this instruction causes an
illegalinstructionexception.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 314

Chapter16AppendixBXuanTieExtendedInstructions
16.5.5 FSRD——TheInstructiontoShiftandDoublewordStoreinFloating-PointRegisters
Syntax:
fsrdrd,rs1,rs2,imm2
Operation:
mem[(rs1+rs2<<imm2)+7: (rs1+rs2<<imm2)]←rd[63:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Note:
Ifmxstatus.theadisaee=1'b0ormstatus.fs=2'b00,executingthisinstructioncausesanillegalin-
structionexception.
Instructionformat:
16.5.6 FSRW——TheInstructiontoShiftandStoreWordinFloating-PointRegisters
Syntax:
fsrwrd,rs1,rs2,imm2
Operation:
mem[(rs1+rs2<<imm2)+3: (rs1+rs2<<imm2)]←rd[31:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Note:
Ifmxstatus.theadisaee=1'b0ormstatus.fs=2'b00,executingthisinstructioncausesanillegalin-
structionexception.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 315

Chapter16AppendixBXuanTieExtendedInstructions
16.5.7 FSURD——TheDoublewordStoreInstructiontoShiftLow32BitsinFloating-pointReg-
isters
Syntax:
fsurdrd,rs1,rs2,imm2
Operation:
mem[(rs1+rs2[31:0]<<imm2)+7: (rs1+rs2[31:0]<<imm2)]←rd[63:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Note:
• rs2[31:0]isanunsignednumber,andtheupperbits[63:32]arefilledwithzerosforaddress
calculation.
• If mxstatus.theadisaee=1'b0 or mstatus.fs = 2'b00, executing this instruction causes an
illegalinstructionexception.
Instructionformat:
16.5.8 FSURW——TheWordStoreInstructiontoShiftLow32BitsinFloating-pointRegisters
Syntax:
fsurwrd,rs1,rs2,imm2
Operation:
mem[(rs1+rs2[31:0]<<imm2)+3: (rs1+rs2[31:0]<<imm2)]←rd[31:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 316

Chapter16AppendixBXuanTieExtendedInstructions
Note:
• rs2[31:0]isanunsignednumber,andtheupperbits[63:32]arefilledwithzerosforaddress
calculation.
• If mxstatus.theadisaee=1'b0 or mstatus.fs = 2'b00, executing this instruction causes an
illegalinstructionexception.
Instructionformat:
16.5.9 LBIA——Sign-ExtendedByteLoadwithBaseAuto-IncrementInstruction
Syntax:
lbiard,(rs1),imm5,imm2
Operation:
rd←sign_extend(mem[rs1])
rs1←rs1+sign_extend(imm5<<imm2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Registersrdandrs1mustnotbethesame.
Instructionformat:
16.5.10 LBIB——The Byte Load Instruction to Auto-increment the Base Address and Extend
SignedBits
Syntax:
lbibrd,(rs1),imm5,imm2
Operation:
rs1←rs1+sign_extend(imm5<<imm2)
rd←sign_extend(mem[rs1])
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 317

Chapter16AppendixBXuanTieExtendedInstructions
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Registersrdandrs1mustnotbethesame.
Instructionformat:
16.5.11 LBUIA——TheBase-addressAuto-incrementInstructiontoExtendZeroBitsandLoad
Bytes
Syntax:
lbuiard,(rs1),imm5,imm2
Operation:
rd←zero_extend(mem[rs1])
rs1←rs1+sign_extend(imm5<<imm2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Registersrdandrs1mustnotbethesame.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 318

Chapter16AppendixBXuanTieExtendedInstructions
16.5.12 LBUIB——The Byte Load Instruction to Auto-increment the Base Address and Extend
ZeroBits
Syntax:
lbuibrd,(rs1),imm5,imm2
Operation:
rs1←rs1+sign_extend(imm5<<imm2)
rd←zero_extend(mem[rs1])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Registersrdandrs1mustnotbethesame.
Instructionformat:
16.5.13 LDD——Dual-RegisterLoadInstruction
Syntax:
lddrd1,rd2,(rs1),imm2,4
Operation:
address←rs1+zero_extend(imm2<<4)
rd1←mem[address+7:address]
rd2←mem[address+15:address+8]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 319

Chapter16AppendixBXuanTieExtendedInstructions
Thevaluesofrd1,rd2,rs1mustnotequaltoeachother.
Instructionformat:
16.5.14 LDIA——TheBase-addressAuto-incrementInstructiontoLoadDoublewordsandEx-
tendSignedBits
Syntax:
ldiard,(rs1),imm5,imm2
Operation:
rd←sign_extend(mem[rs1+7:rs1])
rs1←rs1+sign_extend(imm5<<imm2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Registersrdandrs1mustnotbethesame.
Instructionformat:
16.5.15 LDIB——The Doubleword Load Instruction to Auto-increment the Base Address and
ExtendtheSignedBits
Syntax:
ldibrd,(rs1),imm5,imm2
Operation:
rs1←rs1+sign_extend(imm5<<imm2)
rd←sign_extend(mem[rs1+7:rs1])
Executepermission:
M-mode/S-mode/U-mode
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 320

Chapter16AppendixBXuanTieExtendedInstructions
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Registersrdandrs1mustnotbethesame.
Instructionformat:
16.5.16 LHIA——TheBase-addressAuto-incrementInstructiontoLoadHalfwordsandExtend
SignedBits
Syntax:
lhiard,(rs1),imm5,imm2
Operation:
rd←sign_extend(mem[rs1+1:rs1])
rs1←rs1+sign_extend(imm5<<imm2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Registersrdandrs1mustnotbethesame.
Instructionformat:
16.5.17 LHIB——The Halfword Load Instruction to Auto-increment the Base Address and Ex-
tendSignedBits
Syntax:
lhibrd,(rs1),imm5,imm2
Operation:
rs1←rs1+sign_extend(imm5<<imm2)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 321

Chapter16AppendixBXuanTieExtendedInstructions
rd←sign_extend(mem[rs1+1:rs1])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Registersrdandrs1mustnotbethesame.
Instructionformat:
16.5.18 LHUIA——TheHalfwordLoadInstructiontoAuto-incrementtheBaseAddressandEx-
tendZeroBits
Syntax:
lhuiard,(rs1),imm5,imm2
Operation:
rd←zero_extend(mem[rs1+1:rs1])
rs1←rs1+sign_extend(imm5<<imm2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Registersrdandrs1mustnotbethesame.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 322

Chapter16AppendixBXuanTieExtendedInstructions
16.5.19 LHUIB——TheHalfwordLoadInstructiontoAuto-incrementtheBaseAddressandEx-
tendZeroBits
Syntax:
lhuibrd,(rs1),imm5,imm2
Operation:
rs1←rs1+sign_extend(imm5<<imm2)
rd←zero_extend(mem[rs1+1:rs1])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Registersrdandrs1mustnotbethesame.
Instructionformat:
16.5.20 LRB——TheByteLoadInstructiontoShiftRegistersandExtendSignedBits
Syntax:
lrbrd,rs1,rs2,imm2
Operation:
rd←sign_extend(mem[(rs1+rs2<<imm2)])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 323

Chapter16AppendixBXuanTieExtendedInstructions
16.5.21 LRBU——TheByteLoadInstructiontoShiftRegistersandExtendZeroBits
Syntax:
lrburd,rs1,rs2,imm2
Operation:
rd←zero_extend(mem[(rs1+rs2<<imm2)])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Instructionformat:
16.5.22 LRD——TheDoublewordLoadInstructionwithRegisterShift
Syntax:
lrdrd,rs1,rs2,imm2
Operation:
rd←mem[(rs1+rs2<<imm2)+7: (rs1+rs2<<imm2)]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 324

Chapter16AppendixBXuanTieExtendedInstructions
16.5.23 LRH——TheHalfwordLoadInstructiontoShiftRegistersandExtendSignedBits
Syntax:
lrhrd,rs1,rs2,imm2
Operation:
rd←sign_extend(mem[(rs1+rs2<<imm2)+1: (rs1+rs2<<imm2)])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Instructionformat:
16.5.24 LRHU——TheHalfwordLoadInstructiontoShiftRegistersandExtendUnsignedBits
Syntax:
lrhurd,rs1,rs2,imm2
Operation:
rd←zero_extend(mem[(rs1+rs2<<imm2)+1: (rs1+rs2<<imm2)])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 325

Chapter16AppendixBXuanTieExtendedInstructions
16.5.25 LRW——TheWordLoadInstructiontoShiftRegistersandExtendSignedBits
Syntax:
lrwrd,rs1,rs2,imm2
Operation:
rd←sign_extend(mem[(rs1+rs2<<imm2)+3: (rs1+rs2<<imm2)])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Instructionformat:
16.5.26 LRWU——TheWordLoadInstructiontoShiftRegistersandExtendZeroBits
Syntax:
lrwurd,rs1,rs2,imm2
Operation:
rd←zero_extend(mem[(rs1+rs2<<imm2)+3: (rs1+rs2<<imm2)])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Instructionformat:
16.5.27 LURB——The Byte Load Instruction to Shift the Low 32 Bits of Registers and Extend
SignedBits
Syntax:
lurbrd,rs1,rs2,imm2
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 326

Chapter16AppendixBXuanTieExtendedInstructions
Operation:
rd←sign_extend(mem[(rs1+rs2[31:0]<<imm2)])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
rs2[31:0]isanunsignednumber,andtheupperbits[63:32]arefilledwithzerosforaddresscal-
culation.
Instructionformat:
16.5.28 LURBU——TheByteLoadInstructiontoShifttheLow32BitsofRegistersandExtend
ZeroBits
Syntax:
lurburd,rs1,rs2,imm2
Operation:
rd←zero_extend(mem[(rs1+rs2[31:0]<<imm2)])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
rs2[31:0]isanunsignednumber,andtheupperbits[63:32]arefilledwithzerosforaddresscal-
culation.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 327

Chapter16AppendixBXuanTieExtendedInstructions
16.5.29 LURD——TheDoublewordLoadInstructiontoShifttheLow32BitsofRegisters
Syntax:
lurdrd,rs1,rs2,imm2
Operation:
rd←mem[(rs1+rs2[31:0]<<imm2)+7: (rs1+rs2[31:0]<<imm2)]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
rs2[31:0]isanunsignednumber,andtheupperbits[63:32]arefilledwithzerosforaddresscal-
culation.
Instructionformat:
16.5.30 LURH——TheHalfwordLoadInstructiontoShifttheLow32BitsofRegistersandExtend
SignedBits
Syntax:
lurhrd,rs1,rs2,imm2
Operation:
rd←sign_extend(mem[(rs1+rs2[31:0]<<imm2)+1:
(rs1+rs2[31:0]<<imm2)])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 328

Chapter16AppendixBXuanTieExtendedInstructions
rs2[31:0]isanunsignednumber,andtheupperbits[63:32]arefilledwithzerosforaddresscal-
culation.
Instructionformat:
16.5.31 LURHU——TheHalfwordLoadInstructiontoShifttheLow32BitsofRegistersandEx-
tendZeroBits
Syntax:
lurhurd,rs1,rs2,imm2
Operation:
rd←zero_extend(mem[(rs1+rs2[31:0]<<imm2)+1:
(rs1+rs2[31:0]<<imm2)])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
rs2[31:0]isanunsignednumber,andtheupperbits[63:32]arefilledwithzerosforaddresscal-
culation.
Instructionformat:
16.5.32 LURW——TheWordLoadInstructiontoShifttheLow32BitsofRegistersandExtend
SignedBits
Syntax:
lurwrd,rs1,rs2,imm2
Operation:
rd←sign_extend(mem[(rs1+rs2[31:0]<<imm2)+3:
(rs1+rs2[31:0]<<imm2)])
Executepermission:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 329

Chapter16AppendixBXuanTieExtendedInstructions
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
rs2[31:0]isanunsignednumber,andtheupperbits[63:32]arefilledwithzerosforaddresscal-
culation.
Instructionformat:
16.5.33 LURWU——TheWordLoadInstructiontoShift32BitsofRegistersandExtendZeroBits
Syntax:
lurwurd,rs1,rs2,imm2
Operation:
rd←zero_extend(mem[(rs1+rs2[31:0]<<imm2)+3:(rs1+rs2[31:0]<<imm2)])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
rs2[31:0]isanunsignednumber
Instructionformat:
16.5.34 LWD——TheWordLoadInstructioninDoubleRegisterswithSignExtension
Syntax:
lwdrd1,rd2,(rs1),imm2
Operation:
address←rs1+zero_extend(imm2<<3)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 330

Chapter16AppendixBXuanTieExtendedInstructions
rd1←sign_extend(mem[address+3: address])
rd2←sign_extend(mem[address+7: address+4])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Thevaluesofrd1,rd2,rs1mustnotequaltoeachother.
Instructionformat:
16.5.35 LWIA——TheBase-addressAuto-incrementInstructiontoExtendSignedBitsandLoad
Words
Syntax:
lwiard,(rs1),imm5,imm2
Operation:
rd←sign_extend(mem[rs1+3:rs1])
rs1←rs1+sign_extend(imm5<<imm2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Registersrdandrs1mustnotbethesame.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 331

Chapter16AppendixBXuanTieExtendedInstructions
16.5.36 LWIB——TheWordLoadInstructiontoAuto-incrementtheBaseAddressandExtend
SignedBits
Syntax:
lwibrd,(rs1),imm5,imm2
Operation:
rs1←rs1+sign_extend(imm5<<imm2)
rd←sign_extend(mem[rs1+3:rs1])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Registersrdandrs1mustnotbethesame.
Instructionformat:
16.5.37 LWUD——TheWordLoadInstructioninDoubleRegistersWithZeroExtension
Syntax:
lwudrd1,rd2,(rs1),imm2
Operation:
address←rs1+zero_extend(imm2<<3)
rd1←zero_extend(mem[address+3: address])
rd2←zero_extend(mem[address+7: address+4])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 332

Chapter16AppendixBXuanTieExtendedInstructions
Thevaluesofrd1,rd2,rs1mustnotequaltoeachother.
Instructionformat:
16.5.38 LWUIA——TheBase-addressAuto-incrementInstructiontoExtendZeroBitsandLoad
words
Syntax:
lwuiard,(rs1),imm5,imm2
Operation:
rd←zero_extend(mem[rs1+3:rs1])
rs1←rs1+sign_extend(imm5<<imm2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Registersrdandrs1mustnotbethesame.
Instructionformat:
16.5.39 LWUIB——TheWordLoadInstructiontoAuto-incrementtheBaseaddressandExtend
zerobits
Syntax:
lwuibrd,(rs1),imm5,imm2
Operation:
rs1←rs1+sign_extend(imm5<<imm2)
rd←zero_extend(mem[rs1+3:rs1])
Executepermission:
M-mode/S-mode/U-mode
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 333

Chapter16AppendixBXuanTieExtendedInstructions
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Note:
Registersrdandrs1mustnotbethesame.
Instructionformat:
16.5.40 SBIA——TheByteStoreInstructionwithAuto-incrementBase-address
Syntax:
sbiars2,(rs1),imm5,imm2
Operation:
mem[rs1]←rs2[7:0]
rs1←rs1+sign_extend(imm5<<imm2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Instructionformat:
16.5.41 SBIB——TheByteStoreInstructiontoAuto-incrementtheBaseAddress
Syntax:
sbibrs2,(rs1),imm5,imm2
Operation:
rs1←rs1+sign_extend(imm5<<imm2)
mem[rs1]←rs2[7:0]
Executepermission:
M-mode/S-mode/U-mode
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 334

Chapter16AppendixBXuanTieExtendedInstructions
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Instructionformat:
16.5.42 SDD——DualRegisterStoreInstruction
Syntax:
sddrd1,rd2,(rs1),imm2,4
Operation:
address←rs1+zero_extend(imm2<<4)
mem[address+7:address]←rd1
mem[address+15:address+8]←rd2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Instructionformat:
16.5.43 SDIA——TheBase-addressAuto-incrementInstructiontoStoreDoublewords
Syntax:
sdiars2,(rs1),imm5,imm2
Operation:
mem[rs1+7:rs1]←rs2[63:0]
rs1←rs1+sign_extend(imm5<<imm2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 335

Chapter16AppendixBXuanTieExtendedInstructions
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Instructionformat:
16.5.44 SDIB——TheDoublewordStoreInstructiontoAuto-incrementtheBaseAddress
Syntax:
sdibrs2,(rs1),imm5,imm2
Operation:
rs1←rs1+sign_extend(imm5<<imm2)
mem[rs1+7:rs1]←rs2[63:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Instructionformat:
16.5.45 SHIA——TheBase-addressAuto-incrementInstructiontoStoreHalfwords
Syntax:
shiars2,(rs1),imm5,imm2
Operation:
mem[rs1+1:rs1]←rs2[15:0]
rs1←rs1+sign_extend(imm5<<imm2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 336

Chapter16AppendixBXuanTieExtendedInstructions
Instructionformat:
16.5.46 SHIB——TheHalfwordStoreInstructiontoAuto-incrementtheBaseAddress
Syntax:
shibrs2,(rs1),imm5,imm2
Operation:
rs1←rs1+sign_extend(imm5<<imm2)
mem[rs1+1:rs1]←rs2[15:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Instructionformat:
16.5.47 SRB——TheInstructiontoShiftandStoreBytesinRegisters
Syntax:
srbrd,rs1,rs2,imm2
Operation:
mem[(rs1+rs2<<imm2)]←rd[7:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 337

Chapter16AppendixBXuanTieExtendedInstructions
16.5.48 SRD——TheInstructiontoShiftandStoreDoublewordfromRegisters
Syntax:
srdrd,rs1,rs2,imm2
Operation:
mem[(rs1+rs2<<imm2)+7: (rs1+rs2<<imm2)]←rd[63:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Instructionformat:
16.5.49 SRH——TheInstructiontoShiftandStoreHalfwordinRegisters
Syntax:
srhrd,rs1,rs2,imm2
Operation:
mem[(rs1+rs2<<imm2)+1: (rs1+rs2<<imm2)]←rd[15:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 338

Chapter16AppendixBXuanTieExtendedInstructions
16.5.50 SRW——TheInstructiontoShiftandStoreWordinRegisters
Syntax:
srwrd,rs1,rs2,imm2
Operation:
mem[(rs1+rs2<<imm2)+3: (rs1+rs2<<imm2)]←rd[31:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Instructionformat:
16.5.51 SURB——TheByteStoreInstructiontoShifttheLow32BitsofRegisters
Syntax:
surbrd,rs1,rs2,imm2
Operation:
mem[(rs1+rs2[31:0]<<imm2)]←rd[7:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Note:
rs2[31:0]isanunsignednumber,andtheupperbits[63:32]arefilledwithzerosforaddresscal-
culation.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 339

Chapter16AppendixBXuanTieExtendedInstructions
16.5.52 SURD——TheDoublewordStoreInstructiontoShifttheLow32BitsofRegisters
Syntax:
surdrd,rs1,rs2,imm2
Operation:
mem[(rs1+rs2[31:0]<<imm2)+7: (rs1+rs2[31:0]<<imm2)]←rd[63:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Note:
rs2[31:0]isanunsignednumber,andtheupperbits[63:32]arefilledwithzerosforaddresscal-
culation.
Instructionformat:
16.5.53 SURH——TheHalfwordStoreInstructiontoShifttheLow32BitsofRegisters
Syntax:
surhrd,rs1,rs2,imm2
Operation:
mem[(rs1+rs2[31:0]<<imm2)+1: (rs1+rs2[31:0]<<imm2)]←rd[15:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Note:
rs2[31:0]isanunsignednumber,andtheupperbits[63:32]arefilledwithzerosforaddresscal-
culation.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 340

Chapter16AppendixBXuanTieExtendedInstructions
16.5.54 SURW——TheWordStoreInstructiontoShifttheLow32BitsofRegisters
Syntax:
surwrd,rs1,rs2,imm2
Operation:
mem[(rs1+rs2[31:0]<<imm2)+3: (rs1+rs2[31:0]<<imm2)]←rd[31:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Note:
rs2[31:0]isanunsignednumber,andtheupperbits[63:32]arefilledwithzerosforaddresscal-
culation.
Instructionformat:
16.5.55 SWIA——TheBase-addressAuto-incrementInstructiontoStoresWords
Syntax:
swiars2,(rs1),imm5,imm2
Operation:
mem[rs1+3:rs1]←rs2[31:0]
rs1←rs1+sign_extend(imm5<<imm2)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 341

Chapter16AppendixBXuanTieExtendedInstructions
16.5.56 SWIB——TheWordStoreInstructiontoAuto-incrementtheBaseAddress
Syntax:
swibrs2,(rs1),imm5,imm2
Operation:
rs1←rs1+sign_extend(imm5<<imm2)
mem[rs1+3:rs1]←rs2[31:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Instructionformat:
16.5.57 SWD——TheInstructiontoStoretheLow32BitsofDoubleRegisters
Syntax:
swdrd1,rd2,(rs1),imm2
Operation:
address←rs1+zero_extend(imm2<<3)
mem[address+3:address]←rd1[31:0]
mem[address+7:address+4]←rd2[31:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 342

Chapter16AppendixBXuanTieExtendedInstructions
16.6 Appendix B-6 Half-Precision Floating-Point Instructions
Thehalf-precisionfloating-pointinstructionsubsetimplementsthehalf-precisionfloating-point,
with32-bitwidthforeachinstruction,andthefollowinginstructionsarelistedinalphabeticorder.
16.6.1 FADD.H——TheHalf-precisionFloating-pointAddInstruction
Syntax:
fadd.hfd,fs1,fs2,rm
Operation:
fd←fs1+fs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbit: InvalidOperation(NV)/Overflow(OF)/Inexact(NX)
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfadd.hfd,fs1,fs2,rne.
• 3'b001: Rounds to zero. And the corresponding assembly instruction is fadd.h fd,
fs1,fs2,rtz.
• 3'b010: Roundstonegativeinfinity. Andthecorrespondingassemblyinstructionisfadd.h
fd,fs1,fs2,rdn.
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblyinstructionisfadd.h
fd,fs1,fs2,rup.
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfadd.hfd,fs1,fs2,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 343

Chapter16AppendixBXuanTieExtendedInstructions
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fadd.hfd,fs1,fs2.
Instructionformat:
16.6.2 FCLASS.H——TheHalf-precisionFloating-pointClassificationInstruction
Syntax:
fclass.hrd,fs1
Operation:
if(fs1=-inf)
rd←64'h1
if(fs1=-norm)
rd←64'h2
if(fs1=-subnorm)
rd←64'h4
if(fs1=-zero)
rd←64'h8
if(fs1=+zero)
rd←64'h10
if(fs1=+subnorm)
rd←64'h20
if(fs1=+norm)
rd←64'h40
if(fs1=+inf)
rd←64'h80
if(fs1=sNaN)
rd←64'h100
if(fs1=qNaN)
rd←64'h200
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 344

Chapter16AppendixBXuanTieExtendedInstructions
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
None
Instructionformat:
16.6.3 FCVT.H.L——The Instruction to Convert a Signed Long Integer into a Half-precision
Floating-pointNumber
Syntax:
fcvt.h.lfd,rs1,rm
Operation:
fd←signed_long_convert_to_half(rs1)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNX/OF
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfcvt.h.lfd,rs1,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblyinstructionisfcvt.h.lfd,rs1,rtz.
• 3'b010: Roundstonegativeinfinity. Andthecorrespondingassemblyinstructionisfcvt.h.l
fd,rs1,fdn.
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblyinstructionisfcvt.h.l
fd,rs1,rup.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 345

Chapter16AppendixBXuanTieExtendedInstructions
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfcvt.h.lfd,rs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fcvt.h.lfd,rs1.
Instructionformat:
16.6.4 FCVT.H.LU——TheInstructiontoConvertanUnsignedLongIntegerintoaHalf-precision
Floating-pointNumber
Syntax:
fcvt.h.lufd,rs1,rm
Operation:
fd←unsigned_long_convert_to_half_fp(rs1)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNX/OF
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfcvt.h.lufd,rs1,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblyinstructionisfcvt.h.lufd,rs1,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembly instruction is
fcvt.h.lufd,rs1,fdn.
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblyinstructionisfcvt.h.lu
fd,rs1,rup.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 346

Chapter16AppendixBXuanTieExtendedInstructions
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfcvt.h.lufd,rs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fcvt.h.lufd,rs1.
Instructionformat:
16.6.5 FCVT.H.S——The Instruction to Convert a Single Precision Floating-point Number to a
Half-precisionFloating-pointNumber
Syntax:
fcvt.h.sfd,fs1,rm
Operation:
fd←single_convert_to_half(fs1)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/OF/UF/NX
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfcvt.h.sfd,fs1,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblyinstructionisfcvt.h.sfd,fs1,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembly instruction is
fcvt.h.sfd,fs1,fdn.
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblyinstructionisfcvt.h.s
fd,fs1,rup.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 347

Chapter16AppendixBXuanTieExtendedInstructions
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfcvt.h.sfd,fs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fcvt.h.sfd,fs1.
Instructionformat:
16.6.6 FCVT.H.W——TheInstructiontoConvertaSignedIntegerintoaHalf-precisionFloating-
pointNumber
Syntax:
fcvt.h.wfd,rs1,rm
Operation:
fd←signed_int_convert_to_half(rs1)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNX/OF
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfcvt.h.wfd,rs1,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblyinstructionisfcvt.h.wfd,rs1,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembly instruction is
fcvt.h.wfd,rs1,fdn.
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblyinstructionisfcvt.h.w
fd,rs1,rup.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 348

Chapter16AppendixBXuanTieExtendedInstructions
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfcvt.h.wfd,rs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fcvt.h.wfd,rs1.
Instructionformat:
16.6.7 FCVT.H.WU——The Instruction to Convert an Unsigned Integer into a Half-precision
Floating-pointNumber
Syntax:
fcvt.h.wufd,rs1,rm
Operation:
fd←unsigned_int_convert_to_half_fp(rs1)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNX/OF
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfcvt.h.wufd,rs1,rne.
• 3'b001: Rounds to zero. And the corresponding assembly instruction is fcvt.h.wu
fd,rs1,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembly instruction is
fcvt.h.wufd,rs1,fdn.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 349

Chapter16AppendixBXuanTieExtendedInstructions
• 3'b011: Rounds to positive infinity. And the corresponding assembly instruction is
fcvt.h.wufd,rs1,rup.
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfcvt.h.wufd,rs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fcvt.h.wufd,rs1.
Instructionformat:
16.6.8 FCVT.L.H——TheInstructiontoConvertaHalf-precisionFloating-pointDatatoaSigned
LongInteger
Syntax:
fcvt.l.hrd,fs1,rm
Operation:
rd←half_convert_to_signed_long(fs1)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/NX
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfcvt.l.hrd,fs1,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblyinstructionisfcvt.l.hrd,fs1,rtz.
• 3'b010: Roundstonegativeinfinity. Andthecorrespondingassemblyinstructionisfcvt.l.h
rd,fs1,rdn.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 350

Chapter16AppendixBXuanTieExtendedInstructions
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblyinstructionisfcvt.l.h
rd,fs1,rup.
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfcvt.l.hrd,fs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fcvt.l.hrd,fs1.
Instructionformat:
16.6.9 FCVT.LU.H——TheInstructiontoConvertaHalf-precisionFloating-pointNumbertoan
UnsignedLongInteger
Syntax:
fcvt.lu.hrd,fs1,rm
Operation:
rd←half_convert_to_unsigned_long(fs1)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/NX
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfcvt.lu.hrd,fs1,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblyinstructionisfcvt.lu.hrd,fs1,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembly instruction is
fcvt.lu.hrd,fs1,rdn.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 351

Chapter16AppendixBXuanTieExtendedInstructions
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblyinstructionisfcvt.lu.h
rd,fs1,rup.
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfcvt.lu.hrd,fs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fcvt.lu.hrd,fs1.
Instructionformat:
16.6.10 FCVT.S.H——The Instruction to Convert a Half-precision Floating-point Number to a
SinglePrecisionFloating-pointNumber
Syntax:
fcvt.s.hfd,fs1
Operation:
fd←half_convert_to_single(fs1)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
None
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 352

Chapter16AppendixBXuanTieExtendedInstructions
16.6.11 FCVT.W.H——The Instruction to Convert a Half-precision Floating-point Number to a
SignedInteger
Syntax:
fcvt.w.hrd,fs1,rm
Operation:
tmp←half_convert_to_signed_int(fs1)
rd←sign_extend(tmp)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/NX
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfcvt.w.hrd,fs1,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblyinstructionisfcvt.w.hrd,fs1,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembly instruction is
fcvt.w.hrd,fs1,rdn.
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblyinstructionisfcvt.w.h
rd,fs1,rup.
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfcvt.w.hrd,fs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fcvt.w.hrd,fs1.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 353

Chapter16AppendixBXuanTieExtendedInstructions
16.6.12 FCVT.WU.H——TheInstructiontoConvertaHalf-precisionFloating-pointNumbertoan
UnsignedInteger
Syntax:
fcvt.wu.hrd,fs1,rm
Operation:
tmp←half_convert_to_unsigned_int(fs1)
rd←sign_extend(tmp)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/NX
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfcvt.wu.hrd,fs1,rne.
• 3'b001: Rounds to zero. And the corresponding assembly instruction is fcvt.wu.h
rd,fs1,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembly instruction is
fcvt.wu.hrd,fs1,rdn.
• 3'b011: Rounds to positive infinity. And the corresponding assembly instruction is
fcvt.wu.hrd,fs1,rup.
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfcvt.wu.hrd,fs1,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 354

Chapter16AppendixBXuanTieExtendedInstructions
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fcvt.wu.hrd,fs1.
Instructionformat:
16.6.13 FDIV.H——TheHalf-precisionFloating-pointDivideInstruction
Syntax:
fdiv.hfd,fs1,fs2,rm
Operation:
fd←fs1/fs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/DZ/OF/UF/NX
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfdiv.hfs1,fs2,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblyinstructionisfdiv.hfdfs1,fs2,rtz.
• 3'b010: Roundstonegativeinfinity. Andthecorrespondingassemblyinstructionisfdiv.h
fd,fs1,fs2,rdn.
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblyinstructionisfdiv.h
fd,fs1,fs2,rup.
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfdiv.hfd,fs1,fs2,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 355

Chapter16AppendixBXuanTieExtendedInstructions
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fdiv.hfd,fs1,fs2.
Instructionformat:
16.6.14 FEQ.H——TheCompare-if-equal-toInstructionofHalf-precisionFloating-PointNum-
bers
Syntax:
feq.hrd,fs1,fs2
Operation:
if(fs1==fs2)
rd←1
else
rd←0
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV
Instructionformat:
16.6.15 FLE.H——TheCompare-if-less-than-or-equal-toInstructionofHalf-precisionFloating-
PointNumbers
Syntax:
fle.hrd,fs1,fs2
Operation:
if(fs1<=fs2)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 356

Chapter16AppendixBXuanTieExtendedInstructions
rd←1
else
rd←0
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV
Instructionformat:
16.6.16 FLH——TheHalf-precisionFloating-pointLoadInstruction
Syntax:
flhfd,imm12(rs1)
Operation:
address←rs1+sign_extend(imm12)
fd[15:0]←mem[(address+1):address]
fd[63:16]←48'hffffffffffff
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for load in-
structions,andtheillegalinstructionexception.
Affectedflag:
None
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 357

Chapter16AppendixBXuanTieExtendedInstructions
16.6.17 FLT.H——TheCompare-if-less-thanInstructionofHalf-precisionFloating-PointNum-
bers
Syntax:
flt.hrd,fs1,fs2
Operation:
if(fs1<fs2)
rd←1
else
rd←0
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV
Instructionformat:
16.6.18 FMADD.H——TheHalf-precisionFloating-pointMultiply-addInstruction
Syntax:
fmadd.hfd,fs1,fs2,fs3,rm
Operation:
fd←fs1*fs2+fs3
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/OF/UF/IX
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 358

Chapter16AppendixBXuanTieExtendedInstructions
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfmadd.hfd,fs1,fs2,fs3,rne.
• 3'b001: Rounds to zero. And the corresponding assembly instruction is fmadd.h fd,fs1,
fs2,fs3,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembly instruction is
fmadd.hfd,fs1,fs2,fs3,rdn.
• 3'b011: Rounds to positive infinity. And the corresponding assembly instruction is
fmadd.hfd,fs1,fs2,fs3,rup.
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfmadd.hfd,fs1,fs2,fs3,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fmadd.hfd,fs1,fs2,fs3.
Instructionformat:
16.6.19 FMAX.H——TheHalf-precisionFloating-pointMaximumInstruction
Syntax:
fmax.hfd,fs1,fs2
Operation:
if(fs1>=fs2)
fd←fs1
else
fd←fs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 359

Chapter16AppendixBXuanTieExtendedInstructions
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV
Instructionformat:
16.6.20 FMIN.H——TheHalf-precisionFloating-pointMinimumInstruction
Syntax:
fmin.hfd,fs1,fs2
Operation:
if(fs1>=fs2)
fd←fs2
else
fd←fs1
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV
Instructionformat:
16.6.21 FMSUB.H——TheHalf-precisionFloating-pointMultiply-subtractInstruction
Syntax:
fmsub.hfd,fs1,fs2,fs3,rm
Operation:
fd←fs1*fs2-fs3
Executepermission:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 360

Chapter16AppendixBXuanTieExtendedInstructions
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/OF/UF/IX
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfmsub.hfd,fs1,fs2,fs3,rne.
• 3'b001: Rounds to zero. And the corresponding assembly instruction is fmsub.h fd,fs1,
fs2,fs3,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembly instruction is fm-
sub.hfd,fs1,fs2,fs3,rdn.
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblyinstructionisfmsub.h
fd,fs1,fs2,fs3,rup.
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfmsub.hfd,fs1,fs2,fs3,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fmsub.hfd,fs1,fs2,fs3.
Instructionformat:
16.6.22 FMUL.H——TheHalf-precisionFloating-pointMultiplyInstruction
Syntax:
fmul.hfd,fs1,fs2,rm
Operation:
fd←fs1*fs2
Executepermission:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 361

Chapter16AppendixBXuanTieExtendedInstructions
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/OF/UF/NX
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfmul.hfd,fs1,fs2,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblyinstructionisfmul.hfd,fs1,fs2,
rtz.
• 3'b010: Roundstonegativeinfinity. Andthecorrespondingassemblyinstructionisfmul.h
fd,fs1,fs2,rdn.
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblyinstructionisfmul.h
fd,fs1,fs2,rup.
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfmul.hfd,fs1,fs2,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fmul.hfs1,fs2.
Instructionformat:
16.6.23 FMV.H.X——TheHalfPrecisionFloating-pointWriteTransferInstruction
Syntax:
fmv.h.xfd,rs1
Operation:
fd[15:0]←rs1[15:0]
fd[63:16]←48'hffffffffffff
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 362

Chapter16AppendixBXuanTieExtendedInstructions
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
None
Instructionformat:
16.6.24 FMV.X.H——TheHalfPrecisionFloating-pointReadTransferInstruction
Syntax:
fmv.x.hrd,fs1
Operation:
tmp[15:0]←fs1[15:0]
rd←sign_extend(tmp[15:0])
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
None
Instructionformat:
16.6.25 FNMADD.H——TheHalf-precisionFloating-pointNegate-(Multiply-add)Instruction
Syntax:
fnmadd.hfd,fs1,fs2,fs3,rm
Operation:
fd←-(fs1*fs2+fs3)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 363

Chapter16AppendixBXuanTieExtendedInstructions
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/OF/UF/IX
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfnmadd.hfd,fs1,fs2,fs3,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblyinstructionisfnmadd.hfd,fs1,
fs2,fs3,rtz.
• 3'b010: Rounds to negative infinity. And the corresponding assembly instruction is fn-
madd.hfd,fs1,fs2,fs3,rdn.
• 3'b011: Rounds to positive infinity. And the corresponding assembly instruction is fn-
madd.hfd,fs1,fs2,fs3,rup.
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfnmadd.hfd,fs1,fs2,fs3,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fnmadd.hfd,fs1,fs2,fs3.
Instructionformat:
16.6.26 FNMSUB.H——The Half-precision Floating-point Negate-(Multiply-subtract) Instruc-
tion
Syntax:
fnmsub.hfd,fs1,fs2,fs3,rm
Operation:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 364

Chapter16AppendixBXuanTieExtendedInstructions
fd←-(fs1*fs2-fs3)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/OF/UF/IX
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfnmsub.hfd,fs1,fs2,fs3,rne.
• 3'b001: Roundstozero. Andthecorrespondingassemblyinstructionisfnmsub.hfd,fs1,
fs2,fs3,rtz.
• 3'b010: Roundstonegativeinfinity. Andthecorrespondingassemblyinstructionisfnm-
sub.hfd,fs1,fs2,fs3,rdn.
• 3'b011: Rounds to positive infinity. And the corresponding assembly instruction is fnm-
sub.hfd,fs1,fs2,fs3,rup.
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfnmsub.hfd,fs1,fs2,fs3,rmm.
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fnmsub.hfd,fs1,fs2,fs3.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 365

Chapter16AppendixBXuanTieExtendedInstructions
16.6.27 FSGNJ.H——TheHalf-precisionFloating-pointSign-injectionInstruction
Syntax:
fsgnj.hfd,fs1,fs2
Operation:
fd[14:0]←fs1[14:0]
fd[15]←fs2[15]
fd[63:16]←48'hffffffffffff
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
None
Instructionformat:
16.6.28 FSGNJN.H——TheHalf-precisionFloating-pointSign-injectionNegateInstruction
Syntax:
fsgnjn.hfd,fs1,fs2
Operation:
fd[14:0]←fs1[14:0]
fd[15]←! fs2[15]
fd[63:16]←48'hffffffffffff
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
None
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 366

Chapter16AppendixBXuanTieExtendedInstructions
Instructionformat:
16.6.29 FSGNJX.H——TheHalf-precisionFloating-pointSignXORInjectionInstruction
Syntax:
fsgnjx.hfd,fs1,fs2
Operation:
fd[14:0]←fs1[14:0]
fd[15]←fs1[15]^fs2[15]
fd[63:16]←48'hffffffffffff
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
None
Instructionformat:
16.6.30 FSH——TheHalf-precisionFloating-pointStoreInstruction
Syntax:
fshfs2,imm12(fs1)
Operation:
address←fs1+sign_extend(imm12)
mem[(address+1):address]←fs2[15:0]
Executepermission:
M-mode/S-mode/U-mode
Exception:
Unaligned access exceptions, access error exceptions, and page error exceptions for store in-
structions,andtheillegalinstructionexception.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 367

Chapter16AppendixBXuanTieExtendedInstructions
Instructionformat:
16.6.31 FSQRT.H——TheSquareRootInstructionofHalf-precisionFloating-point
Syntax:
fsqrt.hfd,fs1,rm
Operation:
fd←sqrt(fs1)
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/NX
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfsqrt.hfd,fs1,rne
• 3'b001: Roundstozero. Andthecorrespondingassemblyinstructionisfsqrt.hfd,fs1,rtz
• 3'b010: Roundstonegativeinfinity. Andthecorrespondingassemblyinstructionisfsqrt.h
fd,fs1,rdn
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblyinstructionisfsqrt.h
fd,fs1,rup
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfsqrt.hfd,fs1,rmm
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fsqrt.hfd,fs1.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 368

Chapter16AppendixBXuanTieExtendedInstructions
16.6.32 FSUB.H——TheHalf-precisionFloating-pointSubtractInstruction
Syntax:
fsub.hfd,fs1,fs2,rm
Operation:
fd←fs1-fs2
Executepermission:
M-mode/S-mode/U-mode
Exception:
Theillegalinstructionexception
Affectedflag:
Floating-pointstatusbitNV/OF/NX
Note:
rmdeterminestheroundingmode:
• 3'b000: Roundstothenearestevennumber. Andthecorrespondingassemblyinstruction
isfsub.hfd,fs1,fs2,rne
• 3'b001: Rounds to zero. And the corresponding assembly instruction is fsub.h fd,
fs1,fs2,rtz
• 3'b010: Roundstonegativeinfinity. Andthecorrespondingassemblyinstructionisfsub.h
fd,fs1,fs2,rdn
• 3'b011: Roundstopositiveinfinity. Andthecorrespondingassemblyinstructionisfsub.h
fd,fs1,fs2,rup
• 3'b100: Roundstothenearestlargevalue. Andthecorrespondingassemblyinstruction
isfsub.hfd,fs1,fs2,rmm
• 3'b101: Thiscodeisreservedandnotused.
• 3'b110: Thiscodeisreservedandnotused.
• 3'b111: Dynamic rounding, which determines the rounding mode based on the rm bit
inthefloating-pointcontrolregisterfcsr. Andthecorrespondingassemblyinstructionis
fsub.hfd,fs1,fs2.
Instructionformat:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 369

Chapter16AppendixBXuanTieExtendedInstructions
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 370

Chapter17AppendixCControlandStatusRegisters(CSRs)
17 Appendix C Control and Status Registers (CSRs)
This section describes the Machine-level CSRs, Supervisor-level (S-mode) CSRs, and User-level
(U-mode)CSRsindetails.
17.1 Appendix C-1 Machine-level Control and Status Regitsers (CSRs)
Machine-level CSRs are categorized by functionality into: Machine Information Register Group,
Machine Exception Configuration Register Group, Machine Exception Handling Register Group,
MachineMemoryProtectionRegisterGroup,MachineCounters，andMachineCounterConfigu-
rationRegisterGroup.
17.1.1 MachineInformationRegisterBank
17.1.1.1 MachineVendorIDregister(MVENDORID)
TheMVENDORIDregisterstoresthevendorIDsofXuanTieCPU,currentlyboundto0x5B7.
Thisregisteris64-bitwideandread-onlyinM-mode. Accessesinnon-machinemodeandwrites
inMachineMode(M-mode)willcauseanillegalinstructionexception.
17.1.1.2 MachineArchitectureIDregister(MARCHID)
TheMARCHIDregisterstoresthearchitectureIDsofCPUcores. ItstorestheinternalIDsofXuanTie
CPUanditsresetvalueissubjecttotheproduct.
Thisregisteris64-bitwideandread-onlyinM-mode. Accessesinnon-machinemodeandwrites
inM-modewillcauseanillegalinstructionexception.
17.1.1.3 MachineHardwareImplementationIDregister(MIMPID)
The MIMPID register stores hardware implementation IDs of CPU cores. This register has been
implementedinC910,andreadsaszero.
This register is 64-bit wide and is read-only in M-mode. Accesses in non-machine mode and
writesinM-modewillcauseanillegalinstructionexception.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 371

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.1.1.4 MachineHartIDRegister(MHARTID)
MHARTIDstoresthehardwarelogiccorenumberofCPUcores.
This register is 64-bit wide and is read-only in M-mode. Accesses in non-machine mode and
writesinM-modewillcauseanillegalinstructionexception.
17.1.2 MachineExceptionConfigurationRegisterBank
17.1.2.1 MachineStatusRegister(MSTATUS)
TheMSTATUSregisterstoresstatusandcontrolinformationoftheCPUinM-mode,includingthe
globalinterruptenablebit,exceptionpreserveinterruptenablebit,exceptionpreserveprivilege
modebitandsoon.
This register is 64-bit wide and is readable and writable in M-mode. Accesses in non-machine
modewillcauseanillegalinstructionexception.
Fig.17.1: MachineStatusRegister(MSTATUS)
SIE——S-modeinterruptenablebit:
• WhenSIEissetto0,S-modeinterruptsaredisabled.
• WhenSIEissetto1,S-modeinterruptsareenabled.
Thisbitisresetto0whentheCPUisdelegatedtotheS-modeinresponsetointerrupts,
andissettothevalueofSPIEwhentheCPUexitstheinterruptserviceroutine(ISR).
MIE——M-modeinterruptenablebit:
• WhenMIEissetto0,M-modeinterruptsaredisabled.
• WhenMIEissetto1,M-modeinterruptsareenabled.
Thisbitisresetto0whentheCPUrespondstoaninterruptinM-mode. Anditissettothe
valueofMPIEwhentheCPUexitstheISR.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 372

Chapter17AppendixCControlandStatusRegisters(CSRs)
SPIE——S-modepreservedinterruptenablebit:
This bit stores the value of the SIE bit before the CPU responds to an interrupt in S-
mode.
Thisbitwillberesetto0,andsetto1whentheCPUexitstheISR.
MPIE——M-modepreservedinterruptenablebit:
This bit stores the value of the MIE bit before the CPU responds to an interrupt in M-
mode.
Thisbitwillberesetto0,andsetto1whentheCPUexitstheISR.
SPP——S-modeprivilegedpreservedstatusbit:
ThisbitstorestheprivilegestatusbeforetheCPUaccessestheexceptionservicepro-
graminS-mode.
• When SPP is 2'b00, the CPU is in User Mode (U-mode) before accessing the exception
serviceprogram.
• WhenSPPis2'b01,theCPUisinS-modebeforeaccessingtheexceptionserviceprogram.
Thisbitwillberesetto2'b01.
MPP——M-modeprivilegedpreservedstatusbit:
ThisbitstorestheprivilegestatusbeforetheCPUaccessestheexceptionservicepro-
graminM-mode.
• WhenMPPis2'b00,theCPUisinU-modebeforeenteringtheexceptionserviceprogram.
• WhenMPPis2'b01,theCPUisinS-modebeforeaccessingtheexceptionserviceprogram.
• WhenMPPis2'b11,theCPUisinM-modebeforeenteringtheexceptionserviceprogram.
Thisbitwillberesetto2'b11.
FS——Floating-pointstatusbit
Thisbitdetermineswhethertostorefloating-pointregistersduringcontextswitching.
• When FS is 2'b00, the floating-point unit is in the Off state and exceptions will occur for
accessestotherelatedfloating-pointregisters.
• WhenFSis2'b01,thefloating-pointunitisintheInitialstate.
• WhenFSis2'b10,thefloating-pointunitisintheCleanstate.
• WhenFSis2'b11,thefloating-pointunitisintheDirtystate,whichindicatesthefloating-
pointregisterandCSRshavebeenmodified.
XS——Extendedunitstatusbit:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 373

Chapter17AppendixCControlandStatusRegisters(CSRs)
ExtensionunitsarenotavailableinC910,andthereforethisbitisfixedto0.
MPRV——Modifyprivilegemode:
• WhenMPRVissetto1,loadandstorerequestsareexecutedbasedontheprivilegemode
inMPP.
• WhenMPRVissetto0,loadandstorerequestsareexecutedbasedonthecurrentprivilege
modeoftheCPU.
SUM——AllowS-modeaccessestoU-modevirtualmemoryspaces:
• WhenSUMissetto1,load,store,andfetchrequestscanbeinitiatedinS-modetoaccess
virtualmemoryareasthataremarkedasU-mode.
• When SUM is set to 0, load, store, and fetch requests cannot be initiated in S-mode to
accessvirtualmemoryareasthataremarkedasU-mode.
MXR——Allowaccessesofloadrequeststomemoryspacesmarkedasexecutable:
• When MXR is set to 1, accesses of load requests are allowed to virtual memory spaces
markedasexecutableorreadable.
• WhenMXRissetto0,accessesofloadrequestsareallowedonlytovirtualmemoryspaces
markedasreadable.
TVM——Trapintovirtualmemory:
• When TVM is set to 1, reads and writes to the satp CSRs and the execution of the sfence
instructioninS-modewilloccurillegalinstructionexceptions.
• WhenTVMisset to0, readsandwritesto thesatpCSRs andtheexecutionofthesfence
instructionareallowedinS-mode.
TW——Timeoutwait:
• WhenTWissetto1,anillegalinstructionexceptionoccursiftheWFIinstructionisexecuted
inS-mode.
• WhenTWissetto0,theWFIinstructioncanbeexecutedinS-mode.
TSR——Trapsret:
• When TSR is set to 1, an illegal instruction exception occurs if the sret instruction is exe-
cutedinS-mode.
• WhenTSRissetto0,thesretinstructioncanbeexecutedinS-mode.
VS——Vectorstatusbit:
VSbitdetermineswhethertostorevectorregistersduringcontextswitching.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 374

Chapter17AppendixCControlandStatusRegisters(CSRs)
• When VS is set to 2'b00, the vector unit is in the Off state and exceptions will occur for
accessestorelatedvectorregisters.
• WhenVSissetto2'b01,thevectorunitisintheInitialstate.
• WhenVSissetto2'b10,thevectorunitisintheCleanstate.
• When VS is set to 2'b11, the vector unit is in the Dirty state, which indicates the vector
registersandvectorCSRshavebeenmodified.
The VS bit is enabled only when the vector execution unit is configured, otherwise it is
always0.
UXL——Registerwidth:
This bit is read-only and the fixed value is 2, indicating the register is 64-bit wide in
U-mode.
SXL——Registerwidth:
This bit is read-only and the fixed value is 2, indicating the register is 64-bit wide in
S-mode.
SD——Thedirtystatesumbitofthefloating-point,vector,andextensionunits:
• WhenSDissetto1,thefloating-pointunitorvectorunit,orextensionunitisintheDirty
state.
• WhenSDissetto0,noneofthefloating-point,vector,andextensionunitsisintheDirty
state.
17.1.2.2 MachineInstructionSetArchitectureRegister(MISA)
ThemisaregisterstoresthefeaturesoftheinstructionsetarchitecturesupportedbytheCPU.
This register is 64-bit wide and is readable and writable in M-mode. Accesses in non-machine
modewillcauseanillegalinstructionexception.
C910supportstheRV64GCinstructionsetarchitecture,andtheresetvalueoftheMISAregisteris
0x800000000094112d. Fordetailedinformationabouttheassignmentrules,pleaserefertothe
officialdocumentofRISC-V——riscv-privileged.
C910doesnotsupportthedynamicconfigurationoftheMISAregisterandwritestothisregister
donottakeeffect.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 375

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.1.2.3 MachineExceptionDelegationControlRegister(MEDELEG)
The MEDELEG register can delegate exceptions that occur in S-mode and U-mode to S-mode
for responses. The lower 16 bits of the MEDELEG register are in one-to-one correspondence to
exceptionvectortables,supportingthedelegationofexceptionstobehandledinS-Mode.
This register is 64-bit wide and is readable and writable in M-mode. Accesses in non-machine
modewillcauseanillegalinstructionexception.
17.1.2.4 MachineInterruptDelegationControlRegister(MIDELEG)
TheMIDELEGregistercandelegateS-modeinterruptstoU-modeforresponses.
Fig.17.2: MachineInterruptDelegationControlRegister(MIDELEG)
This register is 64-bit wide and is readable and writable in M-mode. Accesses in non-machine
modewillcauseanillegalinstructionexception.
17.1.2.5 MachineInterruptEnableRegister(MIE)
TheMIEregisterenablesandmasksdifferenttypesofinterrupts. Thisregisteris64-bitwideand
is readable and writable in M-mode. Accesses in non-machine mode will cause an illegal in-
structionexception.
Fig.17.3: MachineInterruptEnableRegister(MIE)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 376

Chapter17AppendixCControlandStatusRegisters(CSRs)
SSIE——S-modesoftwareinterruptenablebit:
• WhenSSIEissetto0,S-modesoftwareexternalinterruptsaredisabled.
• WhenSSIEissetto1,S-modesoftwareexternalinterruptsareenabled.
MSIE——M-modesoftwareinterruptenablebit:
• WhenMSIEissetto0,M-modesoftwareinterruptsaredisabled.
• WhenMSIEissetto1,M-modesoftwareinterruptsareenabled.
STIE——S-modetimerinterruptenablebit:
• WhenSTIEissetto0,S-modetimerinterruptsaredisabled.
• WhenSTIEissetto1,S-modetimerexternalinterruptsareenabled.
MTIE——M-modetimerinterruptenablebit:
• WhenMTIEissetto0,M-modetimerinterruptsaredisabled.
• WhenMTIEissetto1,M-modetimerinterruptsareenabled.
SEIE——S-modeexternalinterruptenablebit:
• WhenSEIEissetto0,S-modeexternalinterruptsaredisabled.
• WhenSEIEissetto1,S-modeexternalinterruptsareenabled.
MEIE——M-modeexternalinterruptenablebit:
• WhenMEIEissetto0,M-modeexternalinterruptsaredisabled.
• WhenMEIEissetto1,M-modeexternalinterruptsareenabled.
MCIE——M-modeECCandBUSERRORinterruptenablebit:
• WhenMCIEissetto0,M-modeECCandBUSERRORinterruptsaredisabled.
• WhenMCIEissetto1,M-modeECCandBUSERRORinterruptsareenabled.
MOIE——M-modeeventcounteroverflowinterruptenablebit:
• WhenMOIEissetto0,M-modecounteroverflowinterruptsaredisabled.
• WhenMOIEissetto1,M-modecounteroverflowinterruptsareenabled.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 377

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.1.2.6 MachineVectorBaseAddress(MTVEC)
TheMTVECstorestheentryaddressoftheexceptionserviceprogram.
This register is 64-bit wide and is readable and writable in M-mode. Accesses in non-machine
modewillcauseanillegalinstructionexception.
Fig.17.4: MachineVectorBaseAddress(MTVEC)
BASE——Vectorbaseaddressbit:
TheBASEbitindicatestheupper62bitsoftheentryaddressoftheexceptionservice
program. Combining this base address with 2'b00 obtains the entry address of the
exceptionserviceprogram.
Thisbitwillberesetto0.
MODE——Vectorentrymodebit:
• WhenMODE[1:0]issetto2'b00,theBASEaddressisappliedastheentryaddressforboth
exceptionsandinterrupts.
• WhenMODE[1:0]issetto2'b01,theBASEaddressisappliedastheentryaddressforex-
ceptions,whileBASE+4*causeisusedastheentryaddressforinterrupts
17.1.2.7 MachineCounterEnableRegister(MCOUNTEREN)
ThemcounterenregisterdetermineswhetherU-modecounterscanbeaccessedinS-mode.
Fordetailedinformation,pleaserefertoperformance_test.
17.1.3 MachineExceptionHandlingRegisterBank
17.1.3.1 MachineScratchRegisterforExceptionTemporaryDataBackup(MSCRATCH)
TheMSCRATCHisappliedinexceptionserviceroutinesforthebackupoftemporarydataandto
storetheentrypointervalueoflocalcontextspaceinM-modeingeneral.
This register is 64-bit wide and is readable and writable in M-mode. Accesses in non-machine
modewillcauseanillegalinstructionexception.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 378

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.1.3.2 MachineExceptionProgramCounterRegister(MEPC)
TheMEPCregisterstorestheprogramcountervalue(PCvalue)whentheCPUexitsfromtheex-
ceptionserviceprogram. C920supports16-bitwideinstructions. TheMEPCvalueisalignedwith
16bitswiththelowestbit0.
This register is 64-bit wide and is readable and writable in M-mode. Accesses in non-machine
modewillcauseanillegalinstructionexception.
17.1.3.3 MachineExceptionCauseRegister(MCAUSE)
TheMCAUSEregisterstoresthevectornumbersofeventsthattriggerexceptions,tohandlecor-
respondingeventsintheexceptionserviceprogram.
This register is 64-bit wide and is readable and writable in M-mode. Accesses in non-machine
modewillcauseanillegalinstructionexception.
Fig.17.5: MachineExceptionCauseRegister(MCAUSE)
Interrupt——Interruptflag:
• WhentheInterruptbitissetto0,thesourceofthetriggeringexceptionisnotaninterrupt;
instead,theExceptionCodeisinterpretedaccordingtotheexceptionresolutionprocess.
• WhentheInterruptbitissetto1,thecorrespondingexceptionistriggeredbyaninterrupt.
Theexceptioncodeisisinterpretedaccordingtointerruptresolution.
ExceptionCode——Exceptionvectornumber:
When the CPU encounters an exception, the Exception Code bit will be updated to the value of
theexceptionsource.
17.1.3.4 MachineInterruptPendingRegister(MIP)
The MIP register stores the pending interrupt information. When the CPU cannot immediately
respondtoaninterrupt,thecorrespondingbitinthemipregisterwillbeset.
Writing the MSIP and SSIP registers in the CLINT interrupt controller can trigger corresponding
interrupts. Aftertheinterruptsbecomevalid,theMSIPbitandSSIPbitcanbequeriedbasedon
thecorrespondingbitsintheMIPregister.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 379

Chapter17AppendixCControlandStatusRegisters(CSRs)
This register is 64-bit wide and is readable and writable in M-mode. Accesses in non-machine
modewillcauseanillegalinstructionexception.
Fig.17.6: MachineInterruptPendingRegister(MIP)
SSIP——S-modesoftwareinterruptpendingbit:
• WhenSSIPissetto0,thereisnopendingS-modesoftwareinterruptontheCPU.
• WhenSSIPissetto1,therearependingS-modesoftwareinterruptsontheCPU.
The SSIP bit is readable and writable in M-mode. After it is delegated to S-mode, it is
readableandwritableinS-mode. Otherwise,itisread-onlyinS-mode.
MSIP——M-modesoftwareinterruptpendingbit:
• WhenMSIPissetto0,thereisnopendingM-modesoftwareinterruptontheCPU.
• WhenMSIPissetto1,therearependingM-modesoftwareinterruptsontheCPU.
Thisbitisread-only.
STIP——S-modetimerinterruptpendingbit:
• WhenSTIPissetto0,thereisnopendingS-modetimerinterruptontheCPU.
• WhenSTIPissetto1,therearependingS-modetimerinterruptsontheCPU.
MTIP——M-modetimerinterruptpendingbit:
• WhenMTIPissetto0,thereisnopendingM-modetimerinterruptontheCPU.
• WhenMTIPissetto1,therearependingM-modetimerinterruptsontheCPU.
SEIP——S-modeexternalinterruptpendingbit:
• WhenSEIPissetto0,thereisnopendingS-modeexternalinterruptontheCPU.
• WhenSEIPissetto1,therearependingS-modeexternalinterruptsontheCPU.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 380

Chapter17AppendixCControlandStatusRegisters(CSRs)
MEIP——M-modeexternalinterruptpendingbit:
• WhenMEIPissetto0,thereisnopendingM-modeexternalinterruptontheCPU.
• WhenMEIPissetto1,therearependingM-modeexternalinterruptsontheCPU.
MCIP——M-modeECCandBUSERRORinterruptpendingbit:
• When MCIP is set to 0, there are no pending M-mode ECC and BUS ERROR interrupts on
theCPU.
• When MCIP is set to 1, there are pending M-mode ECC and BUS ERROR interrupts on the
CPU.
MOIP——M-modeeventcounteroverflowinterruptpendingbit:
• WhenMOIPissetto0,thereisnopendingM-modecounteroverflowinterruptontheCPU.
• WhenMOIPissetto1,therearependingM-modecounteroverflowinterruptsontheCPU.
17.1.4 MachineMemoryProtectionRegisterBank
MachinememoryprotectionregisterbankisassociatedwithconfiguringtheMemoryProtection
Unit(MPU).
17.1.4.1 MachinePhysicalMemoryProtectionConfigurationRegiste(PMPCFG)
The PMPCFG register is designed to configure the access permissions and address matching
modesofphysicalmemory.
This register is 64-bit wide and is readable and writable in M-mode. Accesses in non-machine
modewillcauseanillegalinstructionexception.
Fordetailedinformation,pleaserefertoPMPCFGRegister.
17.1.4.2 MachinePhysicalMemoryProtectionAddressRegister(PMPADDR)
ThePMPADDRregisterisdesignedtoconfiguretheaddressrangeforeachentryofphysicalmem-
ory.
This register is 64-bit wide and is readable and writable in M-mode. Accesses in non-machine
modewillcauseanillegalinstructionexception.
Fordetailedinformation,pleaserefertoPMPADDRRegister.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 381

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.1.5 MachineCounterRegisterBank
MachinecounterregisterbankbelongstoPerformanceMonitorUnit(PMU),usedtocollectsoft-
wareinformationandcertainhardwareinformationduringprogramexecution,toassistsoftware
developersinoptimizingtheirprogram
17.1.5.1 MachineCycleCounter(MCYCLE)
The MCYCLE register stores the number of cycles already executed by the processor. When the
processorisinanexecutionstate(i.e.,notinalow-powerstate),theMCYCLEregisterincrements
itscountoneachclockcycle.
TheMCYCLEcounteris64-bitwideandwillberesetto0.
Fordetailedinformation,pleaserefertoEventCounters.
17.1.5.2 MachineInstructionRetireCounter(MINSTRET)
TheMINSTRETregisterstoresthenumberofretiredinstructionsoftheCPU.TheMINSTRETregister
incrementsitscountoneachinstructionretirement.
Theminstretcounteris64-bitwideandwillberesetto0.
Fordetailedinformation,pleaserefertoEventCounters.
17.1.5.3 MachineEventCounter(MHPMCOUNTERn)
Themhpmcounterncountercountsevents.
Themhpmcounterncounteris64-bitwideandwillberesetto0.
Fordetailedinformation,pleaserefertoEventCounters.
17.1.6 MachineCounterConfigurationRegisterBank
Themachinecounterconfigurationregisterselectseventsformachineeventcounters.
17.1.6.1 MachineEventSelecter(MHPMEVENTn)
The Machine Counter Configuration Registers (MHPMEVENTn) are used to select events for the
machine-mode event counters, where mhpmevent3-31 and mhpmcounter3-31 have a one-to-
one correspondence. In the C910, each event counter can only count fixed events; therefore,
mhpmevent3-31canonlybewrittenwithspecificpredefinedvalues.
The64-biteventselectordefinesthecountingbehavior,andthecyclecounterisclearedtozero
uponreset.
Fordetailedinformation,pleaserefertoMachinePerformanceMonitorEventSelectRegister.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 382

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.1.7 MachineProcessorControlandStatusExtensionRegisterBank
The C910 processor extends and adds several registers for the processor and system state, in-
cluding:
• MachineExtendedStatusRegister(MXSTATUS)
• MachineHardwareControlRegister(MHCR)
• MachineControlandOperationRegister(MCOR)
• MachineL2CacheControlRegister(MCCR2)
• MachineL2CacheECCRegister(MCER2)
• MachineHint/ImplicitOperationRegister(MHINT)
• MachineResetManagementRegister(MRMR)
• MachineResetVectorBaseRegister(MRVBR)
• MachineL1CacheECCRegister(MCER)
• MachineCounterWriteEnableRegister(MCOUNTERWEN)
• MachineCounterInterruptEnableRegister(MCOUNTERINTEN)
• MachineCounterOverflowFlagRegister(MCOUNTEROF)
• MachineCacheInjectionErrorRegister(MEICR)
• MachineCacheInjectionErrorRegister(MEICR2)
17.1.7.1 MachineExtensionStatusRegister(MXSTATUS)
TheMXSTATUSstoresthecurrentprivilagemodeofCPUandC910extensionenablebit.
This register is 64-bit wide and readable and writable in M-mode. The access in non-Machine
willresultinanillegalinstructionexception.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 383

Chapter17AppendixCControlandStatusRegisters(CSRs)
Fig.17.7: MXSTATUSRegister
PMDU——U-modePerformanceMonitorCountEnableBit:
WhenPMDUissetto0,performancecountercountingisenabledinU-mode.
WhenPMDUissetto1,performancecountercountingisdisabledinU-mode.
PMDS——S-modePerformanceMonitorCounterEnableBit:
WhenPMDSissetto0,performancecountercountingisenabledinS-mode.
WhenPMDSissetto1,performancecountercountingisdisabledinS-mode.
PMDM——M-modePerformanceMonitorCounterEnableBit:
WhenPMDMissetto0,performancecountercountingisenabledinM-mode.
WhenPMDMissetto1,performancecountercountingisdisabledinM-mode.
PMP4K——PMPMinimumGranularityControlBit:
Currently,C910supportsaPMPminimumgranularityof4Konly,andisnotaffectedby
thatbit.
MM——unalignedAccessEnableBit:
WhenMMissetto0,unalignedaccessisnotsupported,andtheaccesswillgenerate
anunalignedexception.
When MM is set to 1, non-aligned accesses are only supported in WeakOrder (SO=0)
regions,andthehardwareautomaticallyhandlessuchaccesses. Ifanon-alignedac-
cessisattemptedonStrongOrder(SO=1)regionswhileMM=1,ittriggersanaccessfault
exceptioninsteadofamisalignedaccessexception. (C910defaultstoMM=1.)
UCME——U-modeCacheExtensionInstructions:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 384

Chapter17AppendixCControlandStatusRegisters(CSRs)
WhenUCMEissetto0,executionofextendedcacheoperationinstructionsisnotsup-
portedinU-modeandtheexecutionwillresultinanillegalinstructionexception.
WhenUCMEissetto1,executionofextendedcacheoperationinstructionsissupported
inU-mode.
CLINTEE——ClintTimer/SoftwareInterruptS-modeExtensionEnableBit:
WhenCLINTEEissetto0,S-modesoftwareinterruptsandtimerinterruptsinitiatedby
CLINTwillnotberespondedto.
WhenCLINTEEissetto1,theresponsetoS-modesoftwareinterruptsandtimerinter-
ruptsinitiatedbyCLINTissupported.
MHRD——DisableHardwareBackfilling:
WhenMHRDis0andthereisanTLBmiss,thehardwarewillperformhardwareback-
filling.
When MHRD is 1 and there is an TLB miss, the hardware will not perform hardware
backfilling.
INSDE——DisableIcacheandsnoopDcache:
WhenINSDEissetto0,itwillsnooptheDcacheafteranIcachemiss.
WhenINSDEissetto1,itwillnotsnooptheDcacheafteranIcachemiss.
MAEE——ExtendMMUAddressAttribute:
WhenMAEEis0,MMUaddressattributeisnotextended.
When MAEE is 1, the extended address attribute bits in the MMU's Page Table Entry
(PTE)allowuserstoconfiguretheaddressattributesofthepage.
THEADISAEE——EnableExtensionInstructionSet
When THEADISAEE is set to 0, an illegal instruction exception occurs upon the appli-
cationoftheC910extendedinstructionset.
WhenTHEADISAEEissetto1,C910extendedinstructionsetissupported.
PM——CPUPrivilegedmode:
WhenPMissetto2'b00,CPUisinU-mode.
WhenPMissetto2'b01,CPUisinS-mode.
WhenPMissetto2'b11,CPUisinM-mode(switchintoM-modeafterareset).
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 385

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.1.7.2 MachineHardwareConfigurationRegister(MHCR)
TheMHCRregisterisusedtoconfiguretheCPUintermsofitsperformanceandfunctionality.
This register is 64-bit wide and readable and writable in M-mode. The access in non-machine
modewillresultinanillegalinstructionexception.
Fig.17.8: MachineHardwareConfigurationRegister(MHCR)
IE——Icacheenablebit:
WhenIEissetto0,Icacheisdisabled.
WhenIEissetto1,Icacheisenabled.
DE——Dcacheenablebit:
WhenDEissetto0,Dcacheisdisabled.
WhenDEissetto1,Dcacheisenabled.
WA——CacheWriteAllocateBit:
WhenWAissetto0,Datacacheisinwritenon-allocatemode.
WhenWAissetto1,Datacacheisinwriteallocatemode.
WB——CacheWrite-BackBit:
WhenWBissetto0,DatacacheisinWrite-Throughmode.
WhenWBissetto1,DatacacheisinWrite-Backmode.
C910onlysupportsWrite-Backmode,withthefixedWBvalue1.
RS——ReturnAddressStackBit:
WhenRSissetto0,return-addressstackisdisabled.
WhenRSissetto1,return-addressstackisenabled.
BPE——BranchPredictionEnableBit
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 386

Chapter17AppendixCControlandStatusRegisters(CSRs)
WhenBPEissetto0,branchpredictionisdisabled.
WhenBPEissetto1,branchpredictionisenabled.
BTB——BranchTargetPredictionEnableBit:
WhenBTBissetto0,branchtargetpredictionisdisabled.
WhenBTBissetto1,branchtargetpredictionisenabled.
IBPE——Indirect-jumpPredictionEnableBit:
WhenIBPEissetto0,indirect-jumppredictionisdisabled.
WhenIBPEissetto1,indirect-jumppredictionisenabled.
WBR——WriteBurstTransferEnableBit
WhenWBRissetto0,writebursttransferenablebitisnotsupported.
WhenWBRissetto1,writebursttransferenablebitissupported.
Thisdefaultvalueis1inC910andnotadjustable.
L0BTB——First-levelBranchTargetPredictionEnableBit:
WhenL0BTBissetto0,thefirst-levelbranchtargetpredictionisdisabled.
WhenL0BTBissetto1,thefirst-levelbranchtargetpredictionisenabled.
SCK——SystemtoProcessorClockRatio
TheSCKfieldinC910isfixedat0anddoesnotindicateclockratioinformation.
17.1.7.3 MachineHardwareOperationRegister(MCOR)
TheMCORregisterisusedtooperateonthecacheandbranchpredictionunits.
This register is 64-bit wide and readable and writable in M-mode. The access in non-machine
modewillresultinanillegalinstructionexception.
Fig.17.9: MachineHardwareOperationRegister(MCOR)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 387

Chapter17AppendixCControlandStatusRegisters(CSRs)
CACHESEL——CacheSelectBit:
WhenCACHE_SELissetto2'b01,selectinstructioncache.
WhenCACHE_SELissetto2'b10,selectdatacache.
WhenCACHE_SELissetto2'b11,selectinstructioncacheanddatacache.
INV——CacheInvalidateBit:
WhenINVissetto0,cachewillnotbeinvalidated.
WhenINVissetto1,cachewillbeinvalidated.
CLR——CacheDirtyEntryClearBit:
WhenCLRissetto0,cacheentriesmarkeddirtywillnotbewrittentooff-chipmemory.
WhenCLRissetto1,cacheentriesmarkeddirtywillbewrittentooff-chipmemory.
BHT_INV——BHTInvalidateBit:
WhenBHT_INVissetto0,branchhistorytableentrieswillnotbeinvalidated.
WhenBHT_INVissetto1,branchhistorytableentrieswillbeinvalidated.
BTB_INV——BTBInvalidateBit:
WhenBTB_INVissetto0,datainthebranchtargetbufferwillnotbeinvalidated.
WhenBTB_INVissetto1,datainthebranchtargetbufferwillbeinvalidated.
IBP_INV——IBPInvalidateBit:
WhenIBP_INVissetto0, dataforindirectjumpbranchpredictionswillnotbeinvali-
dated.
WhenIBP_INVissetto1,dataforindirectjumpbranchpredictionswillbeinvalidated.
For all the invalidation and clear operations mentioned above, the corresponding bits are set
highduringthewriteprocessandclearedbackto0uponcompletionoftheoperation.
17.1.7.4 MachineL2CacheControlRegister(MCCR2)
TheMCCR2registerisusedtoconfigureaccesslatencyforindividualmemorymoduleswithina
sharedL2cache,theenable/disablestatusoftheL2cacheitself,instructionprefetchcapabilities,
Translation Lookaside Buffer (TLB) prefetch enabling, and Error Correction Code (ECC) checking
enablement.
This register is 64-bit wide and readable and writable in M-mode. The access in non-machine
modewillresultinanillegalinstructionexception.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 388

Chapter17AppendixCControlandStatusRegisters(CSRs)
Fig.17.10: MachineL2CacheControlRegister(MCCR2)
RFE——DataAccessReadAllocateEnableBit:
WhenRFEissetto0andthereisadataaccessmissintheL2Cache,insteadofrefilling
the L2 Cache, the data is directly refilled into the D Cache, which means that there
existsanexclusiverelationshipbetweentheL1DCacheandtheL2Cache.
WhenRFEissetto1andthereisamissintheL2Cacheduringdataaccess,theL2Cache
andtheDCache(L1DataCache)arebothrefilled. ThismeansthattheL1DCacheand
theL2Cachehaveaninclusiverelationship(ForC910,thissettingisfixedat0).
ECCEN——ECCEnableBit:
WhenECCENissetto0,L2CacheECCisdisabled.
WhenECCENissetto1,L2CacheECCisenabled.
L2EN——L2CacheEnableBit:
WhenL2ENissetto0,L2Cacheisdisabled.
WhenL2ENissetto1,L2Cacheisenabled.(ThefixedvalueinC910is1)
DLTNCY——L2CacheDATARAMAccessCycleConfigurationBit:
WhenDLTNCYissetto0,DATARAMaccesscycleis1.
WhenDLTNCYissetto1,DATARAMaccesscycleis2.
WhenDLTNCYissetto2,DATARAMaccesscycleis3.
WhenDLTNCYissetto3,DATARAMaccesscycleis4.
WhenDLTNCYissetto4,DATARAMaccesscycleis5.
WhenDLTNCYissetto5,DATARAMaccesscycleis6.
WhenDLTNCYissetto6,DATARAMaccesscycleis7.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 389

Chapter17AppendixCControlandStatusRegisters(CSRs)
WhenDLTNCYissetto7,DATARAMaccesscycleis8.
DSETUP——L2CacheDATARAMSetupConfigurationBit:
WhenDSETUPissetto0,DATARAMdoesnotrequireanadditionalsetupcycle.
WhenDSETUPissetto1,DATARAMrequiresanadditionalsetupcycle.
TLTNCY——L2CacheTAGRAMAccessCycleConfigurationBit:
WhenTLTNCYissetto0,TAGRAMaccesscycleis1.
WhenTLTNCYissetto1,TAGRAMaccesscycleis2.
WhenTLTNCYissetto2,TAGRAMaccesscycleis3.
WhenTLTNCYissetto3,TAGRAMaccesscycleis4.
WhenTLTNCYissetto4,TAGRAMaccesscycleis5.
TSETUP——L2CACHETAGRAMSetupConfigurationBit:
WhenTSETUPissetto0,TAGRAMdoesnotrequireanadditionalsetupcycle.
WhenTSETUPissetto1,TAGRAMrequiresanadditionalsetupcycle.
IPRF——L2CacheInstructionPrefetchCapability:
Thenumberofcachelinestoprefetchuponafetchrequestmissforinstructionsinthe
L2Cache:
WhenIPRFissetto0,L2Cacheinstructionprefetchisdisabled.
WhenIPRFissetto1,prefetchonecacheline.
WhenIPRFissetto2,prefetchtwocacheline.
WhenIPRFissetto3,prefetchthreecacheline.
TPRF——L2CacheTLBPrefetchEnable:
WhenTPRFissetto0,L2CacheTLBprefetchisdisabled.
WhenTPRFissetto1,L2CacheTLBprefetchisenabled.
17.1.7.5 MachineL2CacheECCControlRegister(MCER2)
MCER2 register is used to configure L2 Cache ECC (Error Correction Code). L2 cache supports
configurableECC,whichsupports1-biterrorcorrectionand2-biterrordetection. Whena2-bit
error is detected, the hardware automatically sets the ERR_VLD bit within the MCER2 register,
along with information about the location of the error, for the software to query. The software
canwrite0tocleartheERR_VLD.however,itcannotsetto1.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 390

Chapter17AppendixCControlandStatusRegisters(CSRs)
This MCER2 register is 64-bit wide and readable and writable in M-mode. The access in non-
machinemodewillresultinanillegalinstructionexception.
Fig.17.11: MachineL2CacheECCControlRegister(MCER2)
ERR_VLD——L2CACHEErrorFlagBit:
WhenERR_VLDissetto0,noerroroccursinL2CACHE.
WhenERR_VLDissetto1,anECCErrororParityErroroccursinL2CACHE.
Softwarecanclearthiserrorbitwithinanexceptionservicebutcannotsetithigh.
ECC_FATAL——L2CACHEFatalErrorBit:
WhenECC_FATALissetto0,no2-bitECCerroroccursinL2CACHE.
WhenECC_FATALissetto1,2-bitECCerrorsoccurinL2CACHE.
FIX_CNT[4:0]——ThenumberofECCErrorsthathavebeencorrected:
ItrecordsthenumberofECCErrorsthathavebeencorrected.
RAMID12:0]——TheSRAMIDnumberassociatedwiththeECCError:
ItrecordstheSRAMIDnumberassociatedwiththeECCError.
ID=0: L2CACHETAGRAM
ID=1: L2CACHEDATARAM
ID=2: L2CACHEDIRTYRAM
ERR_WAY-L2CACHEParityErrorWayInformation:
Itrecordsthewaypositionofthefirstoccurrenceofa2-bitparityerrorintheL2CACHE.
ERR_INDEX-L2CACHEParityErrorIndexInformation:
It records the index position of the first occurrence of a 2-bit parity error in the L2
CACHE.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 391

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.1.7.6 MachineImplicitOperationRegister(MHINT)
TheMHINTisusedtomultiplefunctionalenablingwithinthecache.
This MHINT register is 64-bit wide and readable and writable in M-mode. The access in non-
machinemodewillresultinanillegalinstructionexception.
Fig.17.12: MachineImplicitOperationRegister(MHINT)
DPLD——DCACHEPrefetchEnableBit:
WhenDPLDissetto0,DCACHEprefetchisdisabled.
WhenDPLDissetto1,DCACHEprefetchisenabled.
AMR——L1CacheWriteAllocateAuto-AdjustEnableBit:
When AMR is set to 0, the write allocation is determined by the WA (Write Allocate)
attributeoftheaccessedaddresspage.
When AMR is set to 1, the store operations of subsequent contiguous addresses are
notwrittenintotheL1Cacheintheeventofthestoreoperationsofconsecutivecache
lines.
AMR2——L2CacheWriteAllocateAuto-AdjustEnableBit
When AMR2 is set to 0, the write allocation is determined by the WA attribute of the
accessedpage.
WhenAMR2issetto1,thestoreoperationsofsubsequentcontiguousaddressesare
notwrittenintotheL2Cacheintheeventofthestoreoperationsofconsecutivecache
lines.
IPLD——ICACHEPrefetchEnableBit:
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 392

Chapter17AppendixCControlandStatusRegisters(CSRs)
WhenIPLDissetto0,ICACHEprefetchisdisabled.
WhenIPLDissetto1,ICACHEprefetchisenabled.
LPE——LoopAccelerationEnableBit:
WhenLPEissetto0,loopaccelerationisdisabled.
WhenLPEissetto1,loopaccelerationisenabled.
IWPE——ICACHEBranchPredictionEnableBit:
WhenIWPEissetto0,ICACHEbranchpredictionisdisabled.
WhenIWPEissetto1,ICACHEbranchpredictionisenabled.
SRE——SingleRetireModeBit:
WhenSREissetto0,singleretiremodeisdisabled.
WhenSREissetto1,singleretiremodeisenabled.
D_DIS——DCACHENumberofPrefetchedCacheLines:
WhenD_DISissetto0,prefetch2cachelines.
WhenD_DISissetto1,prefetch4cachelines.
WhenD_DISissetto2,prefetch8cachelines.
WhenD_DISissetto3,prefetch16cachelines.
Thedefaultvalueis0.
L2PLD——L2CACHEPrefetchEnableBit:
WhenL2PLDissetto0,L2CACHEprefetchisdisabled.
WhenL2PLDissetto1,L2CACHEprefetchisenabled.
L2_DIS——L2CACHENumberofPrefetchedCacheLines:
WhenL2_DISissetto0,prefetch8cachelines.
WhenL2_DISissetto1,prefetch16cachelines.
WhenL2_DISissetto2,prefetch32cachelines.
WhenL2_DISissetto3,prefetch64cachelines.
L2CacheprefetchisperformedonthebasisofL1Cacheprefetch.
NO_SPEC——SPECFAILPrefetchEnableBit:
WhenNO_SPECissetto0,specfailprefetchisdisabled.
WhenNO_SPECissetto1,specfailprefetchisenabled.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 393

Chapter17AppendixCControlandStatusRegisters(CSRs)
ECC——L1CACHEChecksumEnableBit:
WhenECCissetto0,L1CacheChecksumisdisabled.
WhenECCissetto1,L1CacheChecksumisenabled.
L2STPLD——L2CacheStorePrefetchEnableBit:
WhenL2STPLDissetto0,L2CACHEstoreprefetchisdisabled.
WhenL2STPLDissetto1,L2CACHEstoreprefetchisenabled.
TLB_BROAD_DIS——TLBfenceBroadcastInvalidateBit:
WhenTLB_BROAD_DISissetto0,sfence.vmainstructionisbroadcasttoothercores.
WhenTLB_BROAD_DISissetto1,sfence.vmainstructionwillnotbebroadcast.
Thebitdoesnotexistinthesinglecore.
FENCEI_BROAD_DIS——fence.iBroadcastInvalidateBit:
WhenFENCEI_BROAD_DISissetto0,fence.iinstructionisbroadcasttoothercores.
WhenFENCEI_BROAD_DISissetto1,fence.iinstructionwillnotbebroadcast.
Thebitdoesnotexistinthesinglecore.
CORR_DIS——RAROut-of-orderCorrectioninRAR
WhenCORR_DISissetto0,itindicatesamoreconservativeapproachofout-of-order
RARdetection, whichenableserrorcorrectionprocessingonceout-of-orderRARoc-
curs.
When CORR_DIS is set to 1, it indicates a more performance-optimized approach of
out-of-orderRARdetection,whichenableserrorcorrectionprocessingonlywhendata
errorsariseinout-of-ordeRAR.
17.1.7.7 MachineResetRegister(MRMR)
(cid:159) Attention
mrmrregisterhasbeenremovedfromC910(theversionaboveR1S4),andtherelatedfeatures
hasbeendeleted. Butthesoftwarecanstillaccessthisregister. Andtheresultisthatreads
returnzero,andwritesareineffectivewithoutcausinganyexceptionstoberaised.
mrmr register enables the release of reset for each C910 core during multi-core initialization.
EachprocessingcoresharesacommonMRMRRegisterTherefore,aprocessorcorecanrelease
otherprocessorcoresfromtheresetstatebyconfiguringtheMRMR.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 394

Chapter17AppendixCControlandStatusRegisters(CSRs)
This MRMR register is 64-bit wide and readable and writable in M-mode. The access in non-
machinemodewillresultinanillegalinstructionexception.
Fig.17.13: MachineResetRegister(MRMR)
RRE3/2/1/0——ResetReleaseEnableBit:
Itcontrolstheresetreleaseenablebitofeachcore.
WhenRRExissetto0,andthecorrespondingC910Coreisinresetstate.
WhenRRExissetto1,andthecorrespondingC910Coreisinresetrelease.
17.1.7.8 MachineResetVectorBaseAddressRegister(MRVBR)
MRVBR register is used to store the base address of the reset exception vector. Each C910 core
containsitsownindependentMRVBRregister.
ThisMRMRregisteris64-bit wideand read-onlyin M-mode. Theaccess innon-machine mode
willresultinanillegalinstructionexception.
Fig.17.14: MRVBRRegister
Resetvectorbase——ResetBaseAddress:
Itcontrolstheresetbaseaddressofcores.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 395

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.1.7.9 MachineL1CacheECCRegister(MCER)
MCER register is used to configure the L1 Cache ECC. The L1 cache supports configurable ECC,
whichenablessingle-biterrorcorrectionanddouble-biterrorcorrection.
Whenthetwoormore-biterrorsaredetected,thehardwareautomaticallysetstheERR_FATALbit
withintheMCERregister,alongwiththeinformationabouttheerrorlocation,forthesoftwareto
query. ThesoftwarecancleartheERR_FATALbitbywriting0totheERR_VLDbit,butitcannotset
itto1.
This MCER register is 64-bit wide and readable and writable in M-mode. The access in non-
machinemodewillresultinanillegalinstructionexception.
Fig.17.15: MCERRegitser
ECC_VLD——ECCInformationValidBit:
WhenECC_VLDis0,L1CACHEECCinformationisinvalid.
WhenECC_VLDis1,L1CACHEECCinformationisvalid. Andthisbitcanonlybecleared
bysoftware.
ERR_FATAL——L1CACHEChecksumorParityErrorBit:
WhenERR_FATALissetto0,hardwarecancorrectERR.
When ERR_FATAL is set to 1, the bit can only be cleared by software as 2 or more bit
errorsoccur.
FIX_CNT——CorrectedErrorCountBit:
Thisbitrecordsthenumberofcorrectederrors, anditisautomaticallyclearedwhen
theECC_VLDisreset.
RAMID——RAMwithECCFATALError:
WhenRAMIDissetto0,L1ICACHETAGRAMchecksumerroroccrus.
WhenRAMIDissetto1,L1ICACHEDATARAMchecksumerroroccrus.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 396

Chapter17AppendixCControlandStatusRegisters(CSRs)
WhenRAMIDissetto2,L1DCACHETAGRAMchecksumerroroccrus.
WhenRAMIDissetto3,L1DCACHEDATARAMchecksumerroroccrus.
WhenRAMIDissetto4,JTLBTAGRAMchecksumerroroccrus.
WhenRAMIDissetto5,JTLBDATARAMchecksumerroroccrus.
ERR_WAY-WaylocationofthefirstECCFATALerroroccurrence:
ItrecordsthewaylocationinthefaultyRAMwherethefirstECCFATALERRORoccurred.
Subsequenterrorsbeforetheinitialerrorishandledbysoftwarewillnotupdatethis
information.
ERR_INDEX-IndexpositionofthefirstECCFATALerroroccurrence:
ItrecordstheindexpositioninthefaultyRAMwherethefirstECCFATALERRORoccurred.
Subsequenterrorsbeforetheinitialerrorishandledbysoftwarewillnotupdatethis
information.
17.1.7.10 MachineCounterWriteEnableRegister(MCOUNTERWEN)
MCOUNTERWENregisterisusedtoauthorizewhethersupervisoreventcountercanbewrittenin
S-mode.用
Thisregisteris64-bitwide,readableandwritableinM-mode. Theaccessinnon-machinemode
willresultinanillegalinstructionexception.
Fig.17.16: MCOUNTERWENRegitser
Whenmcounterwen.bit[n]issetto1,writeaccesstothecorrespondingshpmcounter
isallowedinS-mode.
Ifmcounterwen.bit[n]is0,writeoperationstotheassociatedshpmcounterinS-mode
areprohibited,andattemptingtodosowilltriggeranillegalinstructionexception.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 397

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.1.7.11 MachineEventInterruptEnableRegister(MCOUNTERINTEN)
MCOUNTERINTEN register enables the generation of interrupts when any event counter over-
flows.
Thisregisteris64-bitwide,readableandwritableinM-mode. Theaccessinnon-machinemode
willresultinanillegalinstructionexception.
Fig.17.17: MCOUNTERINTENRegister
When mcounterinten.bit[n] is 1, overflow of the corresponding mhpmcounter triggers an inter-
rupt.
Whenmcounterinten.bit[n]is0,overflowofthecorrespondingmhpmcounterdoesnottriggeran
interrupt.
17.1.7.12 MachineEventOverflowFlagRegister(MCOUNTEROF)
MCOUNTEROFindicateswhetherthereisanyoverflowsforeventcounting.
Thisregisteris64-bitwide,readableandwritableinM-mode. Theaccessinnon-machinemode
willresultinanillegalinstructionexception.
Fig.17.18: MCOUNTEROFRegitser
Whenmcounterof.bit[n]is1,thecorrespondingmhpmcounterisoverflowed.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 398

Chapter17AppendixCControlandStatusRegisters(CSRs)
Whenmcounterof.bit[n]is0,thecorrespondingmhpmcounterhasnotoverflowed.
17.1.7.13 MachineL1CacheHardwareErrorInjectionRegisterMEICR
MEICRregisterisusedtoinjectECCerrortoL1Cache.
Thisregisteris64-bitwide,readableandwritableinM-mode. Theaccessinnon-machinemode
willresultinanillegalinstructionexception.
Fig.17.19: MEICRRegister
INJ_EN-ECCErrorInjectionEnableBit:
WhenINJ_ENis1,L1CacheECCerrorinjectionisenabled.
WhenINJ_ENis0,L1CacheECCerrorinjectionisdisabled.
FATAL_INJ-ECCERRORInjectionSelectBit:
WhenFATAL_INJis1,2-biterrorisinjected.
WhenFATAL_INJis0,1-biterrorisinjected.
RAMID-ECCRAMIndex:
WhenRAMIDis0,I-CACHETAGRAMisinjected.
WhenRAMIDis1,I-CACHEDATARAMisinjected.
WhenRAMIDis2,D-CACHETAGRAMisinjected.
WhenRAMIDis3,DCACHEDATARAMisinjected.
WhenRAMIDis4,JTLBTAGRAMisinjected.
WhenRAMIDis5,JTLBDATARAMisinjected.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 399

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.1.7.14 MachineL2CacheHardwareErrorInjectionRegister(MEICR2)
MEICR2registerisusedtoinjectECCerrortoL2Cache.
Thisregisteris64-bitwide,readableandwritableinM-mode. Theaccessinnon-machinemode
willresultinanillegalinstructionexception.
Fig.17.20: MEICR2Register
L2_INJ_EN-L2ECCERRORInjectEnableBit:
WhenL2_INJ_ENis1,L2CacheECCerrorinjectionisenabled.
WhenL2_INJ_ENis0,L2CacheECCerrorinjectionisdisabled.
FATAL_INJ-ECCERRORInjectionSelectBit:
WhenFATAL_INJis1,2-biterrorisinjected.
WhenFATAL_INJis0,1-biterrorisinjected.
L2_RAMID-ECCRAMIndex:
WhenRAMIDis0,L2CACHETAGRAMisinjected.
WhenRAMIDis1,L2CACHEDATARAMisinjected.
WhenRAMIDis2,L2CACHEDIRTYRAMisinjected.
17.1.8 MachineCacheAccessExtensionRegisterBank
Machinecache access extension registersaredesigned to directlyreadL1 and L2cache, facili-
tatingdebuggingoperationsoncache.
17.1.8.1 MachineCacheInstructionRegister(MCINS)
MCINSisusedtoenablieareadrequesttoL1orL2cache.
This register is 64-bit wide and readable and writable in M-mode. The access in non-machine
modewillresultinanillegalinstructionexception.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 400

Chapter17AppendixCControlandStatusRegisters(CSRs)
Fig.17.21: MachineCacheInstructionRegister(MCINS)
R-Cachereadaccess:
• WhenRissetto0,noreadrequestisenabled.
• WhenRissetto0,readrequestisenabled.
17.1.8.2 MachineCacheAccessIndexRegister(MCINDEX)
MCINDEXisdesignedtoconfigurethecachepositioninformationofreadrequestaccesses.
This register is 64-bit wide and readable and writable in M-mode. The access in non-machine
modewillresultinanillegalinstructionexception.
Fig.17.22: MachineCacheAccessIndexRegister(MCINDEX)
RID-RAMflag:
ItindicatestheaccessedRAMinformation.
• WhenRIDissetto0,itindicatesICACHETAGRAMisaccessed.
• WhenRIDissetto1,itindicatesICACHEDATARAMisaccessed.
• WhenRIDissetto2,itindicatesDCACHESTTAGRAMisaccessed.
• WhenRIDissetto3,itindicatesDCACHEDATARAMisaccessed.
• WhenRIDissetto4,itindicatesL2CACHETAGRAMisaccessed.
• WhenRIDissetto5,itindicatesL2CACHEDATARAMisaccessed.
• WhenRIDissetto6,itindicatesICACHETAGECCRAMisaccessed.
• WhenRIDissetto7,itindicatesICACHEDATAECCRAMisaccessed.
• WhenRIDissetto8,itindicatesDCACHESTTAGECCRAMisaccessed.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 401

Chapter17AppendixCControlandStatusRegisters(CSRs)
• WhenRIDissetto9,itindicatesDCACHEDATAECCRAMisaccessed.
• WhenRIDissetto10,itindicatesL2CACHETAGECCRAMisaccessed.
• WhenRIDissetto11,itindicatesL2CACHEDATAECCRAMisaccessed.
• WhenRIDissetto12,itindicatesDCACHELDTAGRAMisaccessed.
• WhenRIDissetto13,itindicatesDCACHELDTAGECCRAMisaccessed.
• WhenRIDissetto19,itindicatesICACHEPREDECODERAMisaccessed.
WAY-Cache:
ItindicatestheRAMaccessposition.
INDEX-Cache:
ItindicatestheindexpositionofRAMaccessposition.
17.1.8.3 MachineCacheAccessDataRegister(MCDATA0/1)
MCDATA0/1isdesignedtorecorddatareadfromtheL1orL2cache.
This register is 64-bit wide and readable and writable in M-mode. The access in non-machine
modewillresultinanillegalinstructionexception.
Fig.17.23: MachineCacheAccessDataRegister(MCDATA)
Table17.1: TheCorrespondingRelationshipofMCDATAandRAMType
| RAMType   | CDATA          |     |
| --------- | -------------- | --- |
| ICACHETAG | CDATA0[39:12]: | TAG |
CDATA0[0]:VALID
| ICACHEDATA  | CDATA0~CDATA1: | 128bitDATA                  |
| ----------- | -------------- | --------------------------- |
| DCACHESTTAG | CDATA0[39:14]: | 26bittag                    |
|             | CDATA0[13:12]: | cindex[13:12]               |
|             | CDATA0[3:0]:   | {pageshare,dirty,share,vld} |
| DCACHEDATA  | CDATA0~CDATA1: | 128bitDATA                  |
continuesonnextpage
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 402

Chapter17AppendixCControlandStatusRegisters(CSRs)
Table 17.1–continuedfrompreviouspage
| RAMType        | CDATA                  |                         |       |
| -------------- | ---------------------- | ----------------------- | ----- |
| L2CACHETAG     | CDATA0[40]:            | page_share=1            |       |
|                | CDATA0[39:12]:         | tag+cindex              |       |
|                | CDATA0[7:4]:           | cpCDATA0[3]:            | valid |
|                | CDATA0[2]:             | share                   |       |
|                | CDATA0[1]:             | dirty                   |       |
|                | CDATA0[0]:             | pend                    |       |
| L2CACHEDATA    | CDATA0~CDATA1:         | 128-bitDATA             |       |
| ICACHETAGECC   | CDATA0[0]:             | ECC                     |       |
| ICACHEDATAECC  | CDATA0[3:0]:ECC        |                         |       |
| DCACHESTTAGECC | CDATA0[7:0]:           | 7-bitsttag&dirtyeccinfo |       |
| DCACHEDATAECC  | CDATA0[27:0]:          | 4bank*7-biteccinfo      |       |
| L2CACHETAGECC  | CDATA0[11:5]:          | tagecc                  |       |
|                | CDATA0[4:0]:           | dirtyecc                |       |
| L2CACHEDATAECC | CDATA0[63:0]           |                         |       |
| DCACHELDTAG    | CDATA0[38:13]:26bittag |                         |       |
CDATA0[12:11]:cindex[13:12]
CDATA0[0]:VALID
DCACHELDTAGECC CDATA0[6:0]:7biteccinfo(1bitparity+6bithamcode)
| ICACHEPREDECODE | CDATA0[31:0]:PREDECD |     |     |
| --------------- | -------------------- | --- | --- |
17.1.9 MachineProcessorIDRegisterBank
17.1.9.1 MachineProcessorIDRegister(MCPUID)
MCPUIDstorestheprocessorID,andtheresetvalueisdeterminedbythecorrespondingproduct.
17.1.9.2 On-ChipBusBaseAddressRegister(MAPBADDR)
This register reflects the base address of on-chip registers (CLINT, PLIC) for the processor. The
valueofthisregisterisdeterminedbyhardwareintegration.
17.1.10 Multi-coreExtensionRegisterSet
17.1.10.1 SnoopEnableRegister(MSMPR)
The MSMPR Register controls whether a core can process snoop requests. Each core indepen-
dentlyconfiguresitscapabilitytohandlesnooprequests. Thetop-levelcoherencebuscontrols
thetransmissionofsnooprequestsbasedonthesnoopstatusofeachcore. Thisregisterisread-
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 403

Chapter17AppendixCControlandStatusRegisters(CSRs)
ableandwritableinmachinemode.
Theregisteris64bitswide,withonlybit0defined;theremainingbitsarereserved.
Bit0: SMPEN-CoreSnoopEnableBit
• WhenSMPENis1'b0,thecorecannotprocesssnooprequests,andthetop-levelcoherence
busblockssendingsnooprequeststothecore. (Defaultresetvalue)
• When SMPEN is 1'b1, the core can process snoop requests, and the top-level coherence
bussendssnooprequeststothecore.
Beforepoweringoffaprocessorcore,softwaremustsetSMPEN=0forthecorrespondingcoreto
disableitssnoopfunctionality. Afterpoweringonacore,softwaremustsetSMPEN=1forthecore
before enabling the D-Cache and MMU. During normal operation (including in WFI mode), the
coremustretainSMPEN=1;otherwise,thebehaviorisunpredictable.
17.2 Appendix C-2 Supervisor CSRs
Supervisor mode control registers are categorized by functionality into: Supervisor Exception
Configuration Register Bank, Supervisor Exception Handling Register Bank, and Supervisor Ad-
dressTranslationRegisterBank.
17.2.1 SupervisorExceptionConfigurationRegisterBank
WhenexceptionsandinterruptsaredelegatedtoS-modeforresponses,exceptionsmustbecon-
figuredthroughthesupervisorexceptionconfigurationregisterbank,likeinM-mode.
17.2.1.1 SupervisorStatusRegister(SSTATUS)
TheSSTATUSregisterstoresstatusandcontrolinformationoftheCPUinS-mode, includingthe
globalinterruptenablebit,exceptionpreserveinterruptenablebit,exceptionpreserveprivilege
modebitandsoon. TheSSTATUSregisterisapartialmappingofthemstatusregister.
This register is 64-bit wide and is readable and writable in M-mode and S-mode. Accesses in
U-modewillcauseanillegalinstructionexception.
Fig.17.24: SupervisorStatusRegister(SSTATUS)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 404

Chapter17AppendixCControlandStatusRegisters(CSRs)
Fordetailedinformation,pleaserefertoMachineStatusRegister(MSTATUS).
17.2.1.2 SupervisorInterruptEnableRegister(SIE)
TheSIEregisterenablesandmasksdifferenttypesofinterrupts,andisapartialmappingofthe
MIEregister. Thisregisteris64-bitwideandreadableinS-mode. ThewritepermissioninS-mode
is determined by the corresponding bit in the mideleg register. Accesses in U-mode will cause
anillegalinstructionexception.
Fig.17.25: SupervisorInterruptEnableregister(SIE)
Fordetailedinformation,pleaserefertoMachineInterruptEnableRegister(MIE).
17.2.1.3 SupervisorTrapVectorBaseAddressRegister(STVEC)
STVECregisterisusedtoconfiguretheentryaddressforexceptionserviceprogram.
This register is 64-bit wide and is readable and writable in S-mode. Accesses in U-mode will
causeanillegalinstructionexception.
Fig.17.26: SupervisorTrapVectorBaseAddressRegister(STVEC)
Fordetailedinformation,pleaserefertoMachineVectorBaseAddress(MTVEC).
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 405

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.2.1.4 SupervisorCounterAccessEnableRegister(SCOUNTEREN)
ThescounterenregisterdetermineswhetherU-modecounterscanbeaccessedinU-mode.
Fordetailedinformation,pleaserefertoScounterenRegister.
17.2.2 SupervisorExceptionHandlingRegisterBank
17.2.2.1 SupervisorExceptionTemporaryDataBackupRegister(SSCRATCH)
TheSSCRATCHregisterisusedtobackuptemporarydataintheexceptionserviceprogram. Itis
usuallyusedtostoretheentrypointervalueofthelocalcontextspaceinS-mode.
This register is 64-bit wide and is readable and writable in S-mode. Accesses in U-mode will
causeanillegalinstructionexception.
17.2.2.2 SupervisorExceptionReservedProgramCounterRegister(SEPC)
The SEPC register stores the program counter value (PC value) when the CPU exits from the ex-
ceptionserviceprogram. C910supports16-bitwideinstructions. ThevalueofSEPCisalignedto
a16-bitboundary,withtheleastsignificantbitbeingzero.
This register is 64-bit wide and is readable and writable in S-mode. Accesses in U-mode will
causeanillegalinstructionexception.
17.2.2.3 SupervisorExceptionCauseRegister(SCAUSE)
The SCAUSE register stores the vector numbers of exception events that trigger exceptions, to
handlecorrespondingeventsintheexceptionserviceprogram.
This register is 64-bit wide and is readable and writable in S-mode. Accesses in U-mode will
causeanillegalinstructionexception.
17.2.2.4 SupervisorInterruptPendingStatusRegister(SIP)
The SIP register stores information of CPU interrupt pending status. When the CPU can not im-
mediatelyrespondtoaninterrupt,thecorrespondingbitintheSIPregisterwillbeset.
This register is 64-bit wide and readable in S-mode. The write permission is determined the
corresponding bit in the mideleg register. Accesses in U-mode will cause an illegal instruction
exception.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 406

Chapter17AppendixCControlandStatusRegisters(CSRs)
Fig.17.27: SIPRegister
17.2.3 SuperviosorAddressTranslationRegisterGroup
InSupervisormode,accesstovirtualmemoryspaceisrequired. SATPregisterisusedtocontrol
theMMU'smodeswitching,hardwarebackfillbaseaddress,andprocessnumber.
17.2.3.1 SuperviosorAddressTranslationRegister(SATP)
SATPregisterisusedtocontroltheMMU'smodeswitching,hardwarebackfillbaseaddress,and
processnumber.
This register is 64-bit wide and is readable and writable in S-mode. Accesses in U-mode will
causeanillegalinstructionexception.
Fordetailedinformation,pleaserefertovirtual_mem_manage_satp.
17.2.4 SupervisorProcessorControlandStatusExtensionRegisterBank
17.2.4.1 SupervisorExtensionStatusRegister(SXSTATUS)
SXSTATUS is the mapping of machine extension status register (MXSTATUS). For detailed infor-
mation,pleaserefertoMachineExtensionStatusRegister(MXSTATUS).
Thisregisteris64-bitwideandreadableinS-mode,andonlyMMbitiswriteable. Theaccessin
U-modewillresultinanillegalinstructionexception.
17.2.4.2 SupervisorHardwareControlRegister(SHCR)
SHCR is the mapping of Machine Hardware Control Register (MHCR). For detailed information,
pleaserefertoMachineHardwareConfigurationRegister(MHCR).
Thisregisteris64-bitwideandreadableinS-mode. TheaccessinU-modewillresultinanillegal
instructionexception.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 407

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.2.4.3 SupervisorL2CacheECCRegister(SCER2)
SCER2 is the mapping of Machine L2 Cache ECC Register (MCER2). For detailed information,
pleaserefertoMachineL2CacheECCControlRegister(MCER2).
Thisregisteris64-bitwideandreadableinS-mode. TheaccessinU-modewillresultinanillegal
instructionexception.
17.2.4.4 SupervisorL1CacheECCRegister(SCER)
SCERisthemappingofL1CacheECCRegister(MCER).Fordetailedinformation, pleasereferto
MachineL1CacheECCRegister(MCER).
Thisregisteris64-bitwideandreadableinS-mode. TheaccessinU-modewillresultinanillegal
instructionexception.
17.2.4.5 SupervisorEventOverflowInterruptEnableRegister(SCOUNTERINTEN)
SCOUNTERINTENisthemappingofMCOUNTERINTEN.Forthedetailedinformation,pleaserefer
toMachineEventInterruptEnableRegister(MCOUNTERINTEN).
Thisregisteris64-bitwideandreadableinS-mode. TheaccessinU-modewillresultinanillegal
instructionexception.
Whenmcounterwen.bit[n]is1,scounterinten.bit[n]determineswhethertogenerateaninterrupt
whenthecorrespondingshpmcounteroverflows.
17.2.4.6 SupervisorEventOverflowFlagRegister(SCOUNTEROF)
SCOUNTEROFis the mapping of MCOUNTEROF.For the detailed information, please refer to Ma-
chineEventOverflowFlagRegister(MCOUNTEROF).
Thisregisteris64-bitwideandreadableinS-mode. TheaccessinU-modewillresultinanillegal
instructionexception.
When mcounterwen.bit[n] is 1, scounterof.bit[n] indicates whether the corresponding shpm-
counteroverflows.
17.2.4.7 SupervisorCycleCounter(SCYCLE)
SCYCLEisusedtostoretheexecutedcyclesforprocessors. Whentheprocessorisintheexecuting
status(non-low-powerstate),SCYCLEregisterincrementsitscountingperexecutioncycle.
SCYCLEis64-bitwideanditwillberesetto0.
Forthedetailedinformation,pleaserefertoEventCounters.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 408

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.2.4.8 SupervisorRetireInstructionCounter(SINSTRET)
SINSTRETstorestheretiredinstructionsforprocessors. SINSTRETregisterincrementsitscounting
foreachretirementinstruction.
SINSTRETis64-bitwide,anditwillberesetto0.
Forthedetailedinformation,pleaserefertoEventCounters.
17.2.4.9 SupervisorEventCounters(SHPMCOUNTERn)
SHPMCOUNTERnisthemappingofMHPMCOUNTERn.
Forthedetailedinformation,pleaserefertoEventCounters.
17.2.5 SupervisorMMUExtensionRegisters
TheC910MMUunitextendsMMU-relatedregisterstoimplementsoftwarebackfillfunctionality,
enablingsoftwaretodirectlyreadfromandwritetotheTLB.
17.2.5.1 SupervisorMMUControlRegister(SMCIR)
Thisregisteris64-bitwideandreadableinS-mode. TheaccessinU-modewillresultinanillegal
instructionexception.
Forthedetailedinformation,pleaserefertovirtual_mem_manage_smcir.
17.2.5.2 SupervisorMMUControlRegister(SMIR)
Thisregisteris64-bitwideandreadableinS-mode. TheaccessinU-modewillresultinanillegal
instructionexception.
Forthedetailedinformation,pleaserefertoMMUIndexRegister(SMIR).
17.2.5.3 SupervisorMMUControlRegister(SMEH)
Thisregisteris64-bitwideandreadableinS-mode. TheaccessinU-modewillresultinanillegal
instructionexception.
Forthedetailedinformation,pleaserefertoMMUEntryHiRegister(SMEH).
17.2.5.4 SupervisorMMUControlRegister(SMEL)
Thisregisteris64-bitwideandreadableinS-mode. TheaccessinU-modewillresultinanillegal
instructionexception.
Forthedetailedinformation,pleaserefertoMMUEntryLoRegister(SMEL).
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 409

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.3 Appendix C-3 RISC-V Standard User-level CSRs
User-level CSRs are mainly divided into floating-point registers, counter registers, and control
registersbyfeatures.
17.3.1 UserFloating-pointControlRegisterBank
17.3.1.1 Floating-PointExceptionAccumulatorStatusRegister(FFLAGS)
TheFFLAGSregisteristhefieldmappingofaccruedexceptionsoftheFloating-PointControland
StatusRegister(FCSR).Fordetailedinformation,pleaserefertoFloating-PointControlandStatus
Register(FCSR).
17.3.1.2 Floating-pointDynamicRoundingModeRegister(FRM)
The FRM register is the field mapping of the rounding mode of the FCSR register. For detailed
information,pleaserefertoFloating-PointControlandStatusRegister(FCSR).
17.3.1.3 Floating-PointControlandStatusRegister(FCSR)
FCSRrecordsfloating-pointaccruedexceptionsandenablestheroundingmode.
Thisregisteris64-bitwideandreadableandwritableinanyprivilegemode.
Fig.17.28: Floating-PointControlandStatusRegister(FCSR)
NX——impreciseexception:
• WhenNXissetto0,noimpreciseexceptionoccurs.
• WhenNXissetto1,impreciseexceptionsoccur.
UF——underflowexception:
• WhenUFissetto0,nounderflowexceptionoccurs.
• WhenUFissetto1,underflowexceptionsoccur.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 410

Chapter17AppendixCControlandStatusRegisters(CSRs)
OF——overflowexception:
• WhenOFissetto0,nooverflowexceptionoccurs.
• WhenOFissetto1,overflowexceptionsoccur.
DZ——divisionbyzeroexception:
• WhenDZissetto0,nodivisionbyzeroexceptionoccurs.
• WhenDZissetto1,divisionbyzeroexceptionsoccur.
NV——invalidoperandexception:
• WhenNVissetto0,noexceptionofinvalidinstructionoperandsoccurs.
• WhenNVissetto1,exceptionsofinvalinstructionoperandsoccur.
RM——roundingmode:
• WhenRMissetto0,theRNEroundingmodetakeseffect,andvaluesareroundedoffto
thenearestevennumber.
• When RM is set to 1, the RTZ rounding mode takes effect, and values are rounded off to
zero.
• WhenRMissetto2,theRDNroundingmodetakeseffect,andvaluesareroundedoffto
negativeinfinity.
• WhenRMissetto3,theRUProundingmodetakeseffect,andvaluesareroundedoffto
positiveinfinity.
• WhenRMissetto4,theRMMroundingmodetakeseffect,andvaluesareroundedoffto
thenearestnumber.
VXSAT——vectoroverflowflag:
ItisthemappingoftheVXSATflag.
VXRM——vectorroundingmodebit
ItisthemappingoftheVXRMflag.
17.3.2 UserCounter/TimerRegisterBank
17.3.2.1 UserCycleCounter(CYCLE)
TheCYCLEstoresthecyclesexecutedbytheCPU.WhentheCPUisintheexecutionstate(non-low
powerstate),theCYCLEregisterincrementsitscountautomaticallyoneveryexecutioncycle.
TheCYCLEisa64-bitregister,anditwillberesettozero.
Fordetailedinformation,pleaserefertoEventCounters.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 411

Chapter17AppendixCControlandStatusRegisters(CSRs)
17.3.2.2 UserTimerCounter(TIME)
TIMEisaread-onlymappingofMachineTimerCounter(MTIME)register.
Fordetailedinformation,pleaserefertoEventCounters.
17.3.2.3 UserRetiredInstructionsCounter(INSTRET)
INSTRET stores the number of retired instructions of the CPU. The INSTRET increments its count
wheneachinstructionretires.
TheCYCLEisa64-bitregister,anditwillberesettozero.
Fordetailedinformation,pleaserefertoEventCounters.
17.3.2.4 UserEventCounter(HPMCOUNTERn)
HPMCOUNTERnisthemappingofMachineEventCounterMHPMCOUNTERn.
Fordetailedinformation,pleaserefertoEventCounters.
17.3.3 UserExtensionFloating-pointControlRegister
17.3.3.1 UserFloating-pointExtensionControlRegister(FXCR)
FXCR register is used to enable/disable floating-point extension and floating-point
exceptionaccumulationbit.
Fig.17.29: FXCRRegister
NX——ImpreciseException:
ThemappingofthecorrespondingbitinFCSRregister.
UF——UnderflowException:
ThemappingofthecorrespondingbitinFCSRregister.
OF——OverflowException:
ThemappingofthecorrespondingbitinFCSRregister.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 412

Chapter17AppendixCControlandStatusRegisters(CSRs)
DZ——Divide-by-ZeroException:
ThemappingofthecorrespondingbitinFCSRregister.
NV——InvalidOperandException
ThemappingofthecorrespondingbitinFCSRregister.
FE——Floating-PointExceptionAccumulationBit:
Whenanyfloating-pointexceptionoccurs,thisbitwillbesetto1.
DQNaN——OutputQNaNModeBit：
WhenDQNaNis0,thecomputedQNaNvalueisadefaultfixedvalue.
WhenDQNaNis1,thecomputedQNaNvalueconformstotheIEEE754standard.
RM——RoundingMode
ThemappingofthecorrespondingbitinFCSRregister.
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 413

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
18 Appendix D XuanTie C900 Multi-Core Synchroniza-
tion Instructions and Program Implementations
18.1 Overview
Themulti-coresynchronizationofXuanTieC900isbasedontheRISC-Varchitecture,andcomplies
withthedefinitionsaboutinstructionsynchronization(fence.i),TranslationLookasideBuffer(TLB)
maintenance(sfence.vma),andatomicinstructionsetextensioninRISC-Vprivilegedspec.
Toimprovemaintenanceefficiencyinthescenarioofmulti-coreandnon-uniformbus, XuanTie
C900furtherenhancesinstructionsynchronization,TLBmaintenance,andDMAsynchronization
tomeetvariousmarketrequirements.
18.2 RISC-V Standard Instructions
18.2.1 fenceInstruction
ThebasicRISC-Vinstructionsetincludesthefenceinstruction,whichexplicitlyensurestheorder
ofprograminstructions.
FENCEIORW,IORW
ThefenceinstructiondistinguishestheIOaddressspaceandmemoryaddressspace. IOrepre-
sentsinput/output,andRWrepresentsread/write.
FENCERWensuresthatprecedingread/writeinstructionsarenotexecutedlaterthanthefence
instruction.
FENCE RW ensures that subsequent read/write instructions are not executed before the fence
instruction.
Similarly, the following instructions can be independently formed: FENCE R, RW / FENCE R, R /
FENCER/FENCERW/FENCERW,W...
IOisequaltoRW,andthefollowinginstructioncanbeformed: FENCEI,IO/FENCEI,I/FENCEI
/FENCEIO/FENCEIO,O...
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 414

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
InstructionscanevenbedesignedtomixIOandRW,suchasFENCERI,IORW/FENCEIORW,IORW
...
In summary, the FENCE instruction allows programmers to clearly and explicitly specify the re-
quiredorderofload/storeoperationswithrespecttomemoryorIOaccesses,bydefiningacom-
binationofits8bitsrepresentingprecedingandsubsequentR(read),W(write),I(input),andO
(output).
18.2.2 fence.iInstruction
ThisinstructionclearsI-Cachetoensurethatallthedataaccessresultsbeforethisinstructioncan
beaccessedbythefetchoperationsaftertheinstruction.
18.2.3 sfence.vmaInstruction
sfence.vmars1,rs2isappliedtoinvalidationandsynchronizationofvirtualmemories. rs1indi-
catesthevirtualaddressandrs2indicatestheAddressSpaceIdentifier(ASID).
• rs1=x0,rs2=x0: allTranslationLookasideBuffer(TLB)entriesareinvalidated
• rs1!=x0,rs2=x0: allTLBentriesthathitthevirtualaddressspecifiedbyrs1areinvalidated.
• rs1=x0,rs2!=x0: allTLBentriesthathittheprocessIDspecifiedbyrs2areinvalidated.
• rs1!=x0,rs2!=x0: allTLBentriesthathitthevirtualaddressspecifiedbyrs1andtheprocess
IDspecifiedbyrs2areinvalidated.
18.2.4 AMOInstruction
An atomic operation indicates the exclusive consecutive read-modify-write operations on a
sharedmemoryaddressbymultiplethreads.
Inasingle-coresystem,exclusiveaccessisguaranteedaslongastheexecutionisnotinterrupted
byexceptionsorinterrupts. Thememorymodelremainssimpleandalignswithprogrammerin-
tuition: areadoperationalwaysreturnsthevaluefromthemostrecentwritetothesameaddress.
RegardlessoftheLSUdesigninasingle-coreCPU,itconsistentlymeetsprogrammers'expecta-
tionsformemoryaccess.
Inamulti-coresystem,thememorymodelbecomesextremelycomplex,andsituationsmayno
longerbeintuitive. Questionslike"Whichwritewasthelastone? Doesthereadoperationguar-
anteetheorderofresults? Andwillthisbethenextwriteoperation?"thatdonotrequireconcern
insingle-corescenarioscanbecomeintricatelytangledinamulti-coreenvironment.
Currently,multiplememoryorderingmodelsaredefinedbydifferenthardwareimplementations:
• Sequentialconsistency
• Processorconsistency
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 415

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
• Weakconsistency
• Releaseconsistency(RISC-V)
Asaresult,thedefinitionofatomicoperationvariesaccordingtothearchitecture.
In the RISC-V architecture, Atomic Memory Operations (AMO) instructions cover a broad range
of Arithmetic Logic Unit (ALU) operations, including addition, AND/OR/XOR, MIN/MAX, and so
forth. TheseessentiallymeetLinuxrequirementsforatomicoperationprimitives. However,there
isanissuethatthesupporteddatatypesarerelativelylimited. InRV32architectures,onlyword-
sizedoperationsaresupported,whileRV64extendssupporttobothwordanddouble-wordsized
operations. Thelackofsupportforhalf-wordoperations,though,posesaproblem. Specifically,
qspinlockhasastrongrequirementforanxchgoperationonhalfwords,whichcurrentlyprevents
RISC-Vfromeffectivelysupportingqspinlock.
18.2.5 Load-Reserved/Store-ConditionalInstruction
TheLoad-Reserved/Store-Conditional(LR/SC)instructionsarewidelyappliedintheARMarchi-
tecture. Andthecompare-and-swap(CAS)instructioninthex86architectureisequivalenttothe
LR/SCinstruction.
ThedefinitionsofLR/SCinstructionsinRISC-Vareasfollows:
LR is similar to load. It obtains data from a specified memory and monitors subsequent write
operationsofthisaddress. AfterperformingALUcalculationfortheobtaineddata,theCPUuses
theSCinstructiontowriteanewvalueintothememoryaddressofthepreviousLRoperation. Ifno
CPUwriteoperationisperformedonthismemoryaddress,theSCinstructionwritesthenewvalue
intothememoryandsetsrdto0(indicatingsuccess),likeacommonstoreinstruction. Otherwise,
theSCinstructiondoesnotwritethenewvalueintothememory,andsetsrdtoanon-zerovalue
(indicatingfailure).
RISC-VliststhefollowingadvantagesofLR/SCagainstCAS:
1. CASsuffersfromtheABAproblem,whichmeansitonlycaresaboutthefinalstaterather
than the intermediate steps. If the value loaded previously matches the one fetched by
CAS,thenewvalueissuccessfullywritten. However,thismightdeviatefromprogrammer
expectationsandcanundermineatomicitysinceevenifsomeoneelsehaswrittentothe
sameaddressormadetwowrites,revertingbacktotheinitialvalueinthesecondwrite.
Incontrast,LR/SCinstructionsmonitoranywriteoperations;evenwritingthesamevalue
woulddamagetheSCinstruction.
2. ThehardwareimplementationofCASisrelativelycomplex,requiringthreesourceregis-
tersandonedestinationregister(toholdtheresult).
3. ToaddresstheABAproblem,certainsystemsprovideaDW-CAS(Double-wordCompare
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 416

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
andSwap)instruction,whichismorecomplextoimplement,requiringfivesourceregis-
tersandtwodestinationregisters.
4. LR/SC demonstrates better efficiency compared to CAS because CAS inherently involves
anextraloadinstruction(i.e.,load+CASinstructions),whereasLR+SCachievesthesame
functionalitywithjustasingleloadinstruction.
The above presents the reasons why RISC-V choose LR/SC over CAS instructions. In reality,
however, software APIs do not provide robust support for LR/SC instructions. For instance,
Linux only directly maps the cmpxchg primitive to the CAS instruction without providing a
load_reserved/store_conditionalprimitive.
ThisresultsinthepracticalnecessityofimplementingcmpxchgusingLR/SCoperations:
| # a0 holds | address       | of memory | location         |     |              |
| ---------- | ------------- | --------- | ---------------- | --- | ------------ |
| # a1 holds | expected      | value     |                  |     |              |
| # a2 holds | desired       | value     |                  |     |              |
| # a0 holds | return value, |           | 0 if successful, |     | !0 otherwise |
cas:
| lr.w t0, | (a0) # Load  | original | value.            |          |         |
| -------- | ------------ | -------- | ----------------- | -------- | ------- |
| bne t0,  | a1, fail #   | Doesn't  | match,            | so fail. |         |
| sc.w t0, | a2, (a0) #   | Try      | to update.        |          |         |
| bnez t0, | cas # Retry  | if       | store-conditional |          | failed. |
| li a0, 0 | # Set return | to       | success.          |          |         |
| jr ra #  | Return.      |          |                   |          |         |
fail:
| li a0, 1 | # Set return | to  | failure. |     |     |
| -------- | ------------ | --- | -------- | --- | --- |
| jr ra #  | Return.      |     |          |     |     |
Basedontheloopstructureofcmpxchg,double-loopimplementationisformed：
c = v->counter;
| while ((old | = cmpxchg(&v->counter, |     |     | c, c | c_op i)) != c) |
| ----------- | ---------------------- | --- | --- | ---- | -------------- |
c = old;
If this is the case, the advantages outlined in reasons 1, 3, and 4 for RISC-V are negated, thus
abandoning CAS has an negative impact on software compatibility. The presence of CAS sup-
portedinarm64servesasagoodexample.
ThelivelockproblemofLR/SCismorecomplex. MoreproblemsmayexistforNonUniformMem-
oryAccess(NUMA)systemswithmorethan128harts. (whichwillnotbeexpandeduponinthis
article).
Compared to arm64, RISC-V LR/SC lacks the paired usage with LR/wfe, which prevents the im-
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 417

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
plementationofaload_condprimitive(Whenasinglecorehasmultiplethreads,theload_cond
primitiveinstructionisrequiredtostopoccupyingthepipeline).
| 18.3 XuanTie | Enhancement | Instruction |     |
| ------------ | ----------- | ----------- | --- |
18.3.1 sync.is
Thisinstructionensuresthatallprecedinginstructionsretireearlierthanthisinstructionandall
subsequentinstructionsretirelaterthanthisinstruction. Whenthisinstructionretires,thepipeline
isclearedandtherequestisbroadcasttoothercores. Thisinstructioncanbeusedasthesync.s
instruction(onlyforflush).
| 18.3.2 dcache.cipars1 |     |     |     |
| --------------------- | --- | --- | --- |
ThisinstructionwritestheD-Cache/L2Cacheentrythathitsthephysicaladdressspecifiedbyrs1
backtothelower-levelstoreandinvalidatesthisentry. Thisinstructioncanalsobeusedasthe
dcache.cpa(onlyforflush)ordcache.ipa(onlyforinvalidation)instruction.
| 18.3.3 icache.ivars1 |     |     |     |
| -------------------- | --- | --- | --- |
ThisinstructioninvalidatestheI-Cacheentriescorrespondingtothevirtualaddressspecifiedby
rs1.
| 18.4 Software | Examples |     |     |
| ------------- | -------- | --- | --- |
ThefollowingpresentsexamplesofMMU(MemoryManagementUnit)andCACHEmaintenance
implementations for the Linux RISC-V architecture, along with software demonstrations of the
relevantoperationswithinOS.
18.4.1 TLBMaintenance
| 18.4.1.1 TLBFlush |                               |     |            |
| ----------------- | ----------------------------- | --- | ---------- |
| static inline     | void local_flush_tlb(unsigned |     | long asid) |
{
| __asm__ | __volatile__ | ("sfence.vma" | : : : "memory"); |
| ------- | ------------ | ------------- | ---------------- |
}
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 418

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
| 18.4.1.2 | FlushTLBEntriesAssociatedwithaProcessBasedonASID |      |                          |     |            |
| -------- | ------------------------------------------------ | ---- | ------------------------ | --- | ---------- |
| static   | inline                                           | void | local_flush_tlb(unsigned |     | long asid) |
{
__asm__ __volatile__ ("sfence.vma , %0" : : "r" (asid) : "memory");
}
| 18.4.1.3 | FlushTLBEntriesBasedonVA |     |     |     |     |
| -------- | ------------------------ | --- | --- | --- | --- |
static inline void local_flush_tlb_range(unsigned long start, unsigned long size)
{
|     | unsigned       | long    | page_add     | = PAGE_DOWN(start); |           |
| --- | -------------- | ------- | ------------ | ------------------- | --------- |
|     | unsigned       | long    | page_end     | = PAGE_UP(start     | + size);  |
|     | while(page_add |         | < page_end)  | {                   |           |
|     |                | __asm__ | __volatile__ | ("sfence.vma        | %0, zero" |
:
|     |     |     |     | : "r" (page_add), | "r" (asid) |
| --- | --- | --- | --- | ----------------- | ---------- |
: "memory");
|     |     | page_add | += PAGE_SIZE; |     |     |
| --- | --- | -------- | ------------- | --- | --- |
}
}
| 18.4.1.4 | FlushTLBEntriesBasedonVAandASID |     |     |     |     |
| -------- | ------------------------------- | --- | --- | --- | --- |
static inline void local_flush_tlb_range_asid(unsigned long start, unsigned long␣
| ,→size, | unsigned | long | asid) |     |     |
| ------- | -------- | ---- | ----- | --- | --- |
{
|     | unsigned       | long    | page_add     | = PAGE_DOWN(start); |          |
| --- | -------------- | ------- | ------------ | ------------------- | -------- |
|     | unsigned       | long    | page_end     | = PAGE_UP(start     | + size); |
|     | while(page_add |         | < page_end)  | {                   |          |
|     |                | __asm__ | __volatile__ | ("sfence.vma        | %0, %1"  |
:
|     |     |     |     | : "r" (page_add), | "r" (asid) |
| --- | --- | --- | --- | ----------------- | ---------- |
: "memory");
|     |     | page_add | += PAGE_SIZE; |     |     |
| --- | --- | -------- | ------------- | --- | --- |
}
}
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 419

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
| 18.4.2   | InstructionAreaSynchronization              |                              |     |
| -------- | ------------------------------------------- | ---------------------------- | --- |
| 18.4.2.1 | In-CoreGlobalInstructionAreaSynchronization |                              |     |
| static   | inline void                                 | local_flush_icache_all(void) |     |
{
|     | asm volatile | ("fence.i" | ::: "memory"); |
| --- | ------------ | ---------- | -------------- |
}
| 18.4.2.2 | Multi-CoreGlobalInstructionAreaSynchronization |     |        |
| -------- | ---------------------------------------------- | --- | ------ |
| static   | void ipi_remote_fence_i(void                   |     | *info) |
{
|     | asm volatile | ("fence.i" | ::: "memory"); |
| --- | ------------ | ---------- | -------------- |
}
void flush_icache_all(void)
{
on_each_cpu(ipi_remote_fence_i, NULL, 1);
}
18.4.2.3 XuanTieMulti-CorePreciseInstructionAreaSynchronization
static inline void flush_icache_range(unsigned long va_start, unsigned long size)
{
register unsigned long i asm("a0") = va_start & ~(L1_CACHE_BYTES - 1);
|     | for (; i | < (start + size); | i += L1_CACHE_BYTES) |
| --- | -------- | ----------------- | -------------------- |
__asm__ __volatile__ ("icache.iva" : : "r" (asid) : "memory");
|     | __asm__ | __volatile__("sync.is"); |     |
| --- | ------- | ------------------------ | --- |
}
| 18.4.3 | DMASynchronization |     |     |
| ------ | ------------------ | --- | --- |
18.4.3.1 XuanTieMulti-CorePreciseDMASynchronizationwithThreeDirections
void dma_sync_from_cpu_to_dev(unsigned long pa_start, unsigned long size)
{
register unsigned long i asm("a0") = pa_start & ~(L1_CACHE_BYTES - 1);
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 420

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
| for (; i | < (start + size); | i += L1_CACHE_BYTES) |     |     |
| -------- | ----------------- | -------------------- | --- | --- |
__asm__ __volatile__ ("dcache.cpa" : : "r" (asid) : "memory");
| __asm__ | __volatile__("sync.s"); |     |     |     |
| ------- | ----------------------- | --- | --- | --- |
}
void dma_sync_from_dev_to_cpu(unsigned long pa_start, unsigned long size)
{
register unsigned long i asm("a0") = pa_start & ~(L1_CACHE_BYTES - 1);
| for (; i | < (start + size); | i += L1_CACHE_BYTES) |     |     |
| -------- | ----------------- | -------------------- | --- | --- |
__asm__ __volatile__ ("dcache.ipa" : : "r" (asid) : "memory");
| __asm__ | __volatile__("sync.s"); |     |     |     |
| ------- | ----------------------- | --- | --- | --- |
}
void dma_sync_all(unsigned long pa_start, unsigned long size)
{
register unsigned long i asm("a0") = pa_start & ~(L1_CACHE_BYTES - 1);
| for (; i | < (start + size); | i += L1_CACHE_BYTES) |     |     |
| -------- | ----------------- | -------------------- | --- | --- |
__asm__ __volatile__ ("dcache.cipa" : : "r" (asid) : "memory");
| __asm__ | __volatile__("sync.s"); |     |     |     |
| ------- | ----------------------- | --- | --- | --- |
}
18.4.4 ReferenceImplementationofAtomic
The following content comes from the official Linux RISC-V architecture implementation of
arch_atomicandcmpxchg.
/*
* First, the atomic ops that have no ordering constraints and therefor don't
* have the AQ or RL bits set. These don't return anything, so there's only
| * one version | to worry about. |     |     |     |
| ------------- | --------------- | --- | --- | --- |
*/
| #define ATOMIC_OP(op,  | asm_op, | I, asm_type, | c_type, prefix) | \   |
| ---------------------- | ------- | ------------ | --------------- | --- |
| static __always_inline |         |              |                 | \   |
void atomic##prefix##_##op(c_type i, atomic##prefix##_t *v) \
| {   |     |     |     | \   |
| --- | --- | --- | --- | --- |
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 421

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
|     | __asm__ |     | __volatile__ |              | (       |     |           |         |         | \   |
| --- | ------- | --- | ------------ | ------------ | ------- | --- | --------- | ------- | ------- | --- |
|     |         |     | "            | amo"         | #asm_op | "." | #asm_type | " zero, | %1, %0" | \   |
|     |         |     | : "+A"       | (v->counter) |         |     |           |         |         | \   |
|     |         |     | : "r"        | (I)          |         |     |           |         |         | \   |
|     |         |     | : "memory"); |              |         |     |           |         |         | \   |
| }   |         |     |              |              |         |     |           |         |         | \   |
#ifdef CONFIG_GENERIC_ATOMIC64
| #define | ATOMIC_OPS(op, |     |      | asm_op, | I)  |         |     |     |     | \   |
| ------- | -------------- | --- | ---- | ------- | --- | ------- | --- | --- | --- | --- |
|         | ATOMIC_OP      |     | (op, | asm_op, | I,  | w, int, | )   |     |     |     |
#else
| #define | ATOMIC_OPS(op, |     |      | asm_op, | I)  |         |     |     |     | \   |
| ------- | -------------- | --- | ---- | ------- | --- | ------- | --- | --- | --- | --- |
|         | ATOMIC_OP      |     | (op, | asm_op, | I,  | w, int, | )   |     |     | \   |
|         | ATOMIC_OP      |     | (op, | asm_op, | I,  | d, s64, | 64) |     |     |     |
#endif
| ATOMIC_OPS(add, |     |     | add, | i)  |     |     |     |     |     |     |
| --------------- | --- | --- | ---- | --- | --- | --- | --- | --- | --- | --- |
| ATOMIC_OPS(sub, |     |     | add, | -i) |     |     |     |     |     |     |
| ATOMIC_OPS(and, |     |     | and, | i)  |     |     |     |     |     |     |
| ATOMIC_OPS(     |     | or, | or,  | i)  |     |     |     |     |     |     |
| ATOMIC_OPS(xor, |     |     | xor, | i)  |     |     |     |     |     |     |
#undef ATOMIC_OP
#undef ATOMIC_OPS
/*
* Atomic ops that have ordered, relaxed, acquire, and release variants.
* There's two flavors of these: the arithmatic ops have both fetch and return
| * versions, |     | while | the | logical | ops | only | have fetch | versions. |     |     |
| ----------- | --- | ----- | --- | ------- | --- | ---- | ---------- | --------- | --- | --- |
*/
#define ATOMIC_FETCH_OP(op, asm_op, I, asm_type, c_type, prefix) \
| static | __always_inline                              |     |              |               |         |      |                    |           |     | \   |
| ------ | -------------------------------------------- | --- | ------------ | ------------- | ------- | ---- | ------------------ | --------- | --- | --- |
| c_type | atomic##prefix##_fetch_##op##_relaxed(c_type |     |              |               |         |      |                    | i,        |     | \   |
|        |                                              |     |              |               |         |      | atomic##prefix##_t |           | *v) | \   |
| {      |                                              |     |              |               |         |      |                    |           |     | \   |
|        | register                                     |     | c_type       | ret;          |         |      |                    |           |     | \   |
|        | __asm__                                      |     | __volatile__ |               | (       |      |                    |           |     | \   |
|        |                                              |     | "            | amo"          | #asm_op | "."  | #asm_type          | " %1, %2, | %0" | \   |
|        |                                              |     | : "+A"       | (v->counter), |         | "=r" | (ret)              |           |     | \   |
|        |                                              |     | : "r"        | (I)           |         |      |                    |           |     | \   |
|        |                                              |     | : "memory"); |               |         |      |                    |           |     | \   |
|        | return                                       |     | ret;         |               |         |      |                    |           |     | \   |
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 422

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
| }      |                 |     |     |     |     |     |     | \   |
| ------ | --------------- | --- | --- | --- | --- | --- | --- | --- |
| static | __always_inline |     |     |     |     |     |     | \   |
c_type atomic##prefix##_fetch_##op(c_type i, atomic##prefix##_t *v) \
| {   |          |              |               |               |     |            |         | \   |
| --- | -------- | ------------ | ------------- | ------------- | --- | ---------- | ------- | --- |
|     | register | c_type       | ret;          |               |     |            |         | \   |
|     | __asm__  | __volatile__ | (             |               |     |            |         | \   |
|     |          | "            | amo" #asm_op  | "." #asm_type |     | ".aqrl %1, | %2, %0" | \   |
|     |          | : "+A"       | (v->counter), | "=r" (ret)    |     |            |         | \   |
|     |          | : "r"        | (I)           |               |     |            |         | \   |
|     |          | : "memory"); |               |               |     |            |         | \   |
|     | return   | ret;         |               |               |     |            |         | \   |
}
#define ATOMIC_OP_RETURN(op, asm_op, c_op, I, asm_type, c_type, prefix) \
| static | __always_inline                               |                                          |     |     |                    |         |     | \   |
| ------ | --------------------------------------------- | ---------------------------------------- | --- | --- | ------------------ | ------- | --- | --- |
| c_type | atomic##prefix##_##op##_return_relaxed(c_type |                                          |     |     |                    | i,      |     | \   |
|        |                                               |                                          |     |     | atomic##prefix##_t |         | *v) | \   |
| {      |                                               |                                          |     |     |                    |         |     | \   |
|        | return                                        | atomic##prefix##_fetch_##op##_relaxed(i, |     |     |                    | v) c_op | I;  | \   |
| }      |                                               |                                          |     |     |                    |         |     | \   |
| static | __always_inline                               |                                          |     |     |                    |         |     | \   |
c_type atomic##prefix##_##op##_return(c_type i, atomic##prefix##_t *v) \
| {   |        |                                |     |     |         |     |     | \   |
| --- | ------ | ------------------------------ | --- | --- | ------- | --- | --- | --- |
|     | return | atomic##prefix##_fetch_##op(i, |     |     | v) c_op | I;  |     | \   |
}
#ifdef CONFIG_GENERIC_ATOMIC64
| #define | ATOMIC_OPS(op,       |     | asm_op, c_op, | I)    |            |     |     | \   |
| ------- | -------------------- | --- | ------------- | ----- | ---------- | --- | --- | --- |
|         | ATOMIC_FETCH_OP(     |     | op, asm_op,   |       | I, w, int, | )   |     | \   |
|         | ATOMIC_OP_RETURN(op, |     | asm_op,       | c_op, | I, w, int, | )   |     |     |
#else
| #define | ATOMIC_OPS(op,       |     | asm_op, c_op, | I)    |            |     |     | \   |
| ------- | -------------------- | --- | ------------- | ----- | ---------- | --- | --- | --- |
|         | ATOMIC_FETCH_OP(     |     | op, asm_op,   |       | I, w, int, | )   |     | \   |
|         | ATOMIC_OP_RETURN(op, |     | asm_op,       | c_op, | I, w, int, | )   |     | \   |
|         | ATOMIC_FETCH_OP(     |     | op, asm_op,   |       | I, d, s64, | 64) |     | \   |
|         | ATOMIC_OP_RETURN(op, |     | asm_op,       | c_op, | I, d, s64, | 64) |     |     |
#endif
| ATOMIC_OPS(add, |                           | add, | +, i)  |                           |     |     |     |     |
| --------------- | ------------------------- | ---- | ------ | ------------------------- | --- | --- | --- | --- |
| ATOMIC_OPS(sub, |                           | add, | +, -i) |                           |     |     |     |     |
| #define         | atomic_add_return_relaxed |      |        | atomic_add_return_relaxed |     |     |     |     |
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 423

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
| #define atomic_sub_return_relaxed |     | atomic_sub_return_relaxed |     |     |
| --------------------------------- | --- | ------------------------- | --- | --- |
| #define atomic_add_return         |     | atomic_add_return         |     |     |
| #define atomic_sub_return         |     | atomic_sub_return         |     |     |
| #define atomic_fetch_add_relaxed  |     | atomic_fetch_add_relaxed  |     |     |
| #define atomic_fetch_sub_relaxed  |     | atomic_fetch_sub_relaxed  |     |     |
| #define atomic_fetch_add          |     | atomic_fetch_add          |     |     |
| #define atomic_fetch_sub          |     | atomic_fetch_sub          |     |     |
#ifndef CONFIG_GENERIC_ATOMIC64
#define atomic64_add_return_relaxed atomic64_add_return_relaxed
#define atomic64_sub_return_relaxed atomic64_sub_return_relaxed
| #define atomic64_add_return |     | atomic64_add_return |     |     |
| --------------------------- | --- | ------------------- | --- | --- |
| #define atomic64_sub_return |     | atomic64_sub_return |     |     |
#define atomic64_fetch_add_relaxed atomic64_fetch_add_relaxed
#define atomic64_fetch_sub_relaxed atomic64_fetch_sub_relaxed
| #define atomic64_fetch_add |     | atomic64_fetch_add |     |     |
| -------------------------- | --- | ------------------ | --- | --- |
| #define atomic64_fetch_sub |     | atomic64_fetch_sub |     |     |
#endif
#undef ATOMIC_OPS
#ifdef CONFIG_GENERIC_ATOMIC64
| #define ATOMIC_OPS(op, | asm_op, I) |            |     | \   |
| ---------------------- | ---------- | ---------- | --- | --- |
| ATOMIC_FETCH_OP(op,    | asm_op,    | I, w, int, | )   |     |
#else
| #define ATOMIC_OPS(op, | asm_op, I) |            |     | \   |
| ---------------------- | ---------- | ---------- | --- | --- |
| ATOMIC_FETCH_OP(op,    | asm_op,    | I, w, int, | )   | \   |
| ATOMIC_FETCH_OP(op,    | asm_op,    | I, d, s64, | 64) |     |
#endif
| ATOMIC_OPS(and, and,             | i)  |                          |     |     |
| -------------------------------- | --- | ------------------------ | --- | --- |
| ATOMIC_OPS( or, or,              | i)  |                          |     |     |
| ATOMIC_OPS(xor, xor,             | i)  |                          |     |     |
| #define atomic_fetch_and_relaxed |     | atomic_fetch_and_relaxed |     |     |
| #define atomic_fetch_or_relaxed  |     | atomic_fetch_or_relaxed  |     |     |
| #define atomic_fetch_xor_relaxed |     | atomic_fetch_xor_relaxed |     |     |
| #define atomic_fetch_and         |     | atomic_fetch_and         |     |     |
| #define atomic_fetch_or          |     | atomic_fetch_or          |     |     |
| #define atomic_fetch_xor         |     | atomic_fetch_xor         |     |     |
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 424

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
| #ifndef | CONFIG_GENERIC_ATOMIC64 |     |     |     |     |
| ------- | ----------------------- | --- | --- | --- | --- |
#define atomic64_fetch_and_relaxed atomic64_fetch_and_relaxed
| #define | atomic64_fetch_or_relaxed |     | atomic64_fetch_or_relaxed |     |     |
| ------- | ------------------------- | --- | ------------------------- | --- | --- |
#define atomic64_fetch_xor_relaxed atomic64_fetch_xor_relaxed
| #define | atomic64_fetch_and |     | atomic64_fetch_and |     |     |
| ------- | ------------------ | --- | ------------------ | --- | --- |
| #define | atomic64_fetch_or  |     | atomic64_fetch_or  |     |     |
| #define | atomic64_fetch_xor |     | atomic64_fetch_xor |     |     |
#endif
#undef ATOMIC_OPS
#undef ATOMIC_FETCH_OP
#undef ATOMIC_OP_RETURN
| /* This | is required | to provide | a full barrier | on success. | */  |
| ------- | ----------- | ---------- | -------------- | ----------- | --- |
static __always_inline int atomic_fetch_add_unless(atomic_t *v, int a, int u)
{
| int | prev, rc;            |         |               |         |     |
| --- | -------------------- | ------- | ------------- | ------- | --- |
|     | __asm__ __volatile__ | (       |               |         |     |
|     | "0:                  | lr.w    | %[p], %[c]\n" |         |     |
|     | "                    | beq     | %[p], %[u],   | 1f\n"   |     |
|     | "                    | add     | %[rc], %[p],  | %[a]\n" |     |
|     | "                    | sc.w.rl | %[rc], %[rc], | %[c]\n" |     |
|     | "                    | bnez    | %[rc], 0b\n"  |         |     |
|     | "                    | fence   | rw, rw\n"     |         |     |
"1:\n"
|     | : [p]"=&r" | (prev), | [rc]"=&r"  | (rc), [c]"+A" | (v->counter) |
| --- | ---------- | ------- | ---------- | ------------- | ------------ |
|     | : [a]"r"   | (a),    | [u]"r" (u) |               |              |
: "memory");
return prev;
}
| #define | atomic_fetch_add_unless |     | atomic_fetch_add_unless |     |     |
| ------- | ----------------------- | --- | ----------------------- | --- | --- |
| #ifndef | CONFIG_GENERIC_ATOMIC64 |     |                         |     |     |
static __always_inline s64 atomic64_fetch_add_unless(atomic64_t *v, s64 a, s64 u)
{
| s64  | prev;                |     |     |     |     |
| ---- | -------------------- | --- | --- | --- | --- |
| long | rc;                  |     |     |     |     |
|      | __asm__ __volatile__ | (   |     |     |     |
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 425

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
|     | "0: | lr.d %[p],     | %[c]\n" |         |     |     |
| --- | --- | -------------- | ------- | ------- | --- | --- |
|     | "   | beq %[p],      | %[u],   | 1f\n"   |     |     |
|     | "   | add %[rc],     | %[p],   | %[a]\n" |     |     |
|     | "   | sc.d.rl %[rc], | %[rc],  | %[c]\n" |     |     |
|     | "   | bnez %[rc],    | 0b\n"   |         |     |     |
|     | "   | fence rw,      | rw\n"   |         |     |     |
"1:\n"
|     | : [p]"=&r" | (prev),     | [rc]"=&r" | (rc), [c]"+A" | (v->counter) |     |
| --- | ---------- | ----------- | --------- | ------------- | ------------ | --- |
|     | : [a]"r"   | (a), [u]"r" | (u)       |               |              |     |
: "memory");
return prev;
}
| #define atomic64_fetch_add_unless |     |     | atomic64_fetch_add_unless |     |     |     |
| --------------------------------- | --- | --- | ------------------------- | --- | --- | --- |
#endif
/*
* atomic_{cmp,}xchg is required to have exactly the same ordering semantics as
* {cmp,}xchg and the operations that return, so they need a full barrier.
*/
| #define ATOMIC_OP(c_t, | prefix, | size) |     |     |     | \   |
| ---------------------- | ------- | ----- | --- | --- | --- | --- |
| static __always_inline |         |       |     |     |     | \   |
c_t atomic##prefix##_xchg_relaxed(atomic##prefix##_t *v, c_t n) \
| {                      |                               |     |     |           |     | \   |
| ---------------------- | ----------------------------- | --- | --- | --------- | --- | --- |
| return                 | __xchg_relaxed(&(v->counter), |     |     | n, size); |     | \   |
| }                      |                               |     |     |           |     | \   |
| static __always_inline |                               |     |     |           |     | \   |
c_t atomic##prefix##_xchg_acquire(atomic##prefix##_t *v, c_t n) \
| {                      |                               |     |     |           |     | \   |
| ---------------------- | ----------------------------- | --- | --- | --------- | --- | --- |
| return                 | __xchg_acquire(&(v->counter), |     |     | n, size); |     | \   |
| }                      |                               |     |     |           |     | \   |
| static __always_inline |                               |     |     |           |     | \   |
c_t atomic##prefix##_xchg_release(atomic##prefix##_t *v, c_t n) \
| {                                            |                               |     |           |            |     | \   |
| -------------------------------------------- | ----------------------------- | --- | --------- | ---------- | --- | --- |
| return                                       | __xchg_release(&(v->counter), |     |           | n, size);  |     | \   |
| }                                            |                               |     |           |            |     | \   |
| static __always_inline                       |                               |     |           |            |     | \   |
| c_t atomic##prefix##_xchg(atomic##prefix##_t |                               |     |           | *v, c_t n) |     | \   |
| {                                            |                               |     |           |            |     | \   |
| return                                       | __xchg(&(v->counter),         |     | n, size); |            |     | \   |
| }                                            |                               |     |           |            |     | \   |
| static __always_inline                       |                               |     |           |            |     | \   |
c_t atomic##prefix##_cmpxchg_relaxed(atomic##prefix##_t *v, \
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 426

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
|     |     | c_t o, c_t | n)  | \   |
| --- | --- | ---------- | --- | --- |
{ \
| return __cmpxchg_relaxed(&(v->counter), |     |     | o, n, size); | \   |
| --------------------------------------- | --- | --- | ------------ | --- |
} \
| static __always_inline |     |     |     | \   |
| ---------------------- | --- | --- | --- | --- |
c_t atomic##prefix##_cmpxchg_acquire(atomic##prefix##_t *v, \
|     |     | c_t o, c_t | n)  | \   |
| --- | --- | ---------- | --- | --- |
{ \
| return __cmpxchg_acquire(&(v->counter), |     |     | o, n, size); | \   |
| --------------------------------------- | --- | --- | ------------ | --- |
} \
| static __always_inline |     |     |     | \   |
| ---------------------- | --- | --- | --- | --- |
c_t atomic##prefix##_cmpxchg_release(atomic##prefix##_t *v, \
|     |     | c_t o, c_t | n)  | \   |
| --- | --- | ---------- | --- | --- |
{ \
| return __cmpxchg_release(&(v->counter), |     |     | o, n, size); | \   |
| --------------------------------------- | --- | --- | ------------ | --- |
} \
| static __always_inline |     |     |     | \   |
| ---------------------- | --- | --- | --- | --- |
c_t atomic##prefix##_cmpxchg(atomic##prefix##_t *v, c_t o, c_t n) \
{ \
| return __cmpxchg(&(v->counter), |     | o, n, | size); | \   |
| ------------------------------- | --- | ----- | ------ | --- |
}
#ifdef CONFIG_GENERIC_ATOMIC64
| #define ATOMIC_OPS() |      |     |     | \   |
| -------------------- | ---- | --- | --- | --- |
| ATOMIC_OP(int,       | , 4) |     |     |     |
#else
| #define ATOMIC_OPS() |        |     |     | \   |
| -------------------- | ------ | --- | --- | --- |
| ATOMIC_OP(int,       | , 4)   |     |     | \   |
| ATOMIC_OP(s64,       | 64, 8) |     |     |     |
#endif
ATOMIC_OPS()
| #define atomic_xchg_relaxed     | atomic_xchg_relaxed    |     |     |     |
| ------------------------------- | ---------------------- | --- | --- | --- |
| #define atomic_xchg_acquire     | atomic_xchg_acquire    |     |     |     |
| #define atomic_xchg_release     | atomic_xchg_release    |     |     |     |
| #define atomic_xchg atomic_xchg |                        |     |     |     |
| #define atomic_cmpxchg_relaxed  | atomic_cmpxchg_relaxed |     |     |     |
| #define atomic_cmpxchg_acquire  | atomic_cmpxchg_acquire |     |     |     |
| #define atomic_cmpxchg_release  | atomic_cmpxchg_release |     |     |     |
| #define atomic_cmpxchg          | atomic_cmpxchg         |     |     |     |
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 427

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
#undef ATOMIC_OPS
#undef ATOMIC_OP
static __always_inline int atomic_sub_if_positive(atomic_t *v, int offset)
{
int prev, rc;
| __asm__ __volatile__ | (                     |         |     |
| -------------------- | --------------------- | ------- | --- |
| "0:                  | lr.w %[p], %[c]\n"    |         |     |
| "                    | sub %[rc], %[p],      | %[o]\n" |     |
| "                    | bltz %[rc], 1f\n"     |         |     |
| "                    | sc.w.rl %[rc], %[rc], | %[c]\n" |     |
| "                    | bnez %[rc], 0b\n"     |         |     |
| "                    | fence rw, rw\n"       |         |     |
"1:\n"
| : [p]"=&r" | (prev), [rc]"=&r" | (rc), [c]"+A" | (v->counter) |
| ---------- | ----------------- | ------------- | ------------ |
| : [o]"r"   | (offset)          |               |              |
: "memory");
return prev - offset;
}
#define atomic_dec_if_positive(v) atomic_sub_if_positive(v, 1)
#ifndef CONFIG_GENERIC_ATOMIC64
static __always_inline s64 atomic64_sub_if_positive(atomic64_t *v, s64 offset)
{
s64 prev;
long rc;
| __asm__ __volatile__ | (                     |         |     |
| -------------------- | --------------------- | ------- | --- |
| "0:                  | lr.d %[p], %[c]\n"    |         |     |
| "                    | sub %[rc], %[p],      | %[o]\n" |     |
| "                    | bltz %[rc], 1f\n"     |         |     |
| "                    | sc.d.rl %[rc], %[rc], | %[c]\n" |     |
| "                    | bnez %[rc], 0b\n"     |         |     |
| "                    | fence rw, rw\n"       |         |     |
"1:\n"
| : [p]"=&r" | (prev), [rc]"=&r" | (rc), [c]"+A" | (v->counter) |
| ---------- | ----------------- | ------------- | ------------ |
| : [o]"r"   | (offset)          |               |              |
: "memory");
return prev - offset;
}
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 428

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
| #define __xchg_relaxed(ptr, |          | new, size)      |               | \   |
| --------------------------- | -------- | --------------- | ------------- | --- |
| ({                          |          |                 |               | \   |
| __typeof__(ptr)             |          | __ptr = (ptr);  |               | \   |
| __typeof__(new)             |          | __new = (new);  |               | \   |
| __typeof__(*(ptr))          |          | __ret;          |               | \   |
| switch                      | (size) { |                 |               | \   |
| case                        | 4:       |                 |               | \   |
|                             | __asm__  | __volatile__    | (             | \   |
|                             |          | " amoswap.w     | %0, %2, %1\n" | \   |
|                             |          | : "=r" (__ret), | "+A" (*__ptr) | \   |
|                             |          | : "r" (__new)   |               | \   |
|                             |          | : "memory");    |               | \   |
|                             | break;   |                 |               | \   |
| case                        | 8:       |                 |               | \   |
|                             | __asm__  | __volatile__    | (             | \   |
|                             |          | " amoswap.d     | %0, %2, %1\n" | \   |
|                             |          | : "=r" (__ret), | "+A" (*__ptr) | \   |
|                             |          | : "r" (__new)   |               | \   |
|                             |          | : "memory");    |               | \   |
|                             | break;   |                 |               | \   |
default: \
|     | BUILD_BUG(); |     |     | \   |
| --- | ------------ | --- | --- | --- |
} \
__ret; \
})
| #define xchg_relaxed(ptr, |     | x)                    |                       | \   |
| ------------------------- | --- | --------------------- | --------------------- | --- |
| ({                        |     |                       |                       | \   |
| __typeof__(*(ptr))        |     | _x_ = (x);            |                       | \   |
| (__typeof__(*(ptr)))      |     | __xchg_relaxed((ptr), |                       | \   |
|                           |     |                       | _x_, sizeof(*(ptr))); | \   |
})
| #define __xchg_acquire(ptr, |          | new, size)     |     | \   |
| --------------------------- | -------- | -------------- | --- | --- |
| ({                          |          |                |     | \   |
| __typeof__(ptr)             |          | __ptr = (ptr); |     | \   |
| __typeof__(new)             |          | __new = (new); |     | \   |
| __typeof__(*(ptr))          |          | __ret;         |     | \   |
| switch                      | (size) { |                |     | \   |
| case                        | 4:       |                |     | \   |
|                             | __asm__  | __volatile__   | (   | \   |
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 429

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
|      |         | " amoswap.w           | %0, %2, %1\n" | \   |
| ---- | ------- | --------------------- | ------------- | --- |
|      |         | RISCV_ACQUIRE_BARRIER |               | \   |
|      |         | : "=r" (__ret),       | "+A" (*__ptr) | \   |
|      |         | : "r" (__new)         |               | \   |
|      |         | : "memory");          |               | \   |
|      | break;  |                       |               | \   |
| case | 8:      |                       |               | \   |
|      | __asm__ | __volatile__          | (             | \   |
|      |         | " amoswap.d           | %0, %2, %1\n" | \   |
|      |         | RISCV_ACQUIRE_BARRIER |               | \   |
|      |         | : "=r" (__ret),       | "+A" (*__ptr) | \   |
|      |         | : "r" (__new)         |               | \   |
|      |         | : "memory");          |               | \   |
|      | break;  |                       |               | \   |
default: \
|     | BUILD_BUG(); |     |     | \   |
| --- | ------------ | --- | --- | --- |
} \
__ret; \
})
| #define xchg_acquire(ptr, |     | x)                    |                       | \   |
| ------------------------- | --- | --------------------- | --------------------- | --- |
| ({                        |     |                       |                       | \   |
| __typeof__(*(ptr))        |     | _x_ = (x);            |                       | \   |
| (__typeof__(*(ptr)))      |     | __xchg_acquire((ptr), |                       | \   |
|                           |     |                       | _x_, sizeof(*(ptr))); | \   |
})
| #define __xchg_release(ptr, |          | new, size)            |               | \   |
| --------------------------- | -------- | --------------------- | ------------- | --- |
| ({                          |          |                       |               | \   |
| __typeof__(ptr)             |          | __ptr = (ptr);        |               | \   |
| __typeof__(new)             |          | __new = (new);        |               | \   |
| __typeof__(*(ptr))          |          | __ret;                |               | \   |
| switch                      | (size) { |                       |               | \   |
| case                        | 4:       |                       |               | \   |
|                             | __asm__  | __volatile__          | (             | \   |
|                             |          | RISCV_RELEASE_BARRIER |               | \   |
|                             |          | " amoswap.w           | %0, %2, %1\n" | \   |
|                             |          | : "=r" (__ret),       | "+A" (*__ptr) | \   |
|                             |          | : "r" (__new)         |               | \   |
|                             |          | : "memory");          |               | \   |
|                             | break;   |                       |               | \   |
| case                        | 8:       |                       |               | \   |
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 430

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
|     | __asm__ | __volatile__          | (    |           | \   |
| --- | ------- | --------------------- | ---- | --------- | --- |
|     |         | RISCV_RELEASE_BARRIER |      |           | \   |
|     |         | " amoswap.d           | %0,  | %2, %1\n" | \   |
|     |         | : "=r" (__ret),       | "+A" | (*__ptr)  | \   |
|     |         | : "r" (__new)         |      |           | \   |
|     |         | : "memory");          |      |           | \   |
|     | break;  |                       |      |           | \   |
default: \
|     | BUILD_BUG(); |     |     |     | \   |
| --- | ------------ | --- | --- | --- | --- |
} \
__ret; \
})
| #define xchg_release(ptr, |     | x)                    |     |                       | \   |
| ------------------------- | --- | --------------------- | --- | --------------------- | --- |
| ({                        |     |                       |     |                       | \   |
| __typeof__(*(ptr))        |     | _x_ = (x);            |     |                       | \   |
| (__typeof__(*(ptr)))      |     | __xchg_release((ptr), |     |                       | \   |
|                           |     |                       |     | _x_, sizeof(*(ptr))); | \   |
})
| #define __xchg(ptr, | new,     | size)            |      |               | \   |
| ------------------- | -------- | ---------------- | ---- | ------------- | --- |
| ({                  |          |                  |      |               | \   |
| __typeof__(ptr)     |          | __ptr = (ptr);   |      |               | \   |
| __typeof__(new)     |          | __new = (new);   |      |               | \   |
| __typeof__(*(ptr))  |          | __ret;           |      |               | \   |
| switch              | (size) { |                  |      |               | \   |
| case                | 4:       |                  |      |               | \   |
|                     | __asm__  | __volatile__     | (    |               | \   |
|                     |          | " amoswap.w.aqrl |      | %0, %2, %1\n" | \   |
|                     |          | : "=r" (__ret),  | "+A" | (*__ptr)      | \   |
|                     |          | : "r" (__new)    |      |               | \   |
|                     |          | : "memory");     |      |               | \   |
|                     | break;   |                  |      |               | \   |
| case                | 8:       |                  |      |               | \   |
|                     | __asm__  | __volatile__     | (    |               | \   |
|                     |          | " amoswap.d.aqrl |      | %0, %2, %1\n" | \   |
|                     |          | : "=r" (__ret),  | "+A" | (*__ptr)      | \   |
|                     |          | : "r" (__new)    |      |               | \   |
|                     |          | : "memory");     |      |               | \   |
|                     | break;   |                  |      |               | \   |
default: \
|     | BUILD_BUG(); |     |     |     | \   |
| --- | ------------ | --- | --- | --- | --- |
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 431

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
|     | }      |     |     |     |     |     |     | \   |
| --- | ------ | --- | --- | --- | --- | --- | --- | --- |
|     | __ret; |     |     |     |     |     |     | \   |
})
| #define | xchg(ptr,            |     | x)  |     |               |      |                       | \   |
| ------- | -------------------- | --- | --- | --- | ------------- | ---- | --------------------- | --- |
| ({      |                      |     |     |     |               |      |                       | \   |
|         | __typeof__(*(ptr))   |     |     |     | _x_ =         | (x); |                       | \   |
|         | (__typeof__(*(ptr))) |     |     |     | __xchg((ptr), |      | _x_, sizeof(*(ptr))); | \   |
})
| #define | xchg32(ptr,                 |     | x)    |     |     |     |     | \   |
| ------- | --------------------------- | --- | ----- | --- | --- | --- | --- | --- |
| ({      |                             |     |       |     |     |     |     | \   |
|         | BUILD_BUG_ON(sizeof(*(ptr)) |     |       |     |     | !=  | 4); | \   |
|         | xchg((ptr),                 |     | (x)); |     |     |     |     | \   |
})
| #define | xchg64(ptr,                 |     | x)    |     |     |     |     | \   |
| ------- | --------------------------- | --- | ----- | --- | --- | --- | --- | --- |
| ({      |                             |     |       |     |     |     |     | \   |
|         | BUILD_BUG_ON(sizeof(*(ptr)) |     |       |     |     | !=  | 8); | \   |
|         | xchg((ptr),                 |     | (x)); |     |     |     |     | \   |
})
/*
* Atomic compare and exchange. Compare OLD with MEM, if identical,
* store NEW in MEM. Return the initial value in MEM. Success is
| * indicated |     | by  | comparing |     | RETURN | with | OLD. |     |
| ----------- | --- | --- | --------- | --- | ------ | ---- | ---- | --- |
*/
| #define | __cmpxchg_relaxed(ptr, |     |          |              | old,      | new,     | size)      | \   |
| ------- | ---------------------- | --- | -------- | ------------ | --------- | -------- | ---------- | --- |
| ({      |                        |     |          |              |           |          |            | \   |
|         | __typeof__(ptr)        |     |          | __ptr        | = (ptr);  |          |            | \   |
|         | __typeof__(*(ptr))     |     |          |              | __old     | = (old); |            | \   |
|         | __typeof__(*(ptr))     |     |          |              | __new     | = (new); |            | \   |
|         | __typeof__(*(ptr))     |     |          |              | __ret;    |          |            | \   |
|         | register               |     | unsigned |              | int __rc; |          |            | \   |
|         | switch                 |     | (size)   | {            |           |          |            | \   |
|         | case                   | 4:  |          |              |           |          |            | \   |
|         |                        |     | __asm__  | __volatile__ |           | (        |            | \   |
|         |                        |     |          | "0:          | lr.w      | %0,      | %2\n"      | \   |
|         |                        |     |          | "            | bne       | %0,      | %z3, 1f\n" | \   |
|         |                        |     |          | "            | sc.w      | %1,      | %z4, %2\n" | \   |
|         |                        |     |          | "            | bnez      | %1,      | 0b\n"      | \   |
|         |                        |     |          | "1:\n"       |           |          |            | \   |
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 432

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
|     |          |              | :            | "=&r" (__ret),      | "=&r"     | (__rc),      | "+A" (*__ptr) | \   |
| --- | -------- | ------------ | ------------ | ------------------- | --------- | ------------ | ------------- | --- |
|     |          |              | :            | "rJ" ((long)__old), |           | "rJ" (__new) |               | \   |
|     |          |              | :            | "memory");          |           |              |               | \   |
|     |          | break;       |              |                     |           |              |               | \   |
|     | case     | 8:           |              |                     |           |              |               | \   |
|     |          | __asm__      | __volatile__ |                     | (         |              |               | \   |
|     |          |              | "0:          | lr.d                | %0, %2\n" |              |               | \   |
|     |          |              | "            | bne                 | %0, %z3,  | 1f\n"        |               | \   |
|     |          |              | "            | sc.d                | %1, %z4,  | %2\n"        |               | \   |
|     |          |              | "            | bnez                | %1, 0b\n" |              |               | \   |
|     |          |              | "1:\n"       |                     |           |              |               | \   |
|     |          |              | :            | "=&r" (__ret),      | "=&r"     | (__rc),      | "+A" (*__ptr) | \   |
|     |          |              | :            | "rJ" (__old),       | "rJ"      | (__new)      |               | \   |
|     |          |              | :            | "memory");          |           |              |               | \   |
|     |          | break;       |              |                     |           |              |               | \   |
|     | default: |              |              |                     |           |              |               | \   |
|     |          | BUILD_BUG(); |              |                     |           |              |               | \   |
|     | }        |              |              |                     |           |              |               | \   |
|     | __ret;   |              |              |                     |           |              |               | \   |
})
| #define | cmpxchg_relaxed(ptr, |     |     | o, n)                    |      |                       |     | \   |
| ------- | -------------------- | --- | --- | ------------------------ | ---- | --------------------- | --- | --- |
| ({      |                      |     |     |                          |      |                       |     | \   |
|         | __typeof__(*(ptr))   |     |     | _o_ =                    | (o); |                       |     | \   |
|         | __typeof__(*(ptr))   |     |     | _n_ =                    | (n); |                       |     | \   |
|         | (__typeof__(*(ptr))) |     |     | __cmpxchg_relaxed((ptr), |      |                       |     | \   |
|         |                      |     |     |                          | _o_, | _n_, sizeof(*(ptr))); |     | \   |
})
| #define | __cmpxchg_acquire(ptr, |          |              | old,      | new, size) |       |     | \   |
| ------- | ---------------------- | -------- | ------------ | --------- | ---------- | ----- | --- | --- |
| ({      |                        |          |              |           |            |       |     | \   |
|         | __typeof__(ptr)        |          | __ptr        | = (ptr);  |            |       |     | \   |
|         | __typeof__(*(ptr))     |          |              | __old     | = (old);   |       |     | \   |
|         | __typeof__(*(ptr))     |          |              | __new     | = (new);   |       |     | \   |
|         | __typeof__(*(ptr))     |          |              | __ret;    |            |       |     | \   |
|         | register               | unsigned |              | int __rc; |            |       |     | \   |
|         | switch                 | (size)   | {            |           |            |       |     | \   |
|         | case                   | 4:       |              |           |            |       |     | \   |
|         |                        | __asm__  | __volatile__ |           | (          |       |     | \   |
|         |                        |          | "0:          | lr.w      | %0, %2\n"  |       |     | \   |
|         |                        |          | "            | bne       | %0, %z3,   | 1f\n" |     | \   |
|         |                        |          | "            | sc.w      | %1, %z4,   | %2\n" |     | \   |
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 433

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
|     |          |              | "                     | bnez                | %1, 0b\n" |              |               | \   |
| --- | -------- | ------------ | --------------------- | ------------------- | --------- | ------------ | ------------- | --- |
|     |          |              | RISCV_ACQUIRE_BARRIER |                     |           |              |               | \   |
|     |          |              | "1:\n"                |                     |           |              |               | \   |
|     |          |              | :                     | "=&r" (__ret),      | "=&r"     | (__rc),      | "+A" (*__ptr) | \   |
|     |          |              | :                     | "rJ" ((long)__old), |           | "rJ" (__new) |               | \   |
|     |          |              | :                     | "memory");          |           |              |               | \   |
|     |          | break;       |                       |                     |           |              |               | \   |
|     | case     | 8:           |                       |                     |           |              |               | \   |
|     |          | __asm__      | __volatile__          |                     | (         |              |               | \   |
|     |          |              | "0:                   | lr.d                | %0, %2\n" |              |               | \   |
|     |          |              | "                     | bne                 | %0, %z3,  | 1f\n"        |               | \   |
|     |          |              | "                     | sc.d                | %1, %z4,  | %2\n"        |               | \   |
|     |          |              | "                     | bnez                | %1, 0b\n" |              |               | \   |
|     |          |              | RISCV_ACQUIRE_BARRIER |                     |           |              |               | \   |
|     |          |              | "1:\n"                |                     |           |              |               | \   |
|     |          |              | :                     | "=&r" (__ret),      | "=&r"     | (__rc),      | "+A" (*__ptr) | \   |
|     |          |              | :                     | "rJ" (__old),       | "rJ"      | (__new)      |               | \   |
|     |          |              | :                     | "memory");          |           |              |               | \   |
|     |          | break;       |                       |                     |           |              |               | \   |
|     | default: |              |                       |                     |           |              |               | \   |
|     |          | BUILD_BUG(); |                       |                     |           |              |               | \   |
|     | }        |              |                       |                     |           |              |               | \   |
|     | __ret;   |              |                       |                     |           |              |               | \   |
})
| #define | cmpxchg_acquire(ptr, |     |     | o, n)                    |      |                       |     | \   |
| ------- | -------------------- | --- | --- | ------------------------ | ---- | --------------------- | --- | --- |
| ({      |                      |     |     |                          |      |                       |     | \   |
|         | __typeof__(*(ptr))   |     |     | _o_ =                    | (o); |                       |     | \   |
|         | __typeof__(*(ptr))   |     |     | _n_ =                    | (n); |                       |     | \   |
|         | (__typeof__(*(ptr))) |     |     | __cmpxchg_acquire((ptr), |      |                       |     | \   |
|         |                      |     |     |                          | _o_, | _n_, sizeof(*(ptr))); |     | \   |
})
| #define | __cmpxchg_release(ptr, |          |       | old,      | new, size) |     |     | \   |
| ------- | ---------------------- | -------- | ----- | --------- | ---------- | --- | --- | --- |
| ({      |                        |          |       |           |            |     |     | \   |
|         | __typeof__(ptr)        |          | __ptr | = (ptr);  |            |     |     | \   |
|         | __typeof__(*(ptr))     |          |       | __old     | = (old);   |     |     | \   |
|         | __typeof__(*(ptr))     |          |       | __new     | = (new);   |     |     | \   |
|         | __typeof__(*(ptr))     |          |       | __ret;    |            |     |     | \   |
|         | register               | unsigned |       | int __rc; |            |     |     | \   |
|         | switch                 | (size)   | {     |           |            |     |     | \   |
|         | case                   | 4:       |       |           |            |     |     | \   |
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 434

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
|     |          | __asm__      | __volatile__          |                     | (         |              |               | \   |
| --- | -------- | ------------ | --------------------- | ------------------- | --------- | ------------ | ------------- | --- |
|     |          |              | RISCV_RELEASE_BARRIER |                     |           |              |               | \   |
|     |          |              | "0:                   | lr.w                | %0, %2\n" |              |               | \   |
|     |          |              | "                     | bne                 | %0, %z3,  | 1f\n"        |               | \   |
|     |          |              | "                     | sc.w                | %1, %z4,  | %2\n"        |               | \   |
|     |          |              | "                     | bnez                | %1, 0b\n" |              |               | \   |
|     |          |              | "1:\n"                |                     |           |              |               | \   |
|     |          |              | :                     | "=&r" (__ret),      | "=&r"     | (__rc),      | "+A" (*__ptr) | \   |
|     |          |              | :                     | "rJ" ((long)__old), |           | "rJ" (__new) |               | \   |
|     |          |              | :                     | "memory");          |           |              |               | \   |
|     |          | break;       |                       |                     |           |              |               | \   |
|     | case     | 8:           |                       |                     |           |              |               | \   |
|     |          | __asm__      | __volatile__          |                     | (         |              |               | \   |
|     |          |              | RISCV_RELEASE_BARRIER |                     |           |              |               | \   |
|     |          |              | "0:                   | lr.d                | %0, %2\n" |              |               | \   |
|     |          |              | "                     | bne                 | %0, %z3,  | 1f\n"        |               | \   |
|     |          |              | "                     | sc.d                | %1, %z4,  | %2\n"        |               | \   |
|     |          |              | "                     | bnez                | %1, 0b\n" |              |               | \   |
|     |          |              | "1:\n"                |                     |           |              |               | \   |
|     |          |              | :                     | "=&r" (__ret),      | "=&r"     | (__rc),      | "+A" (*__ptr) | \   |
|     |          |              | :                     | "rJ" (__old),       | "rJ"      | (__new)      |               | \   |
|     |          |              | :                     | "memory");          |           |              |               | \   |
|     |          | break;       |                       |                     |           |              |               | \   |
|     | default: |              |                       |                     |           |              |               | \   |
|     |          | BUILD_BUG(); |                       |                     |           |              |               | \   |
|     | }        |              |                       |                     |           |              |               | \   |
|     | __ret;   |              |                       |                     |           |              |               | \   |
})
| #define | cmpxchg_release(ptr, |     |     | o, n)                    |      |                       |     | \   |
| ------- | -------------------- | --- | --- | ------------------------ | ---- | --------------------- | --- | --- |
| ({      |                      |     |     |                          |      |                       |     | \   |
|         | __typeof__(*(ptr))   |     |     | _o_ =                    | (o); |                       |     | \   |
|         | __typeof__(*(ptr))   |     |     | _n_ =                    | (n); |                       |     | \   |
|         | (__typeof__(*(ptr))) |     |     | __cmpxchg_release((ptr), |      |                       |     | \   |
|         |                      |     |     |                          | _o_, | _n_, sizeof(*(ptr))); |     | \   |
})
| #define | __cmpxchg(ptr,     |     | old,  | new,     | size)    |     |     | \   |
| ------- | ------------------ | --- | ----- | -------- | -------- | --- | --- | --- |
| ({      |                    |     |       |          |          |     |     | \   |
|         | __typeof__(ptr)    |     | __ptr | = (ptr); |          |     |     | \   |
|         | __typeof__(*(ptr)) |     |       | __old    | = (old); |     |     | \   |
|         | __typeof__(*(ptr)) |     |       | __new    | = (new); |     |     | \   |
(continuesonnextpage)
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 435

Chapter18AppendixDXuanTieC900Multi-CoreSynchronizationInstructionsandProgram
Implementations
(continuedfrompreviouspage)
| __typeof__(*(ptr)) |              | __ret;                |           |              |               | \   |
| ------------------ | ------------ | --------------------- | --------- | ------------ | ------------- | --- |
| register           | unsigned     | int __rc;             |           |              |               | \   |
| switch             | (size) {     |                       |           |              |               | \   |
| case               | 4:           |                       |           |              |               | \   |
|                    | __asm__      | __volatile__          | (         |              |               | \   |
|                    |              | "0: lr.w              | %0, %2\n" |              |               | \   |
|                    |              | " bne                 | %0, %z3,  | 1f\n"        |               | \   |
|                    |              | " sc.w.rl             | %1,       | %z4, %2\n"   |               | \   |
|                    |              | " bnez                | %1, 0b\n" |              |               | \   |
|                    |              | " fence               | rw, rw\n" |              |               | \   |
|                    |              | "1:\n"                |           |              |               | \   |
|                    |              | : "=&r" (__ret),      | "=&r"     | (__rc),      | "+A" (*__ptr) | \   |
|                    |              | : "rJ" ((long)__old), |           | "rJ" (__new) |               | \   |
|                    |              | : "memory");          |           |              |               | \   |
|                    | break;       |                       |           |              |               | \   |
| case               | 8:           |                       |           |              |               | \   |
|                    | __asm__      | __volatile__          | (         |              |               | \   |
|                    |              | "0: lr.d              | %0, %2\n" |              |               | \   |
|                    |              | " bne                 | %0, %z3,  | 1f\n"        |               | \   |
|                    |              | " sc.d.rl             | %1,       | %z4, %2\n"   |               | \   |
|                    |              | " bnez                | %1, 0b\n" |              |               | \   |
|                    |              | " fence               | rw, rw\n" |              |               | \   |
|                    |              | "1:\n"                |           |              |               | \   |
|                    |              | : "=&r" (__ret),      | "=&r"     | (__rc),      | "+A" (*__ptr) | \   |
|                    |              | : "rJ" (__old),       | "rJ"      | (__new)      |               | \   |
|                    |              | : "memory");          |           |              |               | \   |
|                    | break;       |                       |           |              |               | \   |
| default:           |              |                       |           |              |               | \   |
|                    | BUILD_BUG(); |                       |           |              |               | \   |
| }                  |              |                       |           |              |               | \   |
| __ret;             |              |                       |           |              |               | \   |
})
Revision06 ©2001-2026C-SKYMicrosystemsCo.,Ltd.anditsaffiliatesAllrightsreserved 436
