@echo off
chcp 65001 >nul
echo Bur Sagale Takvimi kisayollari kaldiriliyor (takvim dosyalari ve notlar silinmez)...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0bur_sagale_simgesi.ps1" -Kaldir
echo.
pause
