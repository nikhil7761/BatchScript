@echo off
set PRIMARY_IP=183.87.225.124
set SECONDARY_IP=202.88.154.70

:: Check if primary IP is reachable
ping -n 1 %PRIMARY_IP% >nul
if %errorlevel%==0 (
    echo Datalink is running.
) else (
    echo Datalink is down.
)

:: Check if secondary IP is reachable
ping -n 1 %SECONDARY_IP% >nul
if %errorlevel%==0 (
    echo Hathway is running.
) else (
    echo Hathway is down.
)

:: Add a pause to keep the window open and see results
pause
