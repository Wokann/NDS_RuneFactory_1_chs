:: 此指令用于打包生成汉化nds文件
@echo on
setlocal enabledelayedexpansion
:: 设置指令路径、载入基础数据、返回当前路径
    set "WorkPath=%~dp0"
    cd /d %WorkPath%
    call .\0-config.bat
    cd /d %WorkPath%

:: 开始打包工作（ndstool、tinkedsi模式）
    if %Packmode% equ 0 (
:: :: ndstool打包文件
        %tool_ndstool% -c %newndsfile% ^
            -9  %tempfolder%\root\ftc\arm9.bin ^
            -7  %tempfolder%\root\ftc\arm7.bin ^
            -y9 %tempfolder%\root\ftc\y9.bin ^
            -y7 %tempfolder%\root\ftc\y7.bin ^
            -d  %tempfolder%\root\data ^
            -y  %tempfolder%\root\overlay ^
            -t  %tempfolder%\root\ftc\banner.bin ^
            -h  %tempfolder%\root\ftc\header.bin
:: :: 头文件修复处理，并更新校验值
        %tool_wokann%\headerFix\headerFix.exe %newndsfile% %originndsfile%
:: :: tinkedsi重打包
        @echo =========Now Repacking %newndsfile%=========
:: :: :: 清理旧解包文件夹（若有）
        if exist %tempfolder% ( rd /s /q %tempfolder%)
        if exist %tempfolder_repack% ( rd /s /q %tempfolder_repack%)
:: :: :: 解包新nds文件，并立即重打包（含填充rom整数倍对齐）
        %tool_tinkedsi%\Tinke.exe %newndsfile% -x %tempfolder_repack%
        %tool_tinkedsi%\Tinke.exe %newndsfile% -r %tempfolder_repack% -o %repackndsfile%
        move /Y %repackndsfile% %newndsfile%
    )

:: 开始打包工作（tinkedsi模式）
    if %Packmode% equ 1 (
:: :: 无新增文件，直接使用tinkedsi进行解包打包
        %tool_tinkedsi%\Tinke.exe %originndsfile% -r %tempfolder% -o %newndsfile%
    )

:: 清理tinkedsi的临时文件夹
    @echo off
    for /d %%d in ("%tool_tinkedsi%\Temp*") do ( if exist "%%d" ( rd /s /q "%%d" ) )
    :: if exist %tempfolder% ( rd /s /q %tempfolder%)
    :: if exist %tempfolder_repack% ( rd /s /q %tempfolder_repack%)

endlocal

:: 3秒后自动关闭本窗口
@echo off
ping 127.0.0.1 -n 3 >nul