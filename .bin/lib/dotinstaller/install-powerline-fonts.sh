#!/usr/bin/env bash

set -ue

source $(dirname "${BASH_SOURCE[0]:-$0}")/utilfuncs.sh

function install_powerline_fonts() {
  local powerline_fonts_dir="$HOME/.powerline_fonts"
  git_clone_or_fetch https://github.com/powerline/fonts.git \
    $powerline_fonts_dir
  $powerline_fonts_dir/install.sh
  rm -rf $powerline_fonts_dir/fonts
}

install_powerline_fonts
