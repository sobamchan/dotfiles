
#--------------------------------------------------------------#
##          Environment Variables                             ##
#--------------------------------------------------------------#

export ZDOTDIR=$HOME
export ZHOMEDIR=$ZDOTDIR/.zsh
export ZRCDIR=$ZHOMEDIR/rc
export LC_ALL=en_US.UTF-8

go env -w GOPATH=$HOME/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init -)"


export PATH="$HOME/.poetry/bin:$PATH"

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
