#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -r /usr/share/bash-completion/bash_completion ]] &&
	. /usr/share/bash-completion/bash_completion

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_MENU_PREFIX=arch-
export XDG_TERMINAL_EXEC=kitty
export TERMINAL=kitty
export TERM=xterm-kitty
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export PATH="$PATH:/home/fomka/.local/bin"


alias neofetch='fastfetch'
alias ls='ls --color=auto'
alias la='ls -lahbv --color=auto'
alias vim='nvim'
alias vi='nvim'
alias grep='grep --color=auto'
alias less='less -R'
alias shutdown="hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0'"
alias reboot="hyprshutdown -t 'Rebooting...' --post-cmd 'reboot'"

PS1='[\u@\h \w]\$ '

eval "$(oh-my-posh init bash --config $XDG_CONFIG_HOME/ohmyposhthemes/negligible.omp.json)"

# THE PAIN
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
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
export GOPATH="$XDG_DATA_HOME/go"
export NPM_CONFIG_INIT_MODULE="$XDG_CONFIG_HOME/npm/config/npm-init.js"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export NPM_CONFIG_TMP="$XDG_RUNTIME_DIR/npm"
export PSQL_HISTORY="$XDG_STATE_HOME/psql_history"
export HISTFILE="$XDG_STATE_HOME/bash/history"
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
export FVM_CACHE_PATH="$XDG_CACHE_HOME/fvm"
