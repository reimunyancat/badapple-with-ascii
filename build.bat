@echo off
:: Build script for Bad Apple ASCII Player (Windows)
:: Supports both SFML 2.x and 3.x

echo Bad Apple ASCII Player - Build Script (Windows)
echo ================================================

:: Check if CMake is available
cmake --version >nul 2>&1
if %errorlevel% equ 0 (
    echo CMake found, using CMake build system...
    
    :: Create build directory
    if not exist "build" mkdir build
    
    cd build
    
    :: Configure and build
    echo Configuring project...
    cmake ..
    
    if %errorlevel% equ 0 (
        echo Building project...
        cmake --build . --config Release
        
        if %errorlevel% equ 0 (
            echo Build successful!
            echo Run 'build\Release\main.exe' to start the player
        ) else (
            echo Build failed!
            exit /b 1
        )
    ) else (
        echo CMake configuration failed!
        exit /b 1
    )
    
) else (
    echo CMake not found, using direct compilation...
    echo Please install CMake or use Visual Studio to build this project.
    exit /b 1
)

pause
