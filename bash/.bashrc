# Prompt Settings
export PS1="\[\e[1;32m\]>_ \\W \\t \\$ \[\e[m\]"

# Unmap stty keybind to enable i-Search
stty stop undef

# ---
# Alias Settings
alias ll="ls -arlthG"
alias ls='ls -tG'
alias rm='rm -i'
alias cls='clear'

# PowerShell Core for MacOS
alias powershell='pwsh'

# ---
# include bash-completion files
source $(brew --prefix)/etc/profile.d/bash_completion.sh
if [ -f "$(brew --prefix)/etc/bash_completion.d/" ]; then . "$(brew --prefix)/etc/bash_completion.d/*"; fi

# gcloud-sdk completions and alias
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/google-cloud-sdk/path.bash.inc"; fi
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/google-cloud-sdk/completion.bash.inc"; fi

# docker-cli bash-completion
DOCKER_ETC_PATH="/Applications/Docker.app/Contents/Resources/etc"
source $DOCKER_ETC_PATH/docker.bash-completion
source $DOCKER_ETC_PATH/docker-compose.bash-completion

# kubectl bash-completion
# >>> Since $(bash --version) <= 3, include for legacy shell
source /dev/stdin <<<"$(kubectl completion bash)"

# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH=$HOME/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;

# ---
# Git PATH and alias
# >>> Overwrite PATH instead of apple-git
export PATH="/usr/local/git/bin:$PATH"
#source /usr/local/etc/bash_completion.d/git-completion.bash
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

# nodebrew Settings
export PATH="$HOME/.nodebrew/current/bin:$PATH"

# pyenv Settings
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

