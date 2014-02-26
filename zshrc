# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
DISABLE_AUTO_TITLE=true

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="apple"

plugins=(osx rails ruby git npm zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
# Language settings
export LC_CTYPE=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# Basic Path
export PATH=$HOME/.rvm/gems/ruby-2.0.0-p353/bin:$HOME/.rvm/gems/ruby-2.0.0-p353@global/bin:$HOME/.rvm/rubies/ruby-2.0.0-p353/bin:$HOME/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$HOME/.cask/bin:$HOME/.cask/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.rvm/bin:/usr/local/mysql/bin

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM


export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128m"

## Added by the Heroku Toolbelt
PATH=$PATH:/usr/local/heroku/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=/Applications/Postgres93.app/Contents/MacOS/bin:$PATH