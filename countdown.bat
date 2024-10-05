@echo off
title Windows will shutdown soon...
set count=60
color a
echo.
echo.
echo.
echo.
echo.
:count
if %count% NEQ 0 (
	echo                                                         %count%
	set /a count=%count%-1 >nul
	timeout /t 1 >nul
	goto count
) else (
	echo Countdown complete. Executing brute force...
	timeout /t 2 >nul
)