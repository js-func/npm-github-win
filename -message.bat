@ECHO OFF
SetLocal EnableDelayedExpansion
for /f %%i in ('dir /b /od ticket\*.md') do set filename=%%i
::set /p ticket=<Ticket\%filename%
:: sed 's/\r$//' Ticket\%filename% > Ticket\%filename%
::TYPE Ticket\%filename% | MORE /P > Ticket\%filename%
::echo %filename% &&
for /f "delims==" %%a in (ticket\%filename%) do set message=%%a
echo %message%
