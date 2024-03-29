
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Default User
DEFAULT_USER=$USER

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export EDITOR=vim

# krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator

# Make
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"

# NVM Stuff
# export NVM_DIR="$HOME/.nvm"
# . "/usr/local/opt/nvm/nvm.sh"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#Yarn
export PATH="$PATH:$(yarn global bin)"

# MySQL
export PATH=${PATH}:/usr/local/mysql/bin

# https://stackoverflow.com/a/57217841
# Go
# export GOPATH=$HOME/go
# export GOROOT="$(brew --prefix golang)/libexec"
# export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
# export GOPATH="${HOME}/workspace/go"
# export GOROOT="$(brew --prefix golang)/libexec"
# export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
# test -d "${GOPATH}" || mkdir "${GOPATH}"
# test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME=cobalt2

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  rbenv
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

alias personalweb="cd ~/Documents/Projects/software_engineering/new-juliancanderson && code . && yarn dev"
alias jcpro_fe="cd ~/jumpcut/jumpcut-pro-frontend && code . && yarn local"
alias jcpro_be="cd ~/jumpcut/jumpcut-pro-server && npm run dev"
alias run_uploads_folder="cd ~/jumpcut/jumpcut-pro-server/uploads && http-server"
alias run_redis_kafka="docker start jumpcut_redis && docker start jumpcut_kafka"
alias zk="cd ~/Dropbox/2\ -\ Areas/Notes"
alias projects="cd ~/Documents/1_projects/"
alias areas="cd ~/Documents/2_areas/"
alias resources="cd ~/Documents/3_resources/"
alias archives="cd ~/Documents/4_archives/"
alias redeploy_tdol="curl -X POST -d {} https://api.netlify.com/build_hooks/5eacfee56d3a2d9455e11c83"
alias cc="cd ~/creatives-club"
alias bear="cd ~/bear-script && sudo python3 bear_export_sync.py --out ~/Dropbox/Notes/Zettelkasten --backup ~/Dropbox/Notes/Backup"
alias bear-bl="sudo note-link-janitor ~/Dropbox/Notes/Zettelkasten"
alias bear-chown="sudo chown -R juliancanderson ~/Dropbox/Notes"
alias xdt="cd ~/xendit"
alias source-zsh="source ~/.zshrc"
alias k="kubectl"
alias lc="cd ~/latecheckout"
alias run_go_test="go test -v ./..."
alias run-sqs="AWS_DEFAULT_REGION=ap-southeast-2 aws --endpoint-url=http://localhost:4566 sqs create-queue --queue-name cashpay_cash-payment-service_queue_development_dev"
alias run-sns="AWS_DEFAULT_REGION=ap-southeast-2 aws --endpoint-url=http://localhost:4566 sqs create-topic --name cashpay_cash-payment-service_queue_development_dev"
alias activate-cairo="source ~/cairo_venv/bin/activate"

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

eval "$(rbenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/juliancanderson/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/juliancanderson/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/juliancanderson/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/juliancanderson/google-cloud-sdk/completion.zsh.inc'; fi


#### FIG ENV VARIABLES ####
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####


PATH="$PATH:$HOME/Library/Python/3.7/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$PATH:/Users/juliancanderson/.foundry/bin"
