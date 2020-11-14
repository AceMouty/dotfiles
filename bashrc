#
# ~/.bashrc
#

# custom path
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias'
alias ls='ls --color=auto'
alias n=nvim
PS1='[\u@\h \W]\$ '

clear
neofetch

# fnm
export PATH=/home/ace/.local/bin:$PATH
eval "`fnm env`"
