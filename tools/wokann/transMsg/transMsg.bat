:: 此指令用于转码二进制bin文件为明文文本
@echo on
setlocal enabledelayedexpansion
:: 设置指令路径、载入基础数据、返回当前路径
    set "WorkPath=%~dp0"
    cd /d %WorkPath%
:: 返回根目录
    cd ../../../
:: 设置工具及码表文件
    set tool_texttrans_1=./tools/wokann/transMsg/transMsg.exe
    set charmap_jp=./charmap_jp.txt
    set charmap_jp_reverse=./charmap_jp_reverse.txt
    set charmap_chs=./charmap_chs.txt
    set charmap_chs_reverse=./charmap_chs_reverse.txt

:: 转码文本
    %tool_texttrans_1% ./strings/data/res/rfItemAttr.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfItemHelp.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfItemName.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfItemType.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfTxtCalendar.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfTxtCardError.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfTxtItemShop.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfTxtLoadMsg.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfTxtMenuFarm.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfTxtMonsterAbility.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfTxtMonsterKind.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfTxtNameEntry.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfTxtNameEntryDef.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfTxtNameEntryInput.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfTxtNPCName.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfTxtSavePointName.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfTxtSchedule.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/rfTxtSynthesis.bin %charmap_jp%
    %tool_texttrans_1% ./strings/data/res/txt/event.bin %charmap_jp%
endlocal

