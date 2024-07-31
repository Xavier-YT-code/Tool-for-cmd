@echo off
colour A
title xavier`s tools
set /p pass="Enter password"
if "%pass% NEQ "hacker" exit
:menu
echo.
echo **************
echo     menu 
echo **************
echo.
echo.
echo 1) List users on computer
echo 2) Create user
echo 3) Change password of a user
echo 4) Delete a user account 
echo 5) Exit
echo.
set /p input="number input="

if %input% EQU 1 (
cls
net user
pause
cls
goto menu
)
if %input% EQU 2 (
cls
set /p user="Enter New Users Username: "
net user %user% %password% /add
pause
cls
goto menu 
)
if %input% EQU 3 (
cls
set /p user="Target User: "
set /p password="New Password: "
net user %user% %password%
pause
cls
goto menu
)
if %input% EQU 4 (
cls
echo ERROR 303
pause
cls
goto menu
)
if %input% EQU 5 (
exit
)
