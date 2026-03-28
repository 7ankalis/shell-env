#!/bin/bash

echo "[+] Installing Neovim config..."

rm -rf ~/.config/nvim
cp -r ./nvim ~/.config/nvim

# tmux
cp ./tmux/.tmux.conf ~/
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "[+] Done. Launch nvim to install plugins."
