alias ls='ls -FG'
alias shred='rm -P'

export BASH_SILENCE_DEPRECATION_WARNING=1
export LSCOLORS=dxGxcxdxCxegedabagacad
#export PS1="[\[\e[0;36m\]\W\[\e[0m\]]\$ "
export PS1="\w$ "
export EDITOR=/usr/bin/vim

export PROJECTS=${HOME}/projects
export PYTHONDONTWRITEBYTECODE=1
export PATH=$PATH:${HOME}/bin:${PROJECTS}/cltools

catcat  # Defined in cltools project
