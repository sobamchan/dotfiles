set complete+=k

set history=500
set timeout timeoutlen=1000 ttimeoutlen=10

set tabstop=4 shiftwidth=4 softtabstop=0
set autoindent
set expandtab

set wildmenu
set wildmode=longest,list,full

set ruler
set relativenumber
syntax enable

set wrapscan
set ignorecase
set smartcase
set incsearch
set hlsearch

set splitbelow
set splitright

set autoread
set noswapfile
set hidden
set backup
set backupdir    =$HOME/.vim/backup
set backupext    =-vimbackup
set backupskip   =
set directory    =$HOME/.vim/swap
set updatecount  =100
set undofile
set undodir      =$HOME/.vim/undo
set nomodeline

set clipboard+=unnamed


autocmd FileType vue setlocal tabstop=2
autocmd FileType vue setlocal shiftwidth=2
autocmd FileType javascript setlocal tabstop=2
autocmd FileType javascript setlocal shiftwidth=2
autocmd FileType htmldjango setlocal tabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2
autocmd FileType html setlocal tabstop=2
autocmd FileType html setlocal shiftwidth=2
autocmd FileType yaml setlocal tabstop=2
autocmd FileType yaml setlocal shiftwidth=2
