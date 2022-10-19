# General alias
alias l="ls -hGF"
alias ll="ls -altrhGF"
alias ls='ls -tG'
alias rm='rm -i'
alias cls='clear'

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# zsh-completion
chmod -R go-w '/opt/homebrew/share/'
if type brew &> /dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

# Git
export PATH=$(brew --prefix)/bin/git:$PATH
alias g='git'
alias gs='git status'
alias ga='git add'
alias gd='git diff'
alias gds='git diff --staged'
alias gb='git branch -a -vv'
alias gr='git remote -v'
alias gg='git graph'
alias gf='git fetch --all --prune'

# VSCode
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
# PowerShell
alias powershell='pwsh'

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# nodebrew
export PATH="$HOME/.nodebrew/current/bin:$PATH"

# golang
export GOPATH=$(go env GOPATH)

# aws-cli
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws

# google-cloud-sdk
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then
  source "$HOME/google-cloud-sdk/path.zsh.inc";
fi
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then
  source "$HOME/google-cloud-sdk/completion.zsh.inc";
fi

# k8s
alias k='kubectl'
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# mysql-client
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

