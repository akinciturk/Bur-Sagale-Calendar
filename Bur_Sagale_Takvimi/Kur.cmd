@echo off
chcp 65001 >nul
echo Bur Sagale Takvimi kuruluyor...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0bur_sagale_simgesi.ps1" -Kur
echo.
pause
