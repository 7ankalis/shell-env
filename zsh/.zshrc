# -----------------------------
# POWERLEVEL10K INSTANT PROMPT
# -----------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# -----------------------------
# OH MY ZSH
# -----------------------------
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# -----------------------------
# PLUGINS
# -----------------------------
plugins=(
  git
  zsh-interactive-cd
  ansible
  terraform
  ubuntu
  python
  pip
  history
  docker
  docker-compose
  zsh-lsd
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# -----------------------------
# USER CONFIG
# -----------------------------

# Portable PATH (IMPORTANT FIX)
export PATH="$HOME/google-cloud-sdk/bin:$HOME/.nvm/versions/node/v22.18.0/bin:$HOME/gems/bin:$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# Aliases
alias curl=curlie

# Angular CLI completion (safe load)
if command -v ng >/dev/null 2>&1; then
  source <(ng completion script)
fi

# -----------------------------
# POWERLEVEL10K CONFIG
# -----------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
