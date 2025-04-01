#!/bin/bash
# scripts/setup.sh: Sets up the development environment with all the dependencies.

sudo apt-get update
# Install clang-format 21
sudo apt-get install -y wget gnupg software-properties-common
wget -O llvm.sh https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 21
rm llvm.sh
sudo apt-get install -y clang-format-21
sudo ln -sf /usr/bin/clang-format-21 /usr/bin/clang-format
# Install Node.js
npm install
# Install Python dependencies
pip install -r requirements.txt
pre-commit install
