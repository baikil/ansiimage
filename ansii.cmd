@echo off
for %%a in (%1) do (set ext=%%~xa)    
if "%1" == "" (echo No file was specified&pause&exit /b)
if not "%ext%" == ".ansii" (echo The file specified didn't have the expected extension [%ext%] -^> [.asnii]&pause&exit /b)
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