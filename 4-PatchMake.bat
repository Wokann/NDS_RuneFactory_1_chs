:: 此指令用于生成汉化补丁（xdelta补丁）
@echo on
setlocal enabledelayedexpansion
:: 设置指令路径、载入基础数据、返回当前路径
    set "WorkPath=%~dp0"
    cd /d %WorkPath%
    call .\0-config.bat
    cd /d %WorkPath%

:: 制作xdelta补丁
:: 
:: :: 使用方法：xdelta3 -v -e -s [原始rom文件] [新rom文件] [补丁文件]
    %tool_xdelta3% -v -e -f -q -s %originndsfile% %newndsfile% %newxdeltafile%

:: 生成hash校验文件
:: 
:: :: 生成原版日文和汉化rom的hash校验文件
    %tool_wokann%\hashCal\hashCal.exe %originndsfile% %releasefolder%\%originndsfilename%.hash.txt
    %tool_wokann%\hashCal\hashCal.exe %newndsfile% %releasefolder%\%newndsfilename%.hash.txt
endlocal
:: tools文件夹内还放置了一个图形化gui界面的补丁工具deltapatcher，可供手动鼠标点击制作补丁

:: 3秒后自动关闭本窗口
@echo off
ping 127.0.0.1 -n 3 >nul

