# Prompt Settings
export PS1="\[\e[1;32m\]>_ \\W \\t \\$ \[\e[m\]"

# Unmap stty keybind to enable i-Search
stty stop undef

# Alias Settings
alias ll="ls -arlthG"
alias ls='ls -tG'
alias rm='rm -i'

# Git bash-completion and alias
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

# PowerShell Core for MacOS
alias powershell='pwsh'

# nodebrew Settings
export PATH=$HOME/.nodebrew/current/bin:$PATH

# pyenv Settings
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# kubectl bash completion
source <(kubectl completion bash)

# gcloud-sdk
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/google-cloud-sdk/path.bash.inc"; fi
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/google-cloud-sdk/completion.bash.inc"; fi