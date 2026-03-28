#!/bin/bash

set -e

echo "[+] Updating system..."
sudo apt update

echo "[+] Installing base packages..."
sudo apt install -y git curl zsh neovim tmux lsd python3-pip

# -----------------------------
# OH MY ZSH
# -----------------------------
echo "[+] Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# -----------------------------
# POWERLEVEL10K
# -----------------------------
echo "[+] Installing Powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k || true

# -----------------------------
# ZSH CONFIG
# -----------------------------
echo "[+] Applying Zsh config..."
cp ./zsh/.zshrc ~/
cp ./zsh/.p10k.zsh ~/

# -----------------------------
# ZSH PLUGINS
# -----------------------------
echo "[+] Installing Zsh plugins..."
bash ./zsh/plugins.sh

# -----------------------------
# NVIM
# -----------------------------
echo "[+] Installing Neovim config..."
rm -rf ~/.config/nvim
cp -r ./nvim ~/.config/nvim

# -----------------------------
# TMUX
# -----------------------------
echo "[+] Installing tmux config..."
cp ./tmux/.tmux.conf ~/
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm || true

# -----------------------------
# EXTRA TOOLS
# -----------------------------
echo "[+] Installing extra tools..."
curl -sS https://webi.sh/curlie | sh; \
source ~/.config/envman/PATH.env

# -----------------------------
# DONE
# -----------------------------
echo "[+] Setup complete."
echo "[!] Restart your terminal or run: exec zsh"
