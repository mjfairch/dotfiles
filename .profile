alias ls='ls -FG'
alias shred='rm -P'

export LSCOLORS=ExGxcxdxCxegedabagacad
export PS1="[\[\e[1;36m\]\W\[\e[0m\]]\$ "
export EDITOR=/usr/bin/vim

export PROJECTS=${HOME}/projects
export PYTHONDONTWRITEBYTECODE=correct
export SECHOME=${HOME}/security
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
export ANT_HOME=/Applications/apache-ant-1.10.1
export CATALINA_HOME=/tomcat
export AXIS2_HOME=${HOME}/development/axis2-1.7.6

export PATH=$PATH:${HOME}/bin:${PROJECTS}/cltools:${HOME}/miniconda3/bin


# Display a random cat during login
catnum=`python -c "import random; print random.randint(1,22)"`
cat ${PROJECTS}/dotfiles/cats/cat$catnum.txt
