# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Git
export PATH=$(brew --prefix)/bin/git:$PATH

# VSCode
export PATH="/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin:$PATH"


# Include RC file
if [ -f $HOME/.zshrc ]; then
  source $HOME/.zshrc
fi
