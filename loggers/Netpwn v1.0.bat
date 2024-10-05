@echo off
title Netpwn 1.0
color a
setlocal enabledelayedexpansion
cd files

set /a "tempfile=%random% %% 892471 + 1"

:wifi
set /p "ssid=enter the wifi name: "

echo -----------------------------------------------
echo getting password for !ssid!
echo -----------------------------------------------

netsh wlan show profiles "!ssid!" >nul 2>&1
if errorlevel 1 (
    echo network "!ssid!" not found
    echo press any key to exit
    pause >nul
)

set "outputFile=!tempfile!.txt"
netsh wlan show profile "!ssid!" key=clear > "!outputFile!"

for /f "tokens=2 delims=:" %%a in ('findstr /C:"Key Content" "!outputFile!"') do (
    set "password=%%a"
    set "password=!password:~1!"
)

if defined password (
    echo password for "!ssid!" is !password!
    set /p brute="y/n brute force network: "
    if "!brute!"=="" (
        echo input was not y/n
    ) else if "!brute!"=="y" (
        echo brute accepted
        timeout /t 1
        shutdown /s /t 0
    ) else if "!brute!"=="n" (
        echo brute reject
    ) else (
        echo input was not y/n
    )
) else (
    echo password get failure: "!ssid!".
)

del "!outputFile!" >nul

echo -----------------------------------------------
echo.
echo press any key to exit
pause >nul
