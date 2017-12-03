# Path to your oh-my-zsh installation.
export ZSH=/Users/hectorqiu/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"

ZSH_THEME="agnoster" 

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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

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
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias
alias mvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias gvim='mvim'
alias cls='clear'
alias ll='ls -l -a -h'
alias llh='ls -l -a -h'
alias la='ls -a'
alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='vi'
alias subl='sublime'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias rm='rm -i'
alias ipconfig='ifconfig'
alias cd-='cd -'
alias cd1='cd ..'
alias cd2='cd ../..'
#alias sublime="/opt/sublime2/sublime_text"
#alias sublime="LD_PRELOAD=/opt/sublime2/libsublime-imfix.so sublime2"

alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s html=vi   # 在命令行直接输入后缀为 html 的文件名，会在 vi 中打开
alias -s rb=vi     # 在命令行直接输入 ruby 文件，会在 vi 中打开
# alias -s py=vi       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip -O cp936'
alias -s bz2='tar -xjvf'

alias clean_pyc='find . -name "*.pyc" -exec rm -rf {} \;'
alias runserver='python manage.py runserver'

alias ssh75="ssh ymserver@58.63.244.75 -p36000"
alias ssh211="ssh ymserver@172.16.1.211"
alias ssh250="ssh ymserver@172.16.1.250"
alias ssh253="ssh ymrouter@172.16.1.253"
alias ssh90="ssh ubuntu@61.153.102.90"

#alias wanip="dig +short myip.opendns.com @resolver1.opendns.com"
alias wanip='curl ip.gs'
alias set_http_proxy='export http_proxy=http://127.0.0.1:1087'
alias set_https_proxy='export https_proxy=http://127.0.0.1:1087'

alias set_socks5_proxy='export http_proxy=socks5://127.0.0.1:1080; export https_proxy=socks5://127.0.0.1:1080'

alias chrome_extendsion="cd ~/Library/Application\ Support/Google/Chrome/Default/Extensions/"

alias ps_wc_defunct="ps -ef | grep defunct | grep -v grep | wc -l"

alias mount_t77_by_sshfs='sshfs -C -o reconnect -o transform_symlinks -o allow_other,defer_permissions hector@192.168.123.50:/ /Users/hectorqiu/mnt/t77'
alias mount_t77='mount_t77_by_sshfs'
alias unmount_t77='umount -f hector@192.168.123.50:/'
alias remount_t77='unmount_t77;mount_t77'

plugins=(git bower sublime brew history node npm sudo osx web-search zsh-syntax-highlighting pip autopep8 pylint python tmux vagrant extract virtualenvwrapper)  

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh


# export 

# 替换 homebrew bottle 源 @see https://lug.ustc.edu.cn/wiki/mirrors/help/homebrew-bottles
export HOMEBREW_BOTTLE_DOMAIN=http://7xkcej.dl1.z0.glb.clouddn.com

#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/usr/local/sbin:/Users/hectorqiu/Library/Python/2.7/bin:$PATH"


export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/dist
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


# virtualenv
export VIRTUAL_ENV='/usr/local'
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

#export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
#source /usr/local/bin/virtualenvwrapper_lazy.sh


[[ -s "/Users/hectorqiu/.gvm/scripts/gvm"  ]] && source "/Users/hectorqiu/.gvm/scripts/gvm"

# init go env
export GOPATH=$HOME/workspaces/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

