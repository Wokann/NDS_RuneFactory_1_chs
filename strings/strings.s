;该部分是arm9内的文本数据
.create ".\.temp\root\ftc\arm9.bin",0
    .incbin ".\strings\TextOfSystem\arm9.bin"
.close

;该部分是overlay部分的文本数据
.create ".\.temp\root\ftc\overlay9_0",0
    .incbin ".\strings\TextOfSystem\overlay9_0"
.close

;该部分是res文件夹内的文本资源
.create ".\.temp\root\res\rfItemAttr.bin",0
    .incbin ".\strings\TextOfNormal\rfItemAttr.bin"
.close

.create ".\.temp\root\res\rfItemHelp.bin",0
    .incbin ".\strings\TextOfNormal\rfItemHelp.bin"
.close

.create ".\.temp\root\res\rfItemName.bin",0
    .incbin ".\strings\TextOfNormal\rfItemName.bin"
.close

.create ".\.temp\root\res\rfItemType.bin",0
    .incbin ".\strings\TextOfNormal\rfItemType.bin"
.close

.create ".\.temp\root\res\rfTxtCalendar.bin",0
    .incbin ".\strings\TextOfNormal\rfTxtCalendar.bin"
.close

.create ".\.temp\root\res\rfTxtCardError.bin",0
    .incbin ".\strings\TextOfNormal\rfTxtCardError.bin"
.close

.create ".\.temp\root\res\rfTxtItemShop.bin",0
    .incbin ".\strings\TextOfNormal\rfTxtItemShop.bin"
.close

.create ".\.temp\root\res\rfTxtLoadMsg.bin",0
    .incbin ".\strings\TextOfNormal\rfTxtLoadMsg.bin"
.close

.create ".\.temp\root\res\rfTxtMenuFarm.bin",0
    .incbin ".\strings\TextOfNormal\rfTxtMenuFarm.bin"
.close

.create ".\.temp\root\res\rfTxtMonsterAbility.bin",0
    .incbin ".\strings\TextOfNormal\rfTxtMonsterAbility.bin"
.close

.create ".\.temp\root\res\rfTxtMonsterKind.bin",0
    .incbin ".\strings\TextOfNormal\rfTxtMonsterKind.bin"
.close

.create ".\.temp\root\res\rfTxtNameEntry.bin",0
    .incbin ".\strings\TextOfNormal\rfTxtNameEntry.bin"
.close

.create ".\.temp\root\res\rfTxtNameEntryDef.bin",0
    .incbin ".\strings\TextOfNormal\rfTxtNameEntryDef.bin"
.close
;此文件现有改动没太大必要，若确需改为汉字时，另行调整
;.create ".\.temp\root\res\rfTxtNameEntryInput.bin",0
;    .incbin ".\strings\TextOfNormal\rfTxtNameEntryInput.bin"
;.close

.create ".\.temp\root\res\rfTxtNPCName.bin",0
    .incbin ".\strings\TextOfNormal\rfTxtNPCName.bin"
.close

.create ".\.temp\root\res\rfTxtSavePointName.bin",0
    .incbin ".\strings\TextOfNormal\rfTxtSavePointName.bin"
.close

.create ".\.temp\root\res\rfTxtSchedule.bin",0
    .incbin ".\strings\TextOfNormal\rfTxtSchedule.bin"
.close

.create ".\.temp\root\res\rfTxtSynthesis.bin",0
    .incbin ".\strings\TextOfNormal\rfTxtSynthesis.bin"
.close

.create ".\.temp\root\res\txt\event.bin",0
    .incbin ".\strings\TextOfEvent\event.bin"
.close

/*
;该部分是arm9内的文本数据
.create ".\.temp\root\ftc\arm9.bin",0
    .include ".\strings\TextOfSystem\arm9.s"
.close

;该部分是overlay部分的文本数据
.create ".\.temp\root\ftc\overlay9_0",0
    .include ".\strings\TextOfSystem\overlay9_0.s"
.close
*/
/*
;该部分是res文件夹内的文本资源
.create ".\.temp\root\res\rfItemAttr.bin",0
    .include ".\strings\TextOfNormal\rfItemAttr.s"
.close

.create ".\.temp\root\res\rfItemHelp.bin",0
    .include ".\strings\TextOfNormal\rfItemHelp.s"
.close

.create ".\.temp\root\res\rfItemName.bin",0
    .include ".\strings\TextOfNormal\rfItemName.s"
.close

.create ".\.temp\root\res\rfItemType.bin",0
    .include ".\strings\TextOfNormal\rfItemType.s"
.close

.create ".\.temp\root\res\rfTxtCalendar.bin",0
    .include ".\strings\TextOfNormal\rfTxtCalendar.s"
.close

.create ".\.temp\root\res\rfTxtCardError.bin",0
    .include ".\strings\TextOfNormal\rfTxtCardError.s"
.close

.create ".\.temp\root\res\rfTxtItemShop.bin",0
    .include ".\strings\TextOfNormal\rfTxtItemShop.s"
.close

.create ".\.temp\root\res\rfTxtLoadMsg.bin",0
    .include ".\strings\TextOfNormal\rfTxtLoadMsg.s"
.close

.create ".\.temp\root\res\rfTxtMenuFarm.bin",0
    .include ".\strings\TextOfNormal\rfTxtMenuFarm.s"
.close

.create ".\.temp\root\res\rfTxtMonsterAbility.bin",0
    .include ".\strings\TextOfNormal\rfTxtMonsterAbility.s"
.close

.create ".\.temp\root\res\rfTxtMonsterKind.bin",0
    .include ".\strings\TextOfNormal\rfTxtMonsterKind.s"
.close

.create ".\.temp\root\res\rfTxtNameEntry.bin",0
    .include ".\strings\TextOfNormal\rfTxtNameEntry.s"
.close
;此文件现有改动没太大必要，若确需改为汉字时，另行调整
;.create ".\.temp\root\res\rfTxtNameEntryDef.bin",0
;    .include ".\strings\TextOfNormal\rfTxtNameEntryDef.s"
;.close

.create ".\.temp\root\res\rfTxtNameEntryInput.bin",0
    .include ".\strings\TextOfNormal\rfTxtNameEntryInput.s"
.close

.create ".\.temp\root\res\rfTxtNPCName.bin",0
    .include ".\strings\TextOfNormal\rfTxtNPCName.s"
.close

.create ".\.temp\root\res\rfTxtSavePointName.bin",0
    .include ".\strings\TextOfNormal\rfTxtSavePointName.s"
.close

.create ".\.temp\root\res\rfTxtSchedule.bin",0
    .include ".\strings\TextOfNormal\rfTxtSchedule.s"
.close

.create ".\.temp\root\res\rfTxtSynthesis.bin",0
    .include ".\strings\TextOfNormal\rfTxtSynthesis.s"
.close

.create ".\.temp\root\res\txt\event.bin",0
    .include ".\strings\TextOfEvent\event.s"
.close
*/