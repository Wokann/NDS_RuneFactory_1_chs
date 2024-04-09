:: 此指令用于处理并导入汉化资源
@echo on
setlocal enabledelayedexpansion
:: 设置指令路径、载入基础数据、返回当前路径
    set "WorkPath=%~dp0"
    cd /d %WorkPath%
    call .\0-config.bat
    cd /d %WorkPath%

:: 处理汉化资源并导入
:: 
:: ::armips应用处理
    %tool_armips% %armips_main%
:: :: (临时性)将data文件夹内的所有东西复制到临时文件夹
    :: xcopy /s /e /i /h /k /y ".\data" "%tempfolder%"
:: :: 压缩arm9（若有）
    :: %tool_cue%\blz.exe -en9 %tempfolder%\root\ftc\arm9.bin
:: :: 修正arm9解压起始位置
    :: %tool_armips% %tool_wokann%\arm9blzoffset.asm
endlocal

:: 3秒后自动关闭本窗口
@echo off
ping 127.0.0.1 -n 3 >nul

