# alias
alias v="nvim"
alias vim="nvim"
alias ls="exa --icons --git"
alias ll="exa -l --icons --git"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias so='source ~/.zshrc'
alias k="kubectl"
alias py="python3"

# zsh plugins
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/autojump/autojump.zsh

# zsh history
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000

# zsh syntax highlight configuration
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[alias]=fg=green,bold

# nvm configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# starship
eval "$(starship init zsh)"

