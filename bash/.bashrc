# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

if [ "$EUID" -eq 0 ]
then 
   PS1='[\e[1;31m\]\u\e[0;31m\]@\e[1;31m\]\h \e[1;34m\]\w\e[0m\]] # '
else
   PS1='[\e[1;32m\]\u\e[0;32m\]@\e[1;32m\]\h \e[1;34m\]\w\e[0m\]] # '
fi
