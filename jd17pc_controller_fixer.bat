:::::: BY RAMA
@echo off
echo If you have JD17PC running, please close it and press Enter.
echo Press Enter to continue after you've closed JD17PC.
pause > nul

REM Loading...
for /f "tokens=5" %%a in ('netstat -ano ^| findstr :8080') do (
    set PID=%%a
)

REM Checking...
if not "%PID%"=="" (
    taskkill /PID %PID% /F > nul 2>&1
    echo The process interfering with JD17PC has been killed.
) else (
    echo Didn't find the processes interfering with JD17PC.
)

pause
