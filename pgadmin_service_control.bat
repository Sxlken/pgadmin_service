@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo WARNING: This script is NOT running as administrator!
    echo Some operations may fail.
    echo.
    pause
)
set SERVICE_NAME=postgresql-x64-17

:menu
cls
echo PostgreSQL Service Control by Sxlken
echo ---------------------------
echo 1. Start Service
echo 2. Stop Service
echo 3. Check Service Status
echo 4. Restart Service
echo 5. Open pgAdmin
echo 6. Exit

set /p choice=Choose an option [1-6]:

if "%choice%"=="1" (
    echo Starting PostgreSQL service...
    net start "%SERVICE_NAME%"
    pause
    goto menu
)
if "%choice%"=="2" (
    echo Stopping PostgreSQL service...
    net stop "%SERVICE_NAME%"
    pause
    goto menu
)
if "%choice%"=="3" (
    echo Checking status of PostgreSQL service...
    sc query "%SERVICE_NAME%"
    pause
    goto menu
)

if "%choice%"=="4" (
    echo Restarting PostgreSQL service...
    net stop "%SERVICE_NAME%"
    net start "%SERVICE_NAME%"
    pause
    goto menu
)
if "%choice%"=="5" (
    echo Opening pgAdmin...
    start "" "C:\Program Files\PostgreSQL\17\pgAdmin 4\runtime\pgAdmin4.exe"
    pause
    goto menu
)
if "%choice%"=="6" (
    goto end
)
echo Invalid choice. Please select 1-6.
pause
goto menu

:end