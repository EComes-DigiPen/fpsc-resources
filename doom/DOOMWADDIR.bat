@echo off
cd /D %~dp0
title DOOMWADDIR Variable Helper Script
cls
echo.
echo This batch script will set the "DOOMWADDIR" environment variable for the current user.
echo This variable points to a folder where your game IWADs (i.e. "DOOM2.WAD") are stored.
echo The "DOOMWADDIR" variable is supported by many DOOM source ports and eliminates the
echo need to copy game IWADs to the installation location of the source port's execuatable.
echo.
echo Here are some examples of what this path could look like:
echo "C:\Users\%USERNAME%\Desktop\Games\Doom\iwads"
echo "C:\Users\%USERNAME%\Documents\Games\Doom\iwads"
echo "D:\Games\Doom\iwads"
echo.
echo Currently, the "DOOMWADDIR" environment variable is:
echo "%DOOMWADDIR%"
echo.
echo Please enter in the path to the folder which contains your DOOM IWAD files.
set /P INPUT=^> 
setx DOOMWADDIR %INPUT%
echo.
echo Press any key to exit...
pause > nul
exit /B
