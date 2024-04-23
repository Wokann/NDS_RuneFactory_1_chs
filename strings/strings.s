;该部分是arm9内的文本数据
.open ".\.temp\root\ftc\arm9.bin",0x02000000
    ;.incbin ".\strings\TextOfSystem\arm9.bin"
    .include ".\strings\TextOfSystem\TextIn_arm9_000.s"
    .include ".\strings\TextOfSystem\TextIn_arm9_001.s"
    .include ".\strings\TextOfSystem\TextIn_arm9_002.s"
    .include ".\strings\TextOfSystem\TextIn_arm9_003.s"
    .include ".\strings\TextOfSystem\TextIn_arm9_004.s"
    .include ".\strings\TextOfSystem\TextIn_arm9_005.s"
    .include ".\strings\TextOfSystem\TextIn_arm9_006.s"
    .include ".\strings\TextOfSystem\TextIn_arm9_007.s"
.close

;该部分是overlay部分的文本数据
.create ".\.temp\root\ftc\overlay9_0",0
    .incbin ".\strings\TextOfSystem\overlay9_0"
;    .include ".\strings\TextOfSystem\TextIn_overlay9_0.s"
.close

;该部分是res文件夹内的文本资源
.create ".\.temp\root\res\rfItemAttr.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfItemAttr.s"
.close

.create ".\.temp\root\res\rfItemHelp.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfItemHelp.s"
.close

.create ".\.temp\root\res\rfItemName.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfItemName.s"
.close

.create ".\.temp\root\res\rfItemType.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfItemType.s"
.close

.create ".\.temp\root\res\rfTxtCalendar.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfTxtCalendar.s"
.close

.create ".\.temp\root\res\rfTxtCardError.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfTxtCardError.s"
.close

.create ".\.temp\root\res\rfTxtItemShop.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfTxtItemShop.s"
.close

.create ".\.temp\root\res\rfTxtLoadMsg.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfTxtLoadMsg.s"
.close

.create ".\.temp\root\res\rfTxtMenuFarm.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfTxtMenuFarm.s"
.close

.create ".\.temp\root\res\rfTxtMonsterAbility.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfTxtMonsterAbility.s"
.close

.create ".\.temp\root\res\rfTxtMonsterKind.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfTxtMonsterKind.s"
.close

.create ".\.temp\root\res\rfTxtNameEntry.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfTxtNameEntry.s"
.close

.create ".\.temp\root\res\rfTxtNameEntryDef.bin",0
.loadtable ".\charmap_chs_reverse.txt"
    .include ".\strings\TextOfNormal\rfTxtNameEntryDef.s"
.close

;输入法的中文汉字‘二’调整为日文假名的‘ニ’。
.create ".\.temp\root\res\rfTxtNameEntryInput.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfTxtNameEntryInput.s"
.close

.create ".\.temp\root\res\rfTxtNPCName.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfTxtNPCName.s"
.close

.create ".\.temp\root\res\rfTxtSavePointName.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfTxtSavePointName.s"
.close

.create ".\.temp\root\res\rfTxtSchedule.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfTxtSchedule.s"
.close

.create ".\.temp\root\res\rfTxtSynthesis.bin",0
.loadtable ".\charmap_chs.txt"
    .include ".\strings\TextOfNormal\rfTxtSynthesis.s"
.close

.create ".\.temp\root\res\txt\event.bin",0
    .incbin ".\strings\TextOfEvent\event.bin"
;    .include ".\strings\TextOfEvent\event.s"
.close
