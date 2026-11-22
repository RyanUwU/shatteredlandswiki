@echo off
title Quartz Sync
cd /d "R:\quartz"

echo ============================
echo       Syncing Quartz
echo ============================
echo.

npx quartz sync

echo.
echo ============================
echo       Sync Complete
echo ============================
pause
