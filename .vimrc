"==============================================================
"               .vimrc
"==============================================================

function! SourceSafe(file)
  if filereadable(expand(a:file))
    execute 'source ' . a:file
  endif
endfunction


source ~/.vim/rc/base.vim

source ~/.vim/rc/pluginlist.vim
source ~/.vim/rc/pluginconf.vim
source ~/.vim/rc/map.vim
