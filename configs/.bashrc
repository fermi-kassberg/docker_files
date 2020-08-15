# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'

alias vi='vim'
alias git='LANG=en_US git'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

function git() {
  if [ $# -gt 0 ] && [ "$1" == "diff" ] ; then
     shift
     command git diff --color "$@"
  else
     command git "$@"
  fi
}

alias gitlog="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

if [ -f ~/.bash_completion ]; then 
  . /usr/share/bash-completion/bash_completion
  . ~/.bash_completion
fi
set -o pipefail
