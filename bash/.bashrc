# Prompt Settings
export PS1="\[\e[1;32m\]>_ \\W \\t \\$ \[\e[m\]"

# General alias
alias ll="ls -arlthG"
alias ls='ls -tG'
alias rm='rm -i'
alias cls='clear'

# include bash-completion files
source $(brew --prefix)/etc/profile.d/bash_completion.sh
if [ -f "$(brew --prefix)/etc/bash_completion.d/" ]; then . "$(brew --prefix)/etc/bash_completion.d/*"; fi

# gcloud-sdk completions and alias
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/google-cloud-sdk/path.bash.inc"; fi
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/google-cloud-sdk/completion.bash.inc"; fi

# Git
# >>> Overwrite PATH instead of apple-git (/usr/bin/git)
export PATH="/usr/local/bin/git:$PATH"
source /usr/local/etc/bash_completion.d/git-completion.bash
alias g='git'
alias gs='git status'
alias ga='git add'
alias gd='git diff'
alias gds='git diff --staged'
alias gcm='git commit -m'
alias gb='git branch -a -vv'
alias gr='git remote -v'
alias gg='git graph'
alias gf='git fetch -p'

# VSCode CLI
export PATH="/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin:$PATH"
# PowerShell Core for MacOS
alias powershell='pwsh'

# nodebrew Settings
export PATH="$HOME/.nodebrew/current/bin:$PATH"

# pyenv Settings
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
