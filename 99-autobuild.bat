::此指令用于自动完成解包、导入资源、打包、生成补丁的流程
@echo on
setlocal enabledelayedexpansion
:: 设置指令路径、载入基础数据、返回当前路径
    set "WorkPath=%~dp0"
    cd /d %WorkPath%
    call .\0-config.bat
    cd /d %WorkPath%

:: 清理旧临时文件
    call 9-clean.bat
    cd /d %WorkPath%
:: 解包nds文件
    call 1.0-UnpackRom.bat
    cd /d %WorkPath%
:: 导入汉化资源
    call 2-DoChinese.bat
    cd /d %WorkPath%
:: 打包nds文件
    call 3-RepackRom.bat
    cd /d %WorkPath%
:: 生成补丁
    call 4-PatchMake.bat
    cd /d %WorkPath%
endlocal

::3秒后自动关闭本窗口
@echo off
ping 127.0.0.1 -n 3 >nul