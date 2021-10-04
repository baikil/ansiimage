:0
@Echo off & CD "%~dp0"
title Ansii2 %1
set /p mode=<%1 
mode %mode%
cls
Setlocal EnableExtensions EnableDelayedExpansion
 For /F %%e in ('Echo prompt $E^|cmd')Do Set "\E=%%e"
 (For /f "usebackq Tokens=1,2 delims==" %%G in ("%~$Path:1")Do (
  Set "%%G=%%H"
  Set "%%G=!%%G:[=%\E%[48;5;!"
  Set "%%G=!%%G:(=%\E%[38;5;!"
  Set "%%G=!%%G:]=m!"
  Set "%%G=!%%G:)=m!"
  Set "%%G=!%%G:-=  !"
  If not "%%G" == "lines" <nul set /p "=!%%G!%\E%[0m%\E%[E"
 )) > Con

Endlocal
timeout /t -1 >nul
goto 0