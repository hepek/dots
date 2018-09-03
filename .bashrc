#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

alias ls='ls --color=auto'
PS1="\[\033[2;93m\]$(date +%H:%M) \[\033[2;103;30m\][\u@\h \w]\[\033[0m\]\[\033[2;92m\]\$(parse_git_branch)\n$\[\033[0m\] "

#source /usr/share/bash-completion/completions/git
#source /usr/share/bash-completion/completions/docker
#source /usr/share/bash-completion/completions/vagrant
source /usr/share/bash-completion/completions/journalctl
source /usr/share/bash-completion/completions/systemctl
source /usr/share/bash-completion/completions/git
#source /usr/share/bash-completion/completions/pacman


alias cal='cal -m'
alias smallpdf='gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=smaller.pdf'

PATH=$PATH:/home/milan/.cargo/bin/
export TERM=xterm-256color
