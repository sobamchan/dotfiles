" simeji/winresizer

" perservim/nerdtree
map <C-d> :NERDTreeToggle<CR>

" easymotion
nmap s <Plug>(easymotion-s2)

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1

" junegunn/fzf
map <C-n> :FZF<CR>

" plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1

" ultisnips
let g:UltiSnipsExpandTrigger="<c-k>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Golang
let g:go_fmt_command = "goimports"
autocmd FileType go nmap <silent> ;d :DlvToggleBreakpoint<CR>
autocmd FileType go nmap <silent> ;s :DlvTest<CR>

" comment
let g:NERDSpaceDelims = 1

" tig
nmap <silent> ;t :TigOpenProjectRootDir<CR>

" markdown
let g:preview_markdown_parser='glow'
let g:preview_markdown_vertical = 1

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" jedi-vim
" completion with deoplete
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#completions_enabled = 0
let g:jedi#goto_stubs_command = ""

" For python
autocmd BufWritePre *.py execute ':Black'
autocmd BufWritePre *.py execute ':Isort'
