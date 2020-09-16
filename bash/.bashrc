# Prompt Settings
export PS1="\[\e[1;32m\]>_ \\W \\t \\$ \[\e[m\]"

# Unmap stty keybind to enable i-Search
stty stop undef

# Alias Settings
alias ll="ls -arlthG"
alias ls='ls -tG'
alias rm='rm -i'
alias cls='clear'

# Git bash-completion and alias
# -- Overwrite PATH instead of apple-git
export PATH="/usr/local/git/bin:$PATH"
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

# gcloud-sdk completions and alias
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/google-cloud-sdk/path.bash.inc"; fi
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/google-cloud-sdk/completion.bash.inc"; fi
alias gcp='gcloud'

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

# kubectl bash completion
# : Since $(bash --version) <= 3, include for legacy shell
source /dev/stdin <<<"$(kubectl completion bash)"

# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH=$HOME/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;

