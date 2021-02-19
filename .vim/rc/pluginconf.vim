" simeji/winresizer

" perservim/nerdtree
map <C-d> :NERDTreeToggle<CR>

" easymotion
nmap s <Plug>(easymotion-s2)

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1

" nvie/vim-flake8
" autocmd BufWritePost *.py call Flake8()

" junegunn/fzf
map <C-n> :FZF<CR>

" vimwiki/vimwiki
let g:vimwiki_list = [{'path': '~/Dropbox/Sync_on_Mac/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext = 0
au BufNewFile ~/Dropbox/Sync_on_Mac/vimwiki/diary/*.md :silent 0r !~/.vim/bin/generate-vimwiki-diary-template '%'

" davidhalter/jedi-vim
" let g:jedi#completions_enabled = 0
" let g:jedi#goto_stubs_command = "<Nop>"
" let g:jedi#smart_auto_mappings = 1

" lsp
let g:go_gocode_propose_source = 0
let g:lsp_async_completion = 1
if executable('golsp')
    augroup LspGo
        au!
        autocmd User lsp_setup call lsp#register_server({
                    \ 'name': 'go-lang',
                    \ 'cmd': {server_info->['golsp', '-mode', 'stdio']},
                    \ 'whitelist': ['go'],
                    \
    })
    autocmd FileType go setlocal omnifunc=lsp#complete
    augroup END
endif

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

" For python
autocmd BufWritePre *.py execute ':Black'
autocmd BufWritePre *.py execute ':Isort'
