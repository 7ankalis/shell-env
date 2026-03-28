#!/bin/bash

ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

echo "[+] Installing Zsh plugins..."

git clone https://github.com/zsh-users/zsh-autosuggestions \
$ZSH_CUSTOM/plugins/zsh-autosuggestions || true

git clone https://github.com/zsh-users/zsh-syntax-highlighting \
$ZSH_CUSTOM/plugins/zsh-syntax-highlighting || true

git clone https://github.com/chisui/zsh-interactive-cd \
$ZSH_CUSTOM/plugins/zsh-interactive-cd || true

git clone https://github.com/zdharma-continuum/zsh-lsd \
$ZSH_CUSTOM/plugins/zsh-lsd || true

echo "[+] Plugins installed."
