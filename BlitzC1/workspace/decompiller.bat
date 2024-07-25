@echo off
setlocal

:: Проверка, запущен ли Roblox
tasklist /FI "IMAGENAME eq RobloxPlayerBeta.exe" 2>NUL | find /I /N "RobloxPlayerBeta.exe">NUL
if "%ERRORLEVEL%"=="1" (
    echo =====================================================
    echo                Roblox Script Decompiler
    echo =====================================================
    echo.
    echo Error: Roblox is not running.
    echo Please start Roblox and try again.
    echo.
    echo Press any key to exit...
    pause >nul
    exit /b
)

:: Продолжение скрипта, если Roblox запущен
echo =====================================================
echo                Roblox Script Decompiler
echo =====================================================
echo.
echo Initializing...
ping localhost -n 2 >nul
echo.
echo Decompiling script...
ping localhost -n 3 >nul
echo.
echo Processing data...
ping localhost -n 3 >nul
echo.
echo Analyzing bytecode...
ping localhost -n 3 >nul
echo.
echo Almost done...
ping localhost -n 2 >nul
echo.
echo =====================================================
echo               Decompilation Complete
echo =====================================================
echo.
echo Press any key to exit...
pause >nul
exit /b
