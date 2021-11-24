" XDG_CONFIG_COME/nvim/init/leader.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Keybindings
let mapleader=" " " Set the leader key to space
let maplocalleader=","
" Toggle search highlighting
nnoremap <silent><expr> <leader>th (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Spell checking
" Pressing <space>ss will toggle and untoggle spell checking
nnoremap <leader>ss :setlocal spell!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Shortcuts
" Nerdtree
map <leader>n :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFocus<CR>
" Tagbar
map <leader>ta :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Windows
" Navigation
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
" Resizing
nnoremap <leader>K <C-w>5-
nnoremap <leader>J <C-w>5+
nnoremap <leader>H <C-w>5<
nnoremap <leader>L <C-w>5>
nnoremap <leader>= <C-w>=
" Movement
nnoremap <leader>wr <C-w>r
nnoremap <leader>wR <C-w>R
nnoremap <leader>wx <C-w>x
" Creation/deletion
nnoremap <leader>wq <C-w>q
nnoremap <leader>ws <C-w>s
nnoremap <leader>wv <C-w>v
" select from list of buffers to make vert or horz split
nnoremap <leader>wb :ls<CR>:sbuffer<space>
nnoremap <leader>wbv :ls<CR>:vertical sbuffer<space>
" window with blank buffer
nnoremap <leader>wn :new<CR>
nnoremap <leader>wnv :vnew<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Buffers
" edit new blank buffer
nnoremap <leader>bn :enew<CR>
" delete current buffer without deleting the window
nnoremap <leader>bd :bp<bar>bd#<CR>
" display list of buffers to select from by number or name (delete '#' and enter buffer name)
nnoremap <leader>bg :ls<CR>:buffer<space>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Folding
nnoremap <leader>tf :call FoldColumnToggle()<CR>
function! FoldColumnToggle()
    if &foldcolumn
        setlocal foldcolumn=0
    else
        setlocal foldcolumn=4
    endif
endfunction
nnoremap <leader>f zfip

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
