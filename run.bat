@echo off
title Food Rescue - Starting Full-Stack Application
echo ====================================================
echo Starting Food Rescue Full-Stack Application...
echo ====================================================

set "PATH=C:\Users\thila\AppData\Local\Programs\nodejs;%PATH%"
set "NODE_TLS_REJECT_UNAUTHORIZED=0"

echo [1/2] Starting Backend Server on http://localhost:5000 ...
start "Food Rescue - Backend API" cmd /k "cd /d %~dp0backend && node src/server.js"

timeout /t 2 /nobreak >nul

echo [2/2] Starting Frontend Vite Server on http://localhost:5173 ...
start "Food Rescue - Frontend Web" cmd /k "cd /d %~dp0frontend && npm run dev"

timeout /t 3 /nobreak >nul

echo Opening browser...
start http://localhost:5173

echo ====================================================
echo Food Rescue is now running!
echo Frontend: http://localhost:5173
echo Backend API: http://localhost:5000
echo ====================================================
pause
