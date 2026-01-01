#!/bin/bash
# AN0ZX V1 AUTO-INSTALLER
echo "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄"
echo "  AN0ZX V1 TOOLS - AUTO INSTALLER"
echo "▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀"
echo ""
echo "[1] Installing packages..."
pkg update -y > /dev/null 2>&1
pkg upgrade -y > /dev/null 2>&1

echo "[2] Installing Python & Nmap..."
pkg install python -y > /dev/null 2>&1
pkg install nmap -y > /dev/null 2>&1
pkg install git -y > /dev/null 2>&1

echo "[3] Installing Python modules..."
pip install sqlmap colorama requests > /dev/null 2>&1

echo "[4] Downloading AN0ZX Tools..."
git clone https://github.com/alfarizifaeyza79-sudo/AN0ZXV1 > /dev/null 2>&1

echo "[5] Starting AN0ZX Tools..."
cd AN0ZXV1
python AN0ZX.py