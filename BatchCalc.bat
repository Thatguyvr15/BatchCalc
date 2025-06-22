@echo off
title BatchCalc - By ThatGuyVR
color 0A

:menu
cls
echo ==========================================
echo           BatchCalc - By ThatGuyVR
echo ==========================================
echo.
echo Select an operation:
echo.
echo 1. Addition
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division
echo 5. Exit
echo.
set /p choice=Enter your choice (1-5): 

if "%choice%"=="1" goto add
if "%choice%"=="2" goto subtract
if "%choice%"=="3" goto multiply
if "%choice%"=="4" goto divide
if "%choice%"=="5" exit
goto menu

:add
cls
echo Addition
set /p a=Enter first number: 
set /p b=Enter second number: 
set /a result=%a%+%b%
echo.
echo Result: %result%
pause
goto menu

:subtract
cls
echo Subtraction
set /p a=Enter first number: 
set /p b=Enter second number: 
set /a result=%a%-%b%
echo.
echo Result: %result%
pause
goto menu

:multiply
cls
echo Multiplication
set /p a=Enter first number: 
set /p b=Enter second number: 
set /a result=%a%*%b%
echo.
echo Result: %result%
pause
goto menu

:divide
cls
echo Division
set /p a=Enter first number: 
set /p b=Enter second number: 
if "%b%"=="0" (
    echo.
    echo Cannot divide by zero!
) else (
    set /a result=%a%/%b%
    echo.
    echo Result: %result%
)
pause
goto menu
