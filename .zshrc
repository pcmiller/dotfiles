# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export GOSS_PATH=~/goss-linux-amd64
export HOMEBREW_PREFIX=/usr/local
export HOMEBREW_CELLAR=$HOMEBREW_PREFIX/Cellar
export BREW=$HOMEBREW_PREFIX/homebrew/bin

# Also for BREW:
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"
export SQLITE_PATH="/usr/local/opt/sqlite/bin"

export FLUTTER=~/local/flutter/flutter

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
for i in \
    $GOSS_PATH \
    $SQLITE_PATH \
    $BREW \
    $HOME/bin \
    $FLUTTER/bin \
; do
    PATH=$PATH:$i
done
export PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/phillip.miller/.oh-my-zsh"

# Set name of the theme to load

#ZSH_THEME="phil"

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="awesome-patched"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git docker brew httpie jira mvn ng node npm osx history sudo vagrant
)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias l='ls -al'
alias rezsh='. ~/.zshrc'
alias whichall="which -a"

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gco='git checkout'
alias gl='git log'
alias gls='git log --name-only'
alias gf='git fetch --all'

alias di='docker image ls'
alias dia='docker image ls -a'
alias dc='docker container ls'
alias dca='docker container ls -a'
alias dps='docker ps'
alias dpsa='docker ps -a'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Java setup

export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
alias java8='export JAVA_HOME=$JAVA_8_HOME'
export ENCRYPT_KEY=IMSYMMETRIC

export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
alias java11='export JAVA_HOME=$JAVA_11_HOME' # default to Java 11

java8

export GROOVY_HOME=/usr/local/homebrew/opt/groovy/libexec

function mkcd() {
    mkdir $1
    cd $1
    echo now in $(pwd)
}

function psgrep() {
    ps -ef | grep $1 | grep -v grep
}

# To customize prompt, run `p9k_configure` or edit ~/.p10k.zsh.
source ~/.p10k.zsh
