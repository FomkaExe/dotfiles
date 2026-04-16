#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -r /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion

alias neofetch='fastfetch'
alias ls='ls --color=auto'
alias la='ls -A'
alias vim='nvim'
alias vi='nvim'
alias grep='grep --color=auto'
alias untar='tar -xvf'
PS1='[\u@\h \w]\$ '

export MANPAGER='nvim +Man!'
export TERM=xterm-256color
export TERMINAL=kitty
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export PATH=$PATH:/home/fomka/.local/bin
export CMAKE_PREFIX_PATH=

eval "$(oh-my-posh init bash --config ~/ohmyposhthemes/negligible.omp.json)"
