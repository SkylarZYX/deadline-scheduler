@echo off
FOR /F %%i IN (created.txt) DO set txt=%%i
set val=1
set /a total=%txt%-%val%
echo %total% > created.txt