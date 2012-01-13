source ~/.profile

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

set -o ignoreeof

PS1="\[\033[1;30m\][\[\033[1;34m\]\u\[\033[1;30m\]@\[\033[0;32m\]\h\[\033[1;30m\]] \[\033[1;33m\]\w \[\033[1;37m\]\$\[\033[0m\] "

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

