@ECHO off
cls
ECHO Creating user "miner"...
net user miner /add
ECHO Creating directory...
mkdir C:\Users\miner\MPHMiner
ECHO Copying files...
robocopy ..\MPHMiner C:\Users\miner\MPHMiner /E
ECHO Importing Registry Values...
regedit.exe /s deploy.reg
ECHO         Done.
ECHO.
ECHO Deploy Completed!
ECHO.
pause