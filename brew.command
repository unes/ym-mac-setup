#!/bin/bash

# Updating Homebrew
brew update

# Upgrade Ruby through rbenv
brew install rbenv ruby-build rbenv-default-gems
echo -e '\n export PATH="$HOME/.rbenv/bin:$PATH"\n' >> ~/.bash_profile
echo -e '\n# rbenv\n if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi\n' >> ~/.bash_profile
source ~/.bash_profile
rbenv install 2.3.0
rbenv global 2.3.0
ruby -v

# Upgrade Git
brew install git
echo -e '\n export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"\n' >> ~/.bash_profile
source ~/.bash_profile
git --version

# Install homebrew formulas

formulas=(
    ffmpeg
    python
    rsync
    wget
    curl
    unrar
    markdown
    node # npm will be installed as well
)

brew install "${formulas[@]}"

# use "brew upgrade" to update all installed formulas
