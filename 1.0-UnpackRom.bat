:: 此指令用于解包nds文件至临时文件夹
@echo on
setlocal enabledelayedexpansion
:: 设置指令路径、载入基础数据、返回当前路径
    set "WorkPath=%~dp0"
    cd /d %WorkPath%
    call .\0-config.bat
    cd /d %WorkPath%

:: 开始解包工作（ndstool、tinkedsi模式）
    if %Packmode% equ 0 (
:: :: 清理旧解包文件夹（若有），在创建新解包路径后，解包nds文件
        if exist %tempfolder% ( rd /s /q %tempfolder%)
        md %tempfolder%\root\ftc
        %tool_ndstool% -x %originndsfile% ^
            -9  %tempfolder%\root\ftc\arm9.bin ^
            -7  %tempfolder%\root\ftc\arm7.bin ^
            -y9 %tempfolder%\root\ftc\y9.bin ^
            -y7 %tempfolder%\root\ftc\y7.bin ^
            -d  %tempfolder%\root\data ^
            -y  %tempfolder%\root\overlay ^
            -t  %tempfolder%\root\ftc\banner.bin ^
            -h  %tempfolder%\root\ftc\header.bin
    )

:: 开始解包工作（tinkedsi模式）
    if %Packmode% equ 1 (
:: :: 无新增文件，直接使用tinkedsi进行解包打包
        if exist %tempfolder% ( rd /s /q %tempfolder%)
        %tool_tinkedsi%\Tinke.exe %originndsfile% -x %tempfolder%
    )
endlocal

:: 3秒后自动关闭本窗口
@echo off
ping 127.0.0.1 -n 3 >nul