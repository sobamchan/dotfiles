if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    !curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'simeji/winresizer'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': './install --bin'  }
Plug 'junegunn/fzf.vim'
Plug 'osyo-manga/vim-anzu'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'  }

Plug 'posva/vim-vue'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdcommenter'

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

Plug 'sebdah/vim-delve'

Plug 'rbgrouleff/bclose.vim'
Plug 'iberianpig/tig-explorer.vim'
Plug 'tpope/vim-fugitive'

Plug 'skanehira/preview-markdown.vim'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" For python
Plug 'fisadev/vim-isort'
Plug 'psf/black', { 'branch': 'stable' }

" colorscheme
Plug 'cocopon/iceberg.vim', {'do': 'cp colors/* ~/.config/nvim/colors/'}

call plug#end()
