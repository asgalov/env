# Path to your oh-my-zsh installation.
  export ZSH=/home/gas/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="af-magic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# COMPLETION_WAITING_DOTS="true"

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
plugins=(web-search git zsh-256color)

# User configuration

  export PATH="/home/gas/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/gas/jdk1.8.0_71/bin:/home/gas/idea-IC-143.1821.5/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# 
#
#

autoload -U compinit promptinit 
compinit
promptinit

zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias -s {avi,mpeg,mpg,mov,m2v}=mplayer
alias -s {odt,doc,sxw,rtf}=libreoffice.org
alias -s {html,htm}=chromium
alias -s {pdf}=evince

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias q='exit'
alias cd1='cd ..'
alias cd2='cd ../..'
alias cd3='cd ../../..'
alias gras='gradle assemble'
alias grbu='gradle build'
alias e='vim'
alias fm='vifm'
alias t='tree'
alias t1='tree -L 1'
alias t2='tree -L 2'
alias t3='tree -L 3'
alias o='nautilus .'
alias v='evince'
alias md='mkdir'
alias i='sudo apt-get install'
alias ut='tar -xvzf'
alias idea='idea.sh'
alias algebra='/home/gas/bin/algebra.sh'
alias algorithms='/home/gas/bin/algorithms.sh'
alias android='/home/gas/bin/android.sh'
alias en='/home/gas/bin/english.sh' alias ohmyzsh="mate ~/.oh-my-zsh"
alias unbz='bzip2 -dc' 
alias untar='tar -xvf'
alias ohmyzsh="mate ~/.oh-my-zsh"

export TERM=xterm-256color
