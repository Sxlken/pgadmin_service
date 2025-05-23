@echo off
set SERVICE_NAME=postgresql-x64-17

:menu
cls
echo PostgreSQL Service Control by prime
echo ---------------------------
echo 1. Start Service
echo 2. Stop Service
echo 3. Check Service Status
echo 4. Exit

set /p choice=Choose an option [1-4]:

if "%choice%"=="1" (
    echo Starting PostgreSQL service...
    net start "postgresql-x64-17"
    pause
    goto menu
)
if "%choice%"=="2" (
    echo Stopping PostgreSQL service...
    net stop "postgresql-x64-17"
    pause
    goto menu
)
if "%choice%"=="3" (
    echo Checking status of PostgreSQL service...
    sc query "postgresql-x64-17"
    pause
    goto menu
)
if "%choice%"=="4" (
    goto end
)

goto menu

:end
