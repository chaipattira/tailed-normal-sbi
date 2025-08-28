#!/bin/bash
# Installation script for Tailed-Normal SBI research
# Install standard requirements
echo "Installing Python packages..."
pip install -r requirements.txt

# Install ltu-ili
echo "Installing ltu-ili from GitHub..."
if [ ! -d "ltu-ili" ]; then
    git clone https://github.com/maho3/ltu-ili.git
fi
cd ltu-ili
pip install ".[pytorch]"
cd ..

# Install symbolic_pofk
echo "Installing symbolic_pofk..."
if [ ! -d "symbolic_pofk" ]; then
    git clone https://github.com/DeaglanBartlett/symbolic_pofk.git
fi
cd symbolic_pofk
pip install ".[torch]"
cd ..

echo "Installation complete!"
