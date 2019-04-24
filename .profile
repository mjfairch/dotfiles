alias ls='ls -FG'
alias shred='rm -P'

export LSCOLORS=dxGxcxdxCxegedabagacad
#export PS1="[\[\e[0;36m\]\W\[\e[0m\]]\$ "
export PS1="\w: "
export EDITOR=/usr/bin/vim

export PROJECTS=${HOME}/projects
export PYTHONDONTWRITEBYTECODE=correct
export PATH=/Library/Frameworks/Python.framework/Versions/3.7/bin:$PATH:${HOME}/bin:${PROJECTS}/cltools

catcat  # Defined in cltools project
