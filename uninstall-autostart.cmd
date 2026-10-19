@echo off
set "FILE=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\AutoPoster.cmd"
if exist "%FILE%" del /q "%FILE%"
echo Auto-start dibatalkan.
pause
