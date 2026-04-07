  # ── Editor ──────────────────────────────────────────────
  export EDITOR=nvim

  # ── Go ──────────────────────────────────────────────────
  export GOPATH=$HOME/go

  # ── Haskell (if needed) ────────────────────────────────
  [ -f "$HOME/.ghcup/env" ] && . "$HOME/.ghcup/env"

  # ── PATH ────────────────────────────────────────────────
  export PATH="$HOME/bin:$HOME/.local/bin:$GOPATH/bin:$HOME/.cabal/bin:$HOME/.ghcu
  p/bin:/opt/homebrew/sbin:$PATH"

  # ── NVM ─────────────────────────────────────────────────
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

  # ── rbenv ───────────────────────────────────────────────
  eval "$(rbenv init - zsh)" 2>/dev/null

  # ── jenv ────────────────────────────────────────────────
  export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)" 2>/dev/null

  # ── Conda (if needed) ──────────────────────────────────
  # Run `conda init zsh` after installing miniconda

  # ── fzf ─────────────────────────────────────────────────
  source <(fzf --zsh)

  # ── Aliases (from your Fish interactive block) ─────────
  alias g='git'
  alias vim='nvim'

  # eza aliases (replacing your config-osx.fish)
  if command -v eza &>/dev/null; then
    alias ls='eza -g --icons'
    alias la='eza -g -a --icons'
    alias ll='eza -l -g --icons'
    alias lla='eza -l -g -a --icons'
  else
    alias ls='ls -p -G'
    alias ll='ls -l'
    alias lla='ls -lA'
  fi

  # ── ide function (from your Fish function) ─────────────
  ide() {
    tmux split-window -v -p 35
    tmux split-window -h -p 50
    tmux select-pane -t 0
  }

  # ── Auto-start tmux (from your Fish config) ────────────
  if [ -z "$TMUX" ] && [ -t 0 ]; then
    exec tmux new-session -A -s main
  fi

