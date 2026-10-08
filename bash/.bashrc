#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -r /usr/share/bash-completion/bash_completion ]] &&
	. /usr/share/bash-completion/bash_completion

alias neofetch='fastfetch'
alias ls='ls --color=auto'
alias la='ls -lah'
alias vim='nvim'
alias vi='nvim'
alias grep='grep --color=auto'
alias untar='tar -xvf'
PS1='[\u@\h \w]\$ '

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export XDG_MENU_PREFIX=arch-

export XDG_TERMINAL_EXEC=kitty
export TERMINAL=kitty
export TERM=xterm-kitty



export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export PATH=$PATH:/home/fomka/.local/bin
export CMAKE_PREFIX_PATH=
export LESSHISTFILE=-
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CGDB_DIR="$XDG_CONFIG_HOME/cgdb"
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export PYTHON_HISTORY="$XDG_STATE_HOME/PYTHON_HISTORY"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc":"$XDG_CONFIG_HOME/gtk-2.0/gtkrc.mine"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export TS3_CONFIG_DIR="$XDG_CONFIG_HOME/ts3client"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

eval "$(oh-my-posh init bash --config $XDG_CONFIG_HOME/ohmyposhthemes/negligible.omp.json)"
