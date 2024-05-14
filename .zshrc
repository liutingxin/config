# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="random"
# ZSH_THEME="mira" # like
# ZSH_THEME="gnzh" # like

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


## set man color: @see at https://blog.51cto.com/wuyunncu/1709586
#export LESS_TERMCAP_mb=$'\E[01;31m'
#export LESS_TERMCAP_md=$'\E[01;31m'
#export LESS_TERMCAP_me=$'\E[0m'
#export LESS_TERMCAP_se=$'\E[0m'
#export LESS_TERMCAP_so=$'\E[01;44;33m'
#export LESS_TERMCAP_ue=$'\E[0m'
#export LESS_TERMCAP_us=$'\E[01;32m'


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

alias vim='nvim'


# source /usr/share/nvm/init-nvm.sh

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


# 开机后自动启动emacs, 以守护进程的形式
# emacs --daemon 在.profile文件中添加这个即可

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


# cmake settings
#_cmake(){
#	
#    if [ ! -d ./build  ]; then
#        mkdir ./build
#    fi
#
#    cd ./build && cmake ..
#}


# cmake settings
# Emacs 可以直接输入_cmake 命令，进行cmake编译，这样就会在当前代码目录下生产build目录，然后直接运行即可
# 注: CmakeList与源程序在同一级目录，然后生成的程序在build目录下
_cmake_bin(){

    echo "This command is read for Spacemacs to run cmake：当前目录下有一个CmakeList.txt文件，然后在当前目录下执行该命令后，会自动在当前目录下创建一个build目录，然后进入并执行cmake命令"

    echo "I will create _cmake file to /usr/bin/_cmake, if _cmake file not exist /usr/local/bin/_cmake"

    touch ./_cmakebuild

    chmod 755 ./_cmakebuild

    cat << EOF > ./_cmakebuild
#!/bin/bash

if [ ! -d ./build ]; then
    mkdir ./build
fi
cd ./build && cmake ..
EOF

    sudo mv ./_cmakebuild /usr/local/bin/ 

    echo "I add _cmakebuild file in /usr/local/bin/_cmakebuild, please restart terminal for the new configuration to take effect "
}


#function man()
#{
#    env \
#    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
#    LESS_TERMCAP_md=$(printf "\e[1;31m") \
#    LESS_TERMCAP_me=$(printf "\e[0m") \
#    LESS_TERMCAP_se=$(printf "\e[0m") \
#    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
#    LESS_TERMCAP_ue=$(printf "\e[0m") \
#    LESS_TERMCAP_us=$(printf "\e[1;32m") \
#    # echo "man settings....."
#    man "$@"
#}

#man() {
#    env \
#    LESS_TERMCAP_mb=$'\e[1;31m' \
#    LESS_TERMCAP_md=$'\e[1;31m' \
#    LESS_TERMCAP_me=$'\e[0m' \
#    LESS_TERMCAP_se=$'\e[0m' \
#    LESS_TERMCAP_so=$'\e[1;44;33m' \
#    LESS_TERMCAP_ue=$'\e[0m' \
#    LESS_TERMCAP_us=$'\e[1;32m' \
#    man "$@"
#}

man() {
    export TERM=xterm-256color
    env \
    LESS_TERMCAP_mb=$'\e[1;31m' \
    LESS_TERMCAP_md=$'\e[1;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[1;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[1;32m' \
    LESS="-R" \
    man "$@"
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

startMyemacs() {
    mkEmacsDir

    # 备份 Spacemacs 配置
    cp -r  ~/.emacs.d ~/.backup/spacemacs/

    if [ $? -eq 0 ]; then
        cp -r  ~/.backup/myEmacs/.emacs.d  ~/
    else
        return 128
    fi

    if [ $? -eq 0 ]; then
        echo "Change emacs successfully"
        export __emacsType=Myemacs
    else
        return 128
    fi
}

startSpacemacs() {
    mkEmacsDir

    # 备份 Myemacs 配置
    cp -r ~/.emacs.d  ~/.backup/myEmacs/

    if [ $? -eq 0 ]; then
        cp -r  ~/.backup/spacemacs/.emacs.d  ~/
    else
        return 128
    fi

    if [ $? -eq 0 ]; then
        echo "Change emacs successfully"
        export __emacsType=Spacemacs
    else
        return 128
    fi
}

function _backup() {
    # 检查是否存在 rsync 命令
    if ! which rsync &> /dev/null; then
        echo "Error: rsync command not found. Please install rsync before running this command."
        return 1
    fi

    # 设置默认值，防止变量为空
    : ${__emacsType:=}
    echo $__emacsType

    # 执行备份操作
    rsync -u ~/.bashrc ~/config/.bashrc
    rsync -u ~/.zshrc ~/config/.zshrc
    rsync -u ~/.spacemacs ~/config/.spacemacs

    if [[ "$__emacsType" = Myemacs ]]; then
        rsync -u -delete  ~/.emacs.d/ ~/config/.emacs.d/
        rsync -u -delete ~/.backup/spacemacs/.emacs.d/ ~/config/.emacs.d.spacemacs/
        echo "backup  emacs successfully"
    fi

    if [[ "$__emacsType" = Spacemacs ]]; then
        rsync -u -delete ~/.backup/myEmacs/.emacs.d/ ~/config/.emacs.d/
        rsync -u -delete ~/.emacs.d/ ~/config/.emacs.d.spacemacs/
        echo "backup  emacs successfully"
    fi
    
    echo "done..."
}


function _readTest() {
    read flag
    echo "get falg: $flag"
}
