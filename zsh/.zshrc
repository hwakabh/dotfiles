# general aliases
alias l="ls -hGF"
alias ll="ls -altrhGF"
alias ls='ls -tG'
alias rm='rm -i'
alias cls='clear'

# Git
alias g='git'
alias gs='git status'
alias ga='git add'
alias gd='git diff'
alias gds='git diff --staged'
alias gb='git branch -a -vv'
alias gr='git remote -v'
alias gg='git graph'
alias gf='git fetch --all --prune'

function branch-status-check() {
    [[ "$PWD" == *"/.git"* ]] && return
    local branchname=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
    [[ -n $branchname ]] && echo "[${branchname}]"
}

precmd() {
    PROMPT="%D %* %2c $(branch-status-check) %# "
}

# zsh bash-like keybindings
bindkey "^u" backward-kill-line

# completions (with using caching)
autoload -Uz compinit
compinit -C

autoload -Uz bashcompinit && bashcompinit
fpath=(/opt/homebrew/share/zsh/site-functions $fpath)

# activate pyenv
if command -v pyenv > /dev/null; then
  eval "$(pyenv init -)"
fi

# activate rbenv
if command -v rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

# Kubernetes (kubectl/kind)
fpath=(~/.zsh/completion $fpath)

## HashiCorp
#complete -o nospace -C /usr/local/bin/terraform terraform
#complete -o nospace -C /usr/local/bin/vault vault
#fpath=(/opt/vagrant/embedded/gems/gems/vagrant-2.4.7/contrib/zsh $fpath)

## Google Cloud
#[ -f "$HOME/google-cloud-sdk/path.zsh.inc" ] && source "$HOME/google-cloud-sdk/path.zsh.inc"
#[ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ] && source "$HOME/google-cloud-sdk/completion.zsh.inc"

