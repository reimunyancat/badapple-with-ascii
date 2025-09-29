#!/bin/bash

# Build script for Bad Apple ASCII Player
# Simple g++ compilation for SFML 3.x

echo "Bad Apple ASCII Player - Build Script"
echo "====================================="

echo "Compiling with g++ and SFML 3.x..."

# Compile with SFML 3.x
g++ -std=c++17 -O2 main.cpp -o main -lsfml-audio -lsfml-system

if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    echo "Run './main' to start the player"
else
    echo "❌ Compilation failed!"
    echo "Please ensure SFML 3.x is properly installed"
    echo ""
    echo "Installation commands:"
    echo "  Arch Linux: sudo pacman -S sfml"
    echo "  Ubuntu: Build SFML 3.x from source"
    echo "  macOS: brew install sfml"
    exit 1
fi
