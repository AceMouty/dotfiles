#
# ~/.bashrc
#

# custom path
export PATH=$PATH:/home/kyle/.local/bin
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias'
alias ls='ls --color=auto'
alias clipbord="sh $HOME/.config/scripts/utils/clipboard.sh"
PS1='[\u@\h \W]\$ '

clear
neofetch
