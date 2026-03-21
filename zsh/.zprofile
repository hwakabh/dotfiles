# setup brew
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
if command -v brew > /dev/null; then
  eval "$(brew shellenv zsh)"
fi

# setup PATH for development
export PATH="$HOME/.local/bin:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.nodebrew/current/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

if command -v pyenv > /dev/null; then
  eval "$(pyenv init --path)"
fi

# load alias and functions
if [ -f "$HOME/.zshrc" ]; then
  source "$HOME/.zshrc"
fi
