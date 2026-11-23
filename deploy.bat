@echo off
title Food Rescue - Live Public Deployment
echo ====================================================
echo Starting Food Rescue and Public Tunnel...
echo ====================================================

set "PATH=C:\Users\thila\AppData\Local\Programs;C:\Users\thila\AppData\Local\Programs\nodejs;%PATH%"
set "NODE_TLS_REJECT_UNAUTHORIZED=0"

echo [1/2] Starting unified server on port 5000...
start "Food Rescue Server" cmd /k "cd /d %~dp0backend && node src/server.js"

timeout /t 3 /nobreak >nul

echo [2/2] Generating public live HTTPS URL...
start "Cloudflare Live Tunnel" cmd /k "cloudflared.exe tunnel --url http://localhost:5000"

echo ====================================================
echo Application is starting online!
echo Check the 'Cloudflare Live Tunnel' window for your live URL.
echo ====================================================
pause
