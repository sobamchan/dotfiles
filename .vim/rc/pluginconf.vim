" simeji/winresizer

" perservim/nerdtree
map <C-d> :NERDTreeToggle<CR>

" easymotion
nmap s <Plug>(easymotion-s2)

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1

" nvie/vim-flake8
autocmd BufWritePost *.py call Flake8()

" junegunn/fzf
map <C-n> :FZF<CR>

" vimwiki/vimwiki
let g:vimwiki_list = [{'path': '~/Dropbox/Sync_on_Mac/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext = 0
au BufNewFile ~/Dropbox/Sync_on_Mac/vimwiki/diary/*.md :silent 0r !~/.vim/bin/generate-vimwiki-diary-template '%'

" davidhalter/jedi-vim
let g:jedi#goto_stubs_command = "<Nop>"
let g:jedi#smart_auto_mappings = 1
