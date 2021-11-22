" $XDG_CONFIG_HOME/nvim/init/plugins.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
if has('nvim')
	let NERDTreeBookmarksFile = stdpath('data') . '/NERDTreeBookmarks'
else
	let NERDTreeBookmarksFile = '~/.vim' . '/NERDTreeBookmarks'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Goyo
" Enable Goyo by default for mutt writing
autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo | set bg=light
autocmd BufRead,BufNewFile /tmp/neomutt* map ZZ :Goyo\|x!<CR>
autocmd BufRead,BufNewFile /tmp/neomutt* map ZQ :Goyo\|q!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Airline
" Set Airline theme:
let g:airline_powerline_fonts = 1
" let g:airline_theme='base16_google_dark'
let g:airline_theme='base16_phd'
" Enable buffer tabsline:
let g:airline#extensions#tabline#enabled = 1
" Enable syntastic integration:
let g:airline#extensions#syntastic#enabled = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => WhichKey
let g:which_key_map = {}
" Toggling

" Windows
let g:which_key_map['w'] = {
            \ 'name' : '+windows',
            \ 'w' : ['<C-w>w'    , 'other-window'],
            \ 'h' : ['<C-w>h'    , 'window-left'],
            \ 'j' : ['<C-w>j'    , 'window-below'],
            \ 'k' : ['<C-w>k'    , 'window-above'],
            \ 'l' : ['<C-w>l'    , 'window-right'],
            \ }
" TODO: Keep filling this out for whatever reason.
" TODO: Work on your fucking project and resume you moron.
call which_key#register('<Space>', "g:which_key_map")

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Quickscope
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Sneak
let g:sneak#label =1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
