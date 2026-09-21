@echo off
setlocal

REM Go to the folder where this BAT file is located
cd /d "%~dp0"

REM Get today's date in YYYY-MM-DD format using PowerShell
for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyy-MM-dd"') do set "TODAY=%%i"

echo.
echo Adding files...
git add .
if errorlevel 1 goto :error

echo.
echo Committing with date: %TODAY%
git commit -m "%TODAY%"
if errorlevel 1 (
    echo.
    echo Nothing to commit, or commit failed.
    pause
    exit /b 1
)

echo.
echo Pushing to GitHub...
git push
if errorlevel 1 goto :error

echo.
echo Done successfully.
pause
exit /b 0

:error
echo.
echo An error occurred.
pause
exit /b 1
