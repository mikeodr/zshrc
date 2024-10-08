# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
export ZSH_DISABLE_COMPFIX=true

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(debian docker extract git mosh sudo vagrant)

source $ZSH/oh-my-zsh.sh

# User configuration

export apt_pref=apt-get
export apt_upgr=upgrade

# Golang Optional
if [[ -a /usr/local/go/bin ]]; then
    export PATH=$PATH:/usr/local/go/bin
fi
# export MANPATH="/usr/local/man:$MANPATH"

export DEBEMAIL=mikeodriscoll@gmail.com
export UBUEMAIL=mikeodriscoll@gmail.com
export DEBFULLNAME="Mike O'Driscoll"

# You may need to manually set your language environment
export LANG=en_CA.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zshsource="source ~/.zshrc"

export WORKON_HOME=~/venvs

export EDITOR=vim

unsetopt NOMATCH

if [[ -a ~/.keychain/$(uname -n)-sh ]]; then
  source ~/.keychain/$(uname -n)-sh
fi

if [[ -a ~/.keychain/$(uname -n)-sh-gpg ]]; then
  source ~/.keychain/$(uname -n)-sh-gpg
fi

if [[ -a /usr/local/bin/virtualenvwrapper.sh ]]; then
  source /usr/local/bin/virtualenvwrapper.sh
fi

GPG_TTY=$(tty)
export GPG_TTY

export CCACHE_PREFIX="distcc"
export CC="ccache gcc" CXX="ccache g++"
export DISTCC_HOSTS='localhost' # distcc1'

#Main aliases
alias rm='rm -i'
alias cp='cp -v'
alias mv='mv -v'
alias df='df -h'
alias top='htop'
alias pgrep='pgrep -l'

alias sshinit='ssh-add ~/.ssh/home_rsa ~/.ssh/id_rsa'

alias mtr='mtr -t'

#apt-get aliases
alias install='sudo apt-get install'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias clipboard='xclip -sel clip'

#Fun stuff
alias sl='sl -e' #Choo choo
alias fuck='$(thefuck $(fc -ln -1))'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

SSH_AUTH_SOCK=~/.1password/agent.sock

alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
