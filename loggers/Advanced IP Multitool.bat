@echo off
title Advanced IP Multitool - by Kombat
chcp 65001 >nul
setlocal enabledelayedexpansion
cd files
set "askedUser=no"
set "doshut=yes"
set "isValidHostIp=1"

:: COLOR CODES:
:: RED: [38;2;255;0;0m
:: ORANGE: [38;2;255;127;0m
:: YELLOW: [38;2;255;255;0m
:: GREEN: [32m
:: BLUE: [34m
:: LIGHT BLUE: [36m
:: PINK: [35m
:: WHITE: [37m
:: BLACK: [38;2;255;255;0m

:start
call :banner
call :menu

:menu
echo                            [38;2;255;0;0m╔════[0m[38;2;255;0;0m[[0m[38;2;255;255;102m1[0m[38;2;255;0;0m][0m[38;2;255;255;102m IP Sniffer[0m
echo                            [38;2;255;0;0m╠════[0m[38;2;255;0;0m[[0m[38;2;255;255;102m2[0m[38;2;255;0;0m][0m[38;2;255;255;102m My IP Address[0m
echo                            [38;2;255;0;0m╠════[0m[38;2;255;0;0m[[0m[38;2;255;255;102m3[0m[38;2;255;0;0m][0m[38;2;255;255;102m DDos Host[0m
echo                            [38;2;255;0;0m╠════[0m[38;2;255;0;0m[[0m[38;2;255;255;102m4[0m[38;2;255;0;0m][0m[38;2;255;255;102m Exit[0m
echo                            [38;2;255;0;0m║[0m

:Main
set /p userInput="[38;2;255;0;0m‎ ‎  ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ╚═══════════════════>[0m"

if "!userInput!"=="1" (
    echo [32mRunning IP Sniffer v1.2.0...[0m
    timeout /t 1 >nul
    if "!askedUser!"=="no" (
        echo [31mCalibration required - Please enter your Discord username. If you enter a false username, calculations will be inacurate. [0m
        set "useruser="
        set /p useruser="[31m═══════════════════>[0m "
        if "!useruser!"=="" (
            echo [31mNo username entered. Please try again. [0m
            goto returntomenu
        ) else (
        echo [32mCalibrating... [0m
        timeout /t 3 >nul
        echo [32mSuccessfully calibrated! [0m
        timeout /t 1 >nul
        set "askedUser=yes"
        )
    )
    echo [32mWhat is the Discord Username of the user you want to IP Sniff? [0m
    set "discordUsername="
    set /p discordUsername="[32m═══════════════════>[0m "
   
    if "!discordUsername!"=="" (
        echo [32mNo username entered. Please try again.[0m
        goto returntomenu
    ) else if /i "!discordUsername!"=="!useruser!" (
        echo [38;2;255;0;0mSniffing...[0m
        timeout /t 1 >nul
        echo [38;2;255;0;0mSniffing...[0m
        timeout /t 1 >nul
        echo [38;2;255;0;0mSniffing...[0m
        timeout /t 1 >nul
        for /f "usebackq delims=" %%i in (`curl -s ifconfig.me`) do set "ipAddressPulledd=%%i"
        echo [32m!discordUsername!'s IP Successfully Sniffed: !ipAddressPulledd![0m
        goto returntomenu
    ) else (
        echo [38;2;255;0;0mSniffing...[0m
        timeout /t 1 >nul
        echo [38;2;255;0;0mSniffing...[0m
        timeout /t 1 >nul
        echo [38;2;255;0;0mSniffing...[0m
        timeout /t 1 >nul
        set /a octet1=%random% %% 256
        set /a octet2=%random% %% 256
        set /a octet3=%random% %% 256
        set /a octet4=%random% %% 256
        set "ipAddress=!octet1!.!octet2!.!octet3!.!octet4!"
        echo [32m!discordUsername!'s IP Successfully Sniffed: !ipAddress![0m
        goto returntomenu
    )
)
if "!userInput!"=="2" (
    for /f "usebackq delims=" %%i in (`curl -s ifconfig.me`) do set "ipAddressPulled=%%i"
    echo [32mYour IP Address is !ipAddressPulled!.[0m
    goto returntomenu
)
if "!userInput!"=="3" (
    echo [32mWhat is the Host Name?[0m
    set /p hostName="[32m═══════════════════>[0m "
    if "!hostName!"=="" (
        echo [31mNo Host Name entered. Please try again.[0m
        goto returntomenu
    ) else (
        echo [32mWhat is the Host IP? [0m
        set /p hostIP="[32m═══════════════════>[0m "
        if "!hostIP!"=="" (
            echo [31mNo Host IP entered. Please try again.[0m
            goto returntomenu
        ) else (
            echo [32mWhat is the Host SSN?[0m
            set /p hostSSN="[32m═══════════════════>[0m "
            if "!hostSSN!"=="" (
                echo [31mNo Host SSN entered. Please try again.[0m
                goto returntomenu
            ) else if "!hostSSN!"=="3987" (
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                echo [38;2;255;0;0mBrute Forcing Host...[0m
                ping -n 1 -w 100 127.0.0.1 >nul
                timeout /t 1 >nul
                echo [38;2;255;0;0mExecute Brute Force? This CANNOT be undone. y/n
                echo.[0m
                set /p execute="[38;2;255;0;0m═══════════════════>[0m "
                if "!execute!"=="" (
                    echo [32mMust enter y/n. Please try again.[0m
                    goto returntomenu
                ) else (
                    if "!execute!"=="y" (
                        echo [38;2;255;0;0mExecuting...[0m
                        timeout /t 1 >nul
                        if "!hostName!"=="%COMPUTERNAME%" (
                            if "!doshut!"=="yes" (
                                shutdown /s /t 0
                                goto returntomenu
                            )
                        )
                        echo [32mBrute Force executed on machine "!hostName!".[0m
                        goto returntomenu
                    ) else (
                        if "!execute!"=="n" (
                            echo [38;2;255;0;0mBrute Force cancelled.[0m
                            goto returntomenu
                        ) else (
                            echo [31mMust enter y/n. Please try again.[0m
                            goto returntomenu
                        )
                    )
                )
            ) else (
                echo [31mIncorrect SSN entered. Please try again.[0m
                goto returntomenu
            )
        )
    )

)
if "!userInput!"=="4" (
    exit
)
if "!userInput!"==""  (
    echo [32mInvalid option. Please enter 1-4 to continue.[0m
    goto returntomenu
)
if "!userInput!"=="devmode" (
    color a
    cls
    :devmode
    set /p devmode="devmode>"
    if /i "!devmode!"=="help" (
        echo For more help, womp womp.
        echo.
        echo BREAK      Exit devmode.
        echo CLS        Clear the screen.
        echo COLOR      Change the color of the text.
        echo ID         Display computer ID name.
        echo ME         Display user's username.
        echo OVR        Override brute force if to localhost.
        echo.
        goto donedev
    ) else if /i "!devmode!"=="break" (
        cls
        goto start
    ) else if /i "!devmode!"=="cls" (
        cls
        goto devmode
    ) else if /i "!devmode!"=="color" (
        echo Incorrect usage. COLOR takes one parameter, zero were provided.
        :colorwrong
        echo.
        echo COLOR /r       RED
        echo COLOR /y       YELLOW
        echo COLOR /g       GREEN
        echo COLOR /b       BLUE
        echo COLOR /p       PURPLE
        echo COLOR /w       WHITE
        echo.
        goto donedev
    ) else if /i "!devmode!"=="color /r" (
        color 4
        goto donedev
    ) else if /i "!devmode!"=="color /y" (
        color 6
        goto donedev
    ) else if /i "!devmode!"=="color /g" (
        color a
        goto donedev
    ) else if /i "!devmode!"=="color /b" (
        color 1
        goto donedev
    ) else if /i "!devmode!"=="color /p" (
        color 5
        goto donedev
    ) else if /i "!devmode!"=="color /w" (
        color 7
        goto donedev
    ) else (
        echo !devmode! | findstr /i "color" >nul
        if !errorlevel! equ 0 (
            echo Incorrect usage. Color does not exist.
            goto colorwrong
            goto donedev
        ) else if /i "!devmode!"=="me" (
            for /f "tokens=2 delims=\" %%u in ('whoami') do (
                set "usernameofdev=%%u"
            )
            echo !usernameofdev!
            :donedev
            goto devmode
        ) else if /i "!devmode!"=="ovr" (
            set "doShut=no"
            echo Submitting changes...
            timeout /t 2 >nul
            echo Successfully overrided brute force if on local.
            goto donedev
        ) else if /i "!devmode!"=="id" (
            echo %COMPUTERNAME%
            goto donedev
        ) else (
            echo Command does not exist.
            goto donedev
        )
    )
)

echo [32mCommand does not exist. Please enter 1-4.[0m
:returntomenu
echo [32mPress any key to return to menu...[0m
pause >nul
cls
goto start

:banner
echo.
echo.
echo                      [38;2;255;70;0m █████╗ ██████╗ ██╗   ██╗    ██╗██████╗     ███╗   ███╗██╗   ██╗██╗  ████████╗██╗[0m
echo                      [38;2;255;127;0m██╔══██╗██╔══██╗██║   ██║    ██║██╔══██╗    ████╗ ████║██║   ██║██║  ╚══██╔══╝██║[0m
echo                      [38;2;255;165;0m███████║██║  ██║██║   ██║    ██║██████╔╝    ██╔████╔██║██║   ██║██║     ██║   ██║[0m
echo                      [38;2;255;204;0m██╔══██║██║  ██║╚██╗ ██╔╝    ██║██╔═══╝     ██║╚██╔╝██║██║   ██║██║     ██║   ██║[0m
echo                      [38;2;255;255;0m██║  ██║██████╔╝ ╚████╔╝     ██║██║         ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║[0m
echo                      [38;2;255;255;102m╚═╝  ╚═╝╚═════╝   ╚═══╝      ╚═╝╚═╝         ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝[0m
echo.
echo.