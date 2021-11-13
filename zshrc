# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH
export PATH=$PATH:$GOBIN

# Path to your oh-my-zsh installation.
export ZSH="/Users/parik/.oh-my-zsh"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
plugins=(brew git zsh-syntax-highlighting zsh-autosuggestions autojump colored-man-pages)

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

# Individual history per tab
unsetopt inc_append_history
unsetopt share_history

# HISTSIZE is the maximum number of lines that are kept in a session and SAVEHIST is the maximum number of lines that are kept in the history file.
# HISTFILE is the file name where your system is saving history.
HISTSIZE=5000
SAVEHIST=5000

alias vaultstart="unset AWS_VAULT &&  aws-vault exec lending-dev --duration 12h"
alias debug_brg_snbx="HANDLE_GET_DOCUSIGN_URL_BY_ECLOSE=true PROFILE_KEY=default AUTO_ASSIGNMENT_UI=true ENABLE_AUTO_ASSIGNMENT=true PROFILE_KEY=default SHOW_OPS_DESK_ASSIGNEE=true USE_PIPELINE_FILTERS=true USE_ELASTIC_SEARCH=true IS_NOTARY_ACTIVE=true USE_DISPLAY_CONFIGS=true ATTACH_DOCS_IN_ECLOSE=true IS_BLEND_BRIDGE_TASKS_ENABLED=true USE_NEW_MFA_FLOW=true USE_NEW_ADDITIONAL_DOCS_MODAL=true ELASTICSEARCH_URL=\"https://vpc-blend-search-elasticsearch-cahqyh6qgewktrpz3mhkwecf3e.us-east-1.es.amazonaws.com\" npm run debugWithSandbox"
alias no_auto_debug_brg_snbx="PROFILE_KEY=default PROFILE_KEY=default SHOW_OPS_DESK_ASSIGNEE=true USE_PIPELINE_FILTERS=true USE_ELASTIC_SEARCH=true IS_NOTARY_ACTIVE=true USE_DISPLAY_CONFIGS=true ATTACH_DOCS_IN_ECLOSE=true IS_BLEND_BRIDGE_TASKS_ENABLED=true USE_NEW_MFA_FLOW=true USE_NEW_ADDITIONAL_DOCS_MODAL=true ELASTICSEARCH_URL=\"https://ade62015f8c2f4512a97589f3c80adf5-1330618854.us-east-1.elb.amazonaws.com:9200\" npm run debugWithSandbox"
alias ports_listen="netstat -anvp tcp | awk 'NR<3 || /LISTEN/'"
alias kill_proc="kill -9 $(lsof -i:9050 -t) 2> /dev/null"
alias nodekiller="sudo kill -9 `ps aux | grep node | grep -v grep | awk '{print $2}'`"

function svault() {
    export VAULT_ADDR=https://vault.sandbox.k8s.centrio.com:8200
    export VAULT_HOST=vault.sandbox.k8s.centrio.com:8200
    export VAULT_TOKEN=$(cat ~/.vault-token)
}

export NVM_DIR="/Users/parik/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# BLEND
export TZ=UTC
export PGTZ=UTC
export NODE_ENV="dev"
export NO_PICKUP="true"

# IDENTIY
export DB_HOST=localhost
export DB_PASSWORD=devpassword
export DB_PORT=32861
export DB_NAME=identity
export DB_USER=identity_app

# BLEND

eval "$(starship init zsh)"

