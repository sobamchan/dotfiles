if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'simeji/winresizer'
Plug 'davidhalter/jedi-vim'
Plug 'airblade/vim-gitgutter'
Plug 'nvie/vim-flake8'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': './install --bin'  }
Plug 'junegunn/fzf.vim'

Plug 'vimwiki/vimwiki'

call plug#end()
