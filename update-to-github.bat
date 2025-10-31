@echo off
cd "C:\Users\Sribin\Documents\Websites\NDIA"

echo.
echo ======================================
echo   Starting Git Auto Update Script
echo ======================================
echo.

REM --- Pull the latest changes (optional, to stay in sync) ---
git pull origin main

REM --- Stage all changes ---
git add -A

REM --- Commit with timestamp ---
set DATE=%date%
set TIME=%time%
git commit -m "Auto update on %DATE% %TIME%"

REM --- Push to GitHub ---
git push origin main

echo.
echo ✅ Update complete! Your website repo is now synced.
pause
