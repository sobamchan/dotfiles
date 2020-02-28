source ~/.zplug/init.zsh

zplug "zsh-users/zsh-completions"
compinit

zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "b4b4r07/enhancd", use:enhancd.sh
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# 未インストール項目をインストールする
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose
