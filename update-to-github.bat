@echo off
cd "C:\Users\Sribin\Documents\Websites\NDIA"

echo.
echo ======================================
echo   Starting Git Auto Update Script
echo ======================================
echo.

REM --- Pull latest changes (optional) ---
git pull origin main

REM --- Stage all changes ---
git add -A

REM --- Commit with date and time ---
set DATE=%date%
set TIME=%time%
git commit -m "Auto update on %DATE% %TIME%"

REM --- Push to GitHub ---
git push origin main

echo.
echo ✅ Update complete! Repo is now synced.
pause
