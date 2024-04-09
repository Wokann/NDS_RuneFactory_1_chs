::此指令用于清理编译文件
@echo on
setlocal enabledelayedexpansion
:: 设置指令路径、载入基础数据、返回当前路径
    set "WorkPath=%~dp0"
    cd /d %WorkPath%
    call .\0-config.bat
    cd /d %WorkPath%

if exist %tempfolder% ( rd /s /q %tempfolder%)
if exist %tempfolder_chs% ( rd /s /q %tempfolder_chs%)
if exist %tempfolder_repack% ( rd /s /q %tempfolder_repack%)
if exist %newndsfile% ( rm -f %newndsfile%)
if exist %releasefolder%\%newndsfilename%.nds ( rm -f %releasefolder%\%newndsfilename%.nds)

endlocal
:: 
:: 3秒后自动关闭本窗口
@echo off
ping 127.0.0.1 -n 3 >nul