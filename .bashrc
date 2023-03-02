#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias nextserver='ssh alberto@ubtsrv.ignorelist.com -p 5000'
alias ls='ls --color=auto'
alias bat='acpi -i'
alias gitman='cd /home/alberto/Dotfiles/ && lazygit'
alias todo='nvim todo.txt'

# init
# PS1='[\u@\h \W]\$ '
PS1='[\w]\e[1;31m-\e[1;33m\e[1:36m\e[0;m '

# enviroment
export PATH="/usr/bin:$PATH"
export VISUAL=nvim;
export EDITOR=nvim;
export TERMINAL=kitty;
export RANGER_LOAD_DEFAULT_RC=false
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct
