# Prompt Settings
export PS1="\[\e[0;36m\]\D{%Y/%m/%d_%H:%M:%S} \\W % \[\e[m\]"

# Suppress zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# General alias
alias l="ls -hGF"
alias ll="ls -arlthGF"
alias ls='ls -tGF'
alias rm='rm -i'
alias cls='clear'

# Git & GitHub CLI
export PATH="/usr/local/bin/git:$PATH"
alias g='git'
alias gs='git status'
alias ga='git add'
alias gd='git diff'
alias gds='git diff --staged'
alias gcm='git commit -m'
alias gb='git branch -a -vv'
alias gr='git remote -v'
alias gg='git graph'
alias gf='git fetch --prune'
if [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ]; then
    source "$(brew --prefix)/etc/bash_completion.d/git-completion.bash"
fi
if [ -f "$(brew --prefix)/etc/bash_completion.d/gh" ]; then
    source "$(brew --prefix)/etc/bash_completion.d/gh"
fi

# VSCode CLI
export PATH="/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin:$PATH"

# PowerShell Core for MacOS
alias powershell='pwsh'

# Node.js (nodebrew & npm)
export PATH="$HOME/.nodebrew/current/bin:$PATH"
if [ -f "$(brew --prefix)/etc/bash_completion.d/npm" ]; then
    source "$(brew --prefix)/etc/bash_completion.d/npm"
fi

# pyenv Settings
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# MySQL Client
export PATH="$(brew --prefix)/opt/mysql-client/bin:$PATH"

# Google Cloud SDK
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then
   source "$HOME/google-cloud-sdk/path.bash.inc"
fi
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then
   source "$HOME/google-cloud-sdk/completion.bash.inc"
fi

# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH="$HOME/Library/Caches/heroku/autocomplete/bash_setup"
test -f $HEROKU_AC_BASH_SETUP_PATH
source $HEROKU_AC_BASH_SETUP_PATH

# kubectl
if [ -f "$(brew --prefix)/etc/bash_completion.d/kubectl" ]; then
    source "$(brew --prefix)/etc/bash_completion.d/kubectl"
fi

# velero
if [ -f "$(brew --prefix)/etc/bash_completion.d/velero" ]; then
    source "$(brew --prefix)/etc/bash_completion.d/velero"
fi

# MinIO
if [ -f "$(brew --prefix)/bin/mc" ]; then
    complete -C $(brew --prefix)/bin/mc mc
fi

# Restic (/w restic generate --bash-completion $(brew --prefix)/etc/bash_completion.d/restic)
if [ -f "$(brew --prefix)/etc/bash_completion.d/restic" ]; then
    source "$(brew --prefix)/etc/bash_completion.d/restic"
fi
