# Dotfiles

This repository contains my personal development environment configuration for Neovim, tmux, and zsh.

It is designed to be minimal, portable, and reproducible across machines, with a focus on productivity and security-oriented workflows.

>⚠️Some paths in .zshrc may need adjustment depending on your environment
>Nerd Fonts are recommended for proper prompt rendering
## Installation

Clone the repository and run the install script:

```bash
git clone https://github.com/<your-username>/dotfiles ~/dotfiles
cd ~/dotfiles
chmod +x install.sh zsh/plugins.sh
./install.sh
```

Then reload your shell:
```bash
exec zsh
```

## Components
- Neovim with lazy.nvim and pinned plugins via lazy-lock.json.
- tmux with TPM (Tmux Plugin Manager).
- zsh with Oh My Zsh and Powerlevel10k.
- external zsh plugins installed via the script.

