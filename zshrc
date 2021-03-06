# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
DISABLE_AUTO_TITLE=true

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

plugins=(osx rails ruby git npm pylint python web-search zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
# source extra files

# Language settings
export LC_CTYPE=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

#Ruby constants
export RUBY_GC_HEAP_INIT_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

# Load RVM into a shell session *as a function*

# Basic Path
PATH=/usr/lib/jvm/java-7-openjdk-i386/bin:$PATH
PATH=$PATH:/usr/local/heroku/bin

PATH=/usr/lib/jvm/java-7-openjdk-i386/bin:$PATH
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128m"

export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go

if [[ "$OSTYPE" =~ ^darwin ]]
then
    PATH=/Applications/Postgres93.app/Contents/MacOS/bin:$PATH
fi
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_20.jdk/Contents/Home
# be nice
alias please=sudo
# `cat` with beautiful colors. requires Pygments installed.
# sudo easy_install Pygments
alias c='pygmentize -O style=monokai -f console256 -g'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/usr/local/mysql/bin"
NPM_PACKAGES=/Users/yatish/.npm-packages
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"

MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DLYD_LIBRARY_PATH=/usr/local/mysql/lib
