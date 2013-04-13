umask 022

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

os=${OSTYPE/[^a-z]*/}

case "$os" in
"linux")
	alias ls='ls --color --show-control-chars -F'
	;;
"darwin")
  alias ls='ls -G -F'
esac

alias la='ls -A'
alias ll='ls -lh'
alias vi='vim'
alias mv='mv -iv'
alias cp='cp -iv'
alias rm='rm -iv'
alias du='du -h'
alias df='df -h'
alias screen='screen -'

export EDITOR='vim'
export PS1="\033[32m[\u \h@\w]\033[m\n\\$ "

export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.rar=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35';

export LESS_TERMCAP_mb=$'\E[1;31m'      # begin blinking
export LESS_TERMCAP_md=$'\E[4;32m'      # begin bold
export LESS_TERMCAP_me=$'\E[0m'         # end mode
export LESS_TERMCAP_so=$'\E[0;31m'      # begin standout-mode - info box
export LESS_TERMCAP_se=$'\E[0m'         # end standout-mode
export LESS_TERMCAP_us=$'\E[0;33m'      # begin underline
export LESS_TERMCAP_ue=$'\E[0m'         # end underline

export PYTHONSTARTUP=$HOME/.pythonrc

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

if [ -f /$HOME/.local_bashrc ]; then
    . /$HOME/.local_bashrc
fi
