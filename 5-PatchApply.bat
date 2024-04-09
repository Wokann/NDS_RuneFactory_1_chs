:: 此指令用于应用汉化补丁（xdelta补丁）生成rom
@echo on
setlocal enabledelayedexpansion
:: 设置指令路径、载入基础数据、返回当前路径
    set "WorkPath=%~dp0"
    cd /d %WorkPath%
    call .\0-config.bat
    cd /d %WorkPath%

:: 应用xdelta补丁
:: 
:: :: 使用方法：xdelta3 -v -d -s [原始rom文件] [补丁文件] [新rom文件]
    %tool_xdelta3% -v -d -f -q -s %originndsfile% %newxdeltafile% %releasefolder%\%newndsfilename%.nds
endlocal
:: tools文件夹内还放置了一个图形化gui界面的补丁工具deltapatcher，可供手动鼠标点击应用补丁

:: 3秒后自动关闭本窗口
@echo off
ping 127.0.0.1 -n 3 >nul