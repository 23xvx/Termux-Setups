@echo off 
goto a 
:a 
set /p cmd= "%~dp0>" 
%cmd% 
goto a 