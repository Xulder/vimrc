" XDG_CONFIG_COME/nvim/init/leader.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Keybindings
let mapleader=" " " Set the leader key to space
let maplocalleader=","
" Toggle search highlighting
:nnoremap <silent><expr> <leader>nh (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"
" Toggle line numbers
" map <leader>n :set nonumber!<CR>
" map <leader>r :set norelativenumber!<CR>
" nnoremap <leader>n :NumbersToggle<CR>
" nnoremap <leader>r :NumbersOnOff<CR>
" nnoremap <leader>n :call ToggleLineNumber()<CR>
" Toggle Paste
" map <leader>p :set nopaste!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Spell checking
" Pressing <space>ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Shortcuts
" NOTE: Organize this like above
" WhichKey
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
" Window navigation
noremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l
nnoremap <leader>ww <C-w>w
nnoremap <leader>wq <C-w>wq
" Window resizing (move these to leader.vim)
nnoremap <leader>wK :<C-U>exe "res -" . v:count1<CR>
nnoremap <leader>wJ :<C-U>exe "res +" . v:count1<CR>
nnoremap <leader>wH :<C-U>exe "vertical res -" . v:count1<CR>
nnoremap <leader>wL :<C-U>exe "vertical res +" . v:count1<CR>
" Nerdtree
map <leader>t :NERDTreeToggle<CR>

" Buffer navigation
map <leader>bp :bp<CR>
map <leader>bn :bn<CR>
map <leader>bd :bp<bar>bd#<CR>
" Tagbar
map <leader>ta :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
