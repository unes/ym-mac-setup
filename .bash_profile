# Prompt
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\[$(tput bold)\]\w|\[\e[0;33m\]\u\[\e[0m\]@\h \$\n>_ \[$(tput sgr0)\]"
export PS2=">_ "

# Path
export PATH="/usr/local/sbin:$HOME/.rbenv/bin:$PATH"

# Default editor
export EDITOR=/usr/local/bin/sublime

# Loading .files 
for file in ~/.{colors,aliases,functions}; do
    [ -f "$file" ] && source "$file"
done
unset file

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi



