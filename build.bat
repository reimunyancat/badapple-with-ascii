@echo off

echo Bad Apple ASCII Player - Build Script (Windows)
echo ================================================

echo Compiling with g++ and SFML 3.x...

g++ -std=c++17 -O2 main.cpp -o main.exe -lsfml-audio -lsfml-system

if %errorlevel% equ 0 (
    echo Build successful!
) else (
    echo Compilation failed!
    exit /b 1
)

pause
