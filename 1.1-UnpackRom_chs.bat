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
        if exist %tempfolder_chs% ( rd /s /q %tempfolder_chs%)
        md %tempfolder_chs%\root\ftc
        %tool_ndstool% -x %newndsfile% ^
            -9  %tempfolder_chs%\root\ftc\arm9.bin ^
            -7  %tempfolder_chs%\root\ftc\arm7.bin ^
            -y9 %tempfolder_chs%\root\ftc\y9.bin ^
            -y7 %tempfolder_chs%\root\ftc\y7.bin ^
            -d  %tempfolder_chs%\root\data ^
            -y  %tempfolder_chs%\root\overlay ^
            -t  %tempfolder_chs%\root\ftc\banner.bin ^
            -h  %tempfolder_chs%\root\ftc\header.bin
    )

:: 开始解包工作（tinkedsi模式）
    if %Packmode% equ 1 (
:: :: 无新增文件，直接使用tinkedsi进行解包打包
        if exist %tempfolder_chs% ( rd /s /q %tempfolder_chs%)
        %tool_tinkedsi%\Tinke.exe %newndsfile% -x %tempfolder_chs%
    )
endlocal

:: 3秒后自动关闭本窗口
@echo off
ping 127.0.0.1 -n 3 >nul