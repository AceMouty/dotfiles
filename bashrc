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

NPM_PACKAGES="${HOME}/.npm-packages"

export PATH="$PATH:$NPM_PACKAGES/bin"

# fzf
source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash
