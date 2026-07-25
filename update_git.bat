@echo off
title SW FOODY RAMP - Git Update Helper
echo ====================================================
echo       SW FOODY RAMP - GIT AUTO UPDATE SCRIPT
echo ====================================================
echo.

set /p msg="Enter commit message (Press ENTER for 'Updated website content'): "
if "%msg%"=="" set msg=Updated website content

echo.
echo [1/3] Adding all updated files...
git add .

echo.
echo [2/3] Committing changes with message: "%msg%"
git commit -m "%msg%"

echo.
echo [3/3] Pushing changes to GitHub...
git push origin main

echo.
echo ====================================================
echo             GIT UPDATE SUCCESSFUL!
echo ====================================================
echo.
pause
