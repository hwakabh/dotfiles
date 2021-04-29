# Prompt Settings
export PS1="\[\e[0;36m\]\D{%Y/%m/%d_%H:%M:%S} \\W % \[\e[m\]"

# Suppress zsh warnings
export BASH_SILENCE_DEPRECATION_WARNING=1

# General alias
alias l="ls -hGF"
alias ll="ls -arlthGF"
alias ls='ls -tG'
alias rm='rm -i'
alias cls='clear'

# include bash-completion files
if [ -f "$(brew --prefix)/etc/bash_completion.d/" ]; then
  source "$(brew --prefix)/etc/bash_completion.d/*"
fi

# gcloud-sdk
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then
  source "$HOME/google-cloud-sdk/path.bash.inc"
fi
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then
  source "$HOME/google-cloud-sdk/completion.bash.inc"
fi

# azure-cli
if [ -f "$(brew --prefix)/etc/bash_completion.d/az" ]; then
  source "$(brew --prefix)/etc/bash_completion.d/az"
fi

# aws-cli
if [ -f "$(brew --prefix)/bin/aws_completer" ]; then 
  complete -C "$(brew --prefix)/bin/aws_completer" aws
fi

# Git & GitHub CLI
# >>> Overwrite PATH instead of apple-git (/usr/bin/git)
if [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ]; then
  export PATH="/usr/local/bin/git:$PATH"
  source "$(brew --prefix)/etc/bash_completion.d/git-completion.bash"
fi
if [ -f "$(brew --prefix)/etc/bash_completion.d/gh" ]; then
  source "$(brew --prefix)/etc/bash_completion.d/gh"
fi
# >>> Alias for git
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

# VSCode CLI
export PATH="/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin:$PATH"
# PowerShell Core for MacOS
alias powershell='pwsh'

# Node.js (nodenv & npm completion)
export PATH="$HOME/.ndenv/bin:$PATH"
if [ -f "$(brew --prefix)/bin/nodenv" ]; then
  eval "$(nodenv init -)"
fi
if [ -f "$(brew --prefix)/etc/bash_completion.d/npm" ]; then
  source "$(brew --prefix)/etc/bash_completion.d/npm"
fi

# pyenv Settings
export PATH="$HOME/.pyenv/bin:$PATH"
if [ -f "$(brew --prefix)/bin/pyenv" ]; then
  eval "$(pyenv init -)"
fi

# MySQL Client
export PATH="/usr/local/opt/mysql-client/bin/:$PATH"

# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH=/Users/hwakabh/Library/Caches/heroku/autocomplete/bash_setup && \
test -f $HEROKU_AC_BASH_SETUP_PATH && \
source $HEROKU_AC_BASH_SETUP_PATH

# Kubernetes
if [ -f "$(brew --prefix)/etc/bash_completion.d/kubectl" ]; then
  source $(brew --prefix)/etc/bash_completion.d/kubectl
fi

# Velero
if [ -f "$(brew --prefix)/etc/bash_completion.d/velero" ]; then
  source $(brew --prefix)/etc/bash_completion.d/velero
fi

# MinIO
if [ -f "$(brew --prefix)/bin/mc" ]; then
    complete -C $(brew --prefix)/bin/mc mc
fi