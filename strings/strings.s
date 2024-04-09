;该部分是arm9内的文本数据
.create ".\.temp\root\ftc\arm9.bin",0
    .incbin ".\strings\ftc\arm9.bin"
.close

;该部分是overlay部分的文本数据
.create ".\.temp\root\ftc\overlay9_0",0
    .incbin ".\strings\overlay\overlay9_0"
.close

;该部分是res文件夹内的文本资源
.create ".\.temp\root\res\rfItemAttr.bin",0
    .incbin ".\strings\data\res\rfItemAttr.bin"
.close

.create ".\.temp\root\res\rfItemHelp.bin",0
    .incbin ".\strings\data\res\rfItemHelp.bin"
.close

.create ".\.temp\root\res\rfItemName.bin",0
    .incbin ".\strings\data\res\rfItemName.bin"
.close

.create ".\.temp\root\res\rfItemType.bin",0
    .incbin ".\strings\data\res\rfItemType.bin"
.close

.create ".\.temp\root\res\rfTxtCalendar.bin",0
    .incbin ".\strings\data\res\rfTxtCalendar.bin"
.close

.create ".\.temp\root\res\rfTxtCardError.bin",0
    .incbin ".\strings\data\res\rfTxtCardError.bin"
.close

.create ".\.temp\root\res\rfTxtItemShop.bin",0
    .incbin ".\strings\data\res\rfTxtItemShop.bin"
.close

.create ".\.temp\root\res\rfTxtLoadMsg.bin",0
    .incbin ".\strings\data\res\rfTxtLoadMsg.bin"
.close

.create ".\.temp\root\res\rfTxtMenuFarm.bin",0
    .incbin ".\strings\data\res\rfTxtMenuFarm.bin"
.close

.create ".\.temp\root\res\rfTxtMonsterAbility.bin",0
    .incbin ".\strings\data\res\rfTxtMonsterAbility.bin"
.close

.create ".\.temp\root\res\rfTxtMonsterKind.bin",0
    .incbin ".\strings\data\res\rfTxtMonsterKind.bin"
.close

.create ".\.temp\root\res\rfTxtNameEntry.bin",0
    .incbin ".\strings\data\res\rfTxtNameEntry.bin"
.close

.create ".\.temp\root\res\rfTxtNameEntryDef.bin",0
    .incbin ".\strings\data\res\rfTxtNameEntryDef.bin"
.close

.create ".\.temp\root\res\rfTxtNameEntryInput.bin",0
    .incbin ".\strings\data\res\rfTxtNameEntryInput.bin"
.close

.create ".\.temp\root\res\rfTxtNPCName.bin",0
    .incbin ".\strings\data\res\rfTxtNPCName.bin"
.close

.create ".\.temp\root\res\rfTxtSavePointName.bin",0
    .incbin ".\strings\data\res\rfTxtSavePointName.bin"
.close

.create ".\.temp\root\res\rfTxtSchedule.bin",0
    .incbin ".\strings\data\res\rfTxtSchedule.bin"
.close

.create ".\.temp\root\res\rfTxtSynthesis.bin",0
    .incbin ".\strings\data\res\rfTxtSynthesis.bin"
.close

.create ".\.temp\root\res\txt\event.bin",0
    .incbin ".\strings\data\res\txt\event.bin"
.close

/*
;该部分是arm9内的文本数据
.create ".\.temp\root\ftc\arm9.bin",0
    .include ".\strings\ftc\arm9.s"
.close

;该部分是overlay部分的文本数据
.create ".\.temp\root\ftc\overlay9_0",0
    .include ".\strings\overlay\overlay9_0.s"
.close
*/
/*
;该部分是res文件夹内的文本资源
.create ".\.temp\root\res\rfItemAttr.bin",0
    .include ".\strings\data\res\rfItemAttr.s"
.close

.create ".\.temp\root\res\rfItemHelp.bin",0
    .include ".\strings\data\res\rfItemHelp.s"
.close

.create ".\.temp\root\res\rfItemName.bin",0
    .include ".\strings\data\res\rfItemName.s"
.close

.create ".\.temp\root\res\rfItemType.bin",0
    .include ".\strings\data\res\rfItemType.s"
.close

.create ".\.temp\root\res\rfTxtCalendar.bin",0
    .include ".\strings\data\res\rfTxtCalendar.s"
.close

.create ".\.temp\root\res\rfTxtCardError.bin",0
    .include ".\strings\data\res\rfTxtCardError.s"
.close

.create ".\.temp\root\res\rfTxtItemShop.bin",0
    .include ".\strings\data\res\rfTxtItemShop.s"
.close

.create ".\.temp\root\res\rfTxtLoadMsg.bin",0
    .include ".\strings\data\res\rfTxtLoadMsg.s"
.close

.create ".\.temp\root\res\rfTxtMenuFarm.bin",0
    .include ".\strings\data\res\rfTxtMenuFarm.s"
.close

.create ".\.temp\root\res\rfTxtMonsterAbility.bin",0
    .include ".\strings\data\res\rfTxtMonsterAbility.s"
.close

.create ".\.temp\root\res\rfTxtMonsterKind.bin",0
    .include ".\strings\data\res\rfTxtMonsterKind.s"
.close

.create ".\.temp\root\res\rfTxtNameEntry.bin",0
    .include ".\strings\data\res\rfTxtNameEntry.s"
.close

.create ".\.temp\root\res\rfTxtNameEntryDef.bin",0
    .include ".\strings\data\res\rfTxtNameEntryDef.s"
.close

.create ".\.temp\root\res\rfTxtNameEntryInput.bin",0
    .include ".\strings\data\res\rfTxtNameEntryInput.s"
.close

.create ".\.temp\root\res\rfTxtNPCName.bin",0
    .include ".\strings\data\res\rfTxtNPCName.s"
.close

.create ".\.temp\root\res\rfTxtSavePointName.bin",0
    .include ".\strings\data\res\rfTxtSavePointName.s"
.close

.create ".\.temp\root\res\rfTxtSchedule.bin",0
    .include ".\strings\data\res\rfTxtSchedule.s"
.close

.create ".\.temp\root\res\rfTxtSynthesis.bin",0
    .include ".\strings\data\res\rfTxtSynthesis.s"
.close

.create ".\.temp\root\res\txt\event.bin",0
    .include ".\strings\data\res\txt\event.s"
.close
*/