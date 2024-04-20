#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '


#--------------------------USER CONFIG----------------------------------


# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac


# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# some more ls aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias ll='ls -la'
alias ..='cd ..'
#alias -='cd -'
alias la='ls -A'
alias _home='cd ~'
alias l='ls -CF'


alias _updaterc='source ~/.bashrc'
alias _vimbashrc='vim ~/.bashrc'
alias _cprc='cp ~/.bashrc ~/config/'
alias _cpspacemacs='cp ~/.spacemacs ~/config/'


alias gitlog='git log --graph'


# export settings
export LC_ALL="zh_CN.UTF-8"
export LC_MESSAGES="zh_CN.UTF-8"
export LANG="zh_CN.UTF-8"


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi





#---------------------------Function------------------------------------



# alias myemacson='mv ~/.emacs.d ~/.backup/sp && mv ~/.backup/purcell ~/.emacs.d'
# alias myemacsdown='mv ~/.emacs.d ~/.backup/purcell && mv ~/.backup/sp ~/.emacs.d'


alias myemacson='mv ~/.emacs.d ~/.backup/myEmacs/ && mv ~/.backup/purcell ~/.emacs.d'
alias myemacsdown='mv ~/.emacs.d ~/.backup/purcell && mv ~/.backup/sp ~/.emacs.d'


function _setProxy() {
    export http_proxy=http://127.0.0.1:8088
    export https_proxy=https://127.0.0.1:8088
    echo -e "set Proxy"
}

function _unsetProxy(){
    unset http_proxy https_proxy
    echo -e "unset Proxy"
}


change_emacs=0

mkEmacsDir(){
	
    if [ ! -d ~/.backup/myEmacs/  ]; then
        mkdir -p ~/.backup/myEmacs/
        echo "mkdir ~/.backup/myEmacs success"
    fi

    if [ ! -d ~/.backup/spacemacs/  ]; then
        mkdir -p ~/.backup/spacemacs/
        echo "mkdir ~/.backup/spacemacs success"
    fi
}

startMyemacs()
{
    mkEmacsDir

    #if [ ! -d ~/.emacs.d/  ]; then
    #    echo "change emacs pause, not exist ~/.emacs.d/"
    #    return 128
	#return
    #fi


    cp -r  ~/.emacs.d ~/.backup/spacemacs/ 

    if [ $? -eq 0 ]; then
        cp -r  ~/.backup/myEmacs/.emacs.d  ~/
    else
        return 128
    fi

    if [ $? -eq 0 ]; then
        echo "change emacs successfully"
    else
        return 128
    fi
}

startSpacemacs()
{
    mkEmacsDir

    #if [ ! -d ~/.emacs.d/  ]; then
    #    echo "change emacs pause, not exist ~/.emacs.d/"
    #    return 128
    #fi

    cp -r ~/.emacs.d ~/.backup/myEmacs/ 


    if [ $? -eq 0 ]; then
        cp -r  ~/.backup/spacemacs/.emacs.d  ~/
    else
        return 128
     fi
    
    if [ $? -eq 0 ]; then
        echo "change emacs successfully"
    else
        return 128
    fi
}

source /usr/share/nvm/init-nvm.sh
