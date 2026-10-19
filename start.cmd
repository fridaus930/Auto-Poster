@echo off
setlocal
cd /d "%~dp0"
title AutoPoster

if exist "%~dp0AutoPoster.exe" (
  "%~dp0AutoPoster.exe"
  exit /b %ERRORLEVEL%
)

where node >nul 2>nul
if errorlevel 1 (
  echo.
  echo   [!] AutoPoster.exe tidak dijumpai dan Node.js tidak dipasang.
  echo       Muat turun versi Windows: AutoPoster-win-x64.zip
  echo       atau pasang Node.js 20+ dari https://nodejs.org
  echo.
  pause
  exit /b 1
)

start "" cmd /c "timeout /t 2 >nul & explorer http://localhost:3000"
node server.cjs
pause
