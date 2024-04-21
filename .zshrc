# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
         zsh-syntax-highlighting 
         #alias-tips 
         zsh-autosuggestions 
         #zsh-completions
         )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# ~/.bashrc
#


# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '


#--------------------------USER CONFIG----------------------------------


# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac


######## This config can be work only in bash
# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes
#if [ -n "$force_color_prompt" ]; then
#    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
#	color_prompt=yes
#    else
#	color_prompt=
#    fi
#fi

#if [ "$color_prompt" = yes ]; then
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#else
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi
#unset color_prompt force_color_prompt

######## This config can be work only in zsh
#if [[ -n "$force_color_prompt" ]]; then
#    if command -v tput >/dev/null && tput setaf 1 >/dev/null 2>&1; then
#        # We have color support; assume it's compliant with Ecma-48
#        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
#        # a case would tend to support setf rather than setaf.)
#        color_prompt=yes
#    else
#        color_prompt=
#    fi
#fi
#
#if [[ "$color_prompt" = yes ]]; then
#    PS1='${debian_chroot:+($debian_chroot)}%F{green}%n@%m%f:%F{blue}%~%f\$ '
#else
#    PS1='${debian_chroot:+($debian_chroot)}%n@%m:%~\$ '
#fi

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


source /usr/share/nvm/init-nvm.sh

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

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).

#if ! shopt -oq posix; then
#  if [ -f /usr/share/bash-completion/bash_completion ]; then
#    . /usr/share/bash-completion/bash_completion
#  elif [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#  fi
#fi





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

export __emacsType=

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
        export  __emacsType=Myemacs
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
        export __emacsType=Spacemacs
    else
        return 128
    fi
}


function _backup() {

    if  ! which rsync &> /dev/null ; then
        echo "Error: rsync command not found. Please install rsync before running this command."
        return 1
    fi

    rsync -au ~/.bashrc ~/config/.bashrc
    rsync -au ~/.zshrc ~/config/.zshrc
    rsync -au ~/.spacemacs ~/config/.spacemacs

    if [[ "$__emacsType" = Myemacs ]]; then

        rsync -au -delete  ~/.emacs.d/ ~/config/.emacs.d/

        rsync -au -delete ~/.backup/spacemacs/.emacs.d/ ~/config/.emacs.d.spacemacs/
    fi

    if [[ "$__emacsType" = Spacemacs ]]; then

        rsync -au -delete ~/.backup/myEmacs/.emacs.d/ ~/config/.emacs.d/

        rsync -au -delete ~/.emacs.d/ ~/config/.emacs.d.spacemacs/
    fi
}


function _readTest() {
    read flag
    echo "get falg: $flag"
}