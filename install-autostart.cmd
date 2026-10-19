@echo off
setlocal
cd /d "%~dp0"

if not exist "%~dp0AutoPoster.exe" (
  echo.
  echo   [!] Auto-start memerlukan AutoPoster.exe dalam folder ini.
  echo.
  pause
  exit /b 1
)

set "STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "FILE=%STARTUP%\AutoPoster.cmd"

> "%FILE%" echo @echo off
>> "%FILE%" echo cd /d "%~dp0"
>> "%FILE%" echo start "" /min "%~dp0AutoPoster.exe"

echo.
echo   AutoPoster akan bermula automatik setiap kali anda log masuk Windows.
echo   Fail: %FILE%
echo.
echo   Untuk batalkan: jalankan uninstall-autostart.cmd
pause
