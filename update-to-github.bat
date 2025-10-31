@echo off
cd /d "C:\Users\Sribin\Documents\Websites\NDIA"

echo ======================================
echo   Starting Git Auto Update Script
echo ======================================
echo.

REM Pull latest changes (allow unrelated histories just in case)
git pull origin main --allow-unrelated-histories

REM Stage all changes
git add -A

REM Commit with timestamp
set DATE=%date%
set TIME=%time%
git commit -m "Auto update on %DATE% %TIME%"

REM Push to GitHub
git push origin main

echo.
echo ✅ Update complete! Repo is now synced.
echo.
pause
