@echo off
if "%1" == "" (echo Open an .ansii file with this program&pause>nul&exit)
title Ansii  %1
:0
echo [0m
cls
set /p file=<%1
set "image=echo %file:[=[48;5;%"
set "image=%image:]=m%"
set "image=%image:(=[38;5;%"
set "image=%image:)=m%"
set "image=%image:+=&echo %"
set "image=%image:-=  %"
%image%
timeout /t -1 >nul
goto 0