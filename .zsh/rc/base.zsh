#==============================================================#
##          Base Configuration                                ##
#==============================================================#

HOSTNAME="$HOST"
HISTFILE="$ZHOMEDIR/.zsh_history" # ヒストリ保存ファイル
HISTSIZE=10000                    # メモリ内の履歴の数
SAVEHIST=100000                   # 保存される履歴の数
HISTORY_IGNORE="(exit|zsh|pwd)"
LISTMAX=1000                      # 補完リストを尋ねる数 (1=黙って表示, 0=ウィンドウから溢れるときは尋ねる)
KEYTIMEOUT=1

# root のコマンドはヒストリに追加しない
# if [ "$UID" = 0 ]; then
#   unset HISTFILE
#   SAVEHIST=0
# fi

# ls /usr/local/etc などと打っている際に、C-w で単語ごとに削除
# default  : ls /usr/local → ls /usr/ → ls /usr → ls /
# この設定 : ls /usr/local → ls /usr/ → ls /
WORDCHARS='*?_-.[]~&;!#$%^(){}<>|'
 
# zsh関数のサーチパス
fpath=($HOME/.zfunc(N-/) $ZHOMEDIR/zfunc(N-/) $ZHOMEDIR/completion(N-/) $fpath)

# カレントディレクトリ中にサブディレクトリが無い場合に cd が検索するディレクトリのリスト
cdpath=("$HOME")

set clipboard+=unnamed

# autoload
autoload -Uz run-help
autoload -Uz add-zsh-hook
autoload -Uz colors && colors
# define in post execution. because compinit is slow and plugin manager automatic load compinit.
# autoload -Uz compinit && compinit -u
autoload -Uz is-at-least

# core
ulimit -c unlimited

# ファイル作成時のパーミッション
umask 022

export DISABLE_DEVICONS=false

# start tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
# 
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
# 
# # fzf
# source $HOME/.fzf.zsh
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
