#==============================================================#
#               .zshrc                                         #
#==============================================================#

# profile
if [ "$ZSHRC_PROFILE" != "" ]; then
  zmodload zsh/zprof && zprof > /dev/null
fi


#--------------------------------------------------------------#
##          Base Configuration                                ##
#--------------------------------------------------------------#

source-safe() { if [ -f "$1" ]; then source "$1"; fi }

source "$ZRCDIR/base.zsh"


#--------------------------------------------------------------#
##          Aliases                                           ##
#--------------------------------------------------------------#

source "$ZRCDIR/alias.zsh"


#--------------------------------------------------------------#
##          Prompt Configuration                              ##
#--------------------------------------------------------------#

source "$ZRCDIR/prompt.zsh"

#--------------------------------------------------------------#
##          Plugin                                            ##
#--------------------------------------------------------------#

source "$ZRCDIR/pluginlist.zsh"

#--------------------------------------------------------------#
##          Function                                          ##
#--------------------------------------------------------------#

source "$ZRCDIR/function.zsh"

# added by travis gem
[ -f /Users/sobamchan/.travis/travis.sh ] && source /Users/sobamchan/.travis/travis.sh

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

