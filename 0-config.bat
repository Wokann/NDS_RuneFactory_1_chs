:: 本次汉化游戏为：符文工厂1（日版）"0525 - Rune Factory - Shin Bokujou Monogatari (Japan)

:: 设置汉化基础工具
    set tool_ndstool=.\tools\ndstool\ndstool.exe
    set tool_tinkedsi=.\tools\tinke
    set tool_armips=.\tools\armips\armips.exe
    set tool_xdelta3=.\tools\xdelta3\xdelta3-3.1.0-i686.exe
    set tool_cue=.\tools\cue
    set tool_wokann=.\tools\wokann

:: 设置游戏相关信息（根据不同游戏实际情况进行调整）
:: 
:: :: 设置临时文件夹位置、nds原版、汉化文件名
    set tempfolder=.\.temp
    set tempfolder_chs=.\.temp_chs
    set tempfolder_repack=.\.temp_repack
    set releasefolder=.\release
    set originndsfilename=baserom_jp
    set newndsfilename=Rune_factory_1_chs
:: :: 拓展变量
    set originndsfile=.\%originndsfilename%.nds
    set newndsfile=.\%newndsfilename%.nds
    set repackndsfile=.\%newndsfilename%_repack.nds
    set newxdeltafile=%releasefolder%\%newndsfilename%.xdelta
    set armips_main=.\main_%newndsfilename%.asm

:: :: 设置解包打包模式
    set PackMode=1
    :: 模式0：ndstool解包、ndstool打包、tinkedsi重打包。适用于有添加新文件的情况。
    :: 
    :: 模式1: tinkedsi解包，tinkedsi打包。适用于无新文件添加，或fnt、fat结构不可轻易变动的情况。
