@echo off
title Deadline Scheduler
echo Deadline Scheduler
echo Made by SkylarZYX
echo.
echo This is a program where you can set deadlines/tasks and have your computer
echo remind you on a daily basis of when those deadlines are due.
echo.
echo For more info on how to use this, go check out the github page:
echo https://github.com/SkylarZYX/deadline-scheduler
echo.
pause

cls

:: Input variables
echo Enter deadline name: 
set /p name=
echo Enter date of deadline (format depends on where you live: mm/dd/yyyy-dd/mm/yyyy-yyyy/mm/dd): 
set /p date=
echo Enter time of deadline (format: hh:mm): 
set /p time=
pause
cls

:: These are the VBScripts in the deadline-scheduler directory. If the filenames have been changed, please change the file & file2 values.
set file=deadline.bat
set file2=reminder.bat

:: Creates deadlines/tasks using Task Scheduler.
schtasks /create /tn "deadline\%name%" /tr "%cd%\%file%" /sc ONCE /sd %date% /st %time%
:: You can change the time for reminders if you'd like to > > > > > > > vvvvv
schtasks /create /tn "deadline-remind" /tr "%cd%\%file2%" /sc DAILY /st 12:00 /f

FOR /F %%i IN (created.txt) DO set txt=%%i
set val=1
set /a total=%txt%+%val%
echo %total% > created.txt
pause