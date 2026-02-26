@echo off
title UROIU - Windows Setup
color 0A

echo ====================================================
echo       UROIU - Windows Dependency Installer
echo ====================================================
echo.

echo [CHECK] Verifying Python installation...
python --version 2>NUL
if %errorlevel% neq 0 (
    echo [ERROR] Python is not installed.
    echo Please download it from https://www.python.org/downloads/
    echo Make sure to check "Add Python to PATH" during installation.
    pause
    exit /b
)

echo.
echo [INSTALL] Installing dependencies...
echo.

:: Upgrade pip
python -m pip install --upgrade pip

:: Install libraries
echo Installing cryptography...
pip install cryptography

echo.
echo Installing tkinterdnd2...
pip install tkinterdnd2

echo.
echo ====================================================
echo                 SETUP COMPLETE
echo ====================================================
echo.
echo You can now run the application.
pause