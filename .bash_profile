source ~/.profile

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

set -o ignoreeof

PS1="\[\e[0;37m\][\[\e[1;34m\]\u\[\e[0;37m\]@\[\e[1;32m\]\h\[\e[0;37m\]] \[\e[1;33m\]\w \[\e[1;37m\]\$\[\e[0m\] "

# Load bash_completion from MacPorts if its installed
[ -r /opt/local/etc/bash_completion ] && source /opt/local/etc/bash_completion

# Load ~/.bash_prompt, ~/.exports, ~/.aliases, ~/.functions and ~/.extra
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

shopt -s histappend

