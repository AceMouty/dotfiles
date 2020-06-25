#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias'
alias ls='ls --color=auto'
alias clipbord="sh $HOME/.config/scripts/utils/clipboard.sh"
PS1='[\u@\h \W]\$ '

neofetch
