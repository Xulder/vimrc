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
" Floaterm
nnoremap <silent> <localleader>n :FloatermNew<CR>
tnoremap <silent> <localleader>n <C-\><C-n>:FloatermNew<CR>
nnoremap <silent> <localleader>t :FloatermToggle<CR>
tnoremap <silent> <localleader>t <C-\><C-n>:FloatermToggle<CR>
nnoremap <silent> <localleader>tp :FloatermPrev<CR>
tnoremap <silent> <localleader>tp <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent> <localleader>tn :FloatermNext<CR>
tnoremap <silent> <localleader>tn <C-\><C-n>:FloatermNext<CR>
tnoremap <silent> <localleader>tq <C-\><C-n>:FloatermKill<CR>:silent! FloatermPrev<CR>
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
nnoremap <leader>wh <C-w>H
nnoremap <leader>wj <C-w>J
nnoremap <leader>wk <C-w>K
nnoremap <leader>wl <C-w>L
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
" open filepath under cursor in new window
nnoremap <leader>wf <C-w>f
nnoremap <leader>wfv :vertical wincmd f<CR>

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
nnoremap <leader>ft :call FoldColumnToggle()<CR>
function! FoldColumnToggle()
    if &foldcolumn
        setlocal foldcolumn=0
    else
        setlocal foldcolumn=4
    endif
endfunction
nnoremap <leader>f zfip

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => CoC
" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
" Applying codeAction to the selected region
" Example: `<leader>aap` for current paragraph
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
" Remap keys for appying codeAction to the current buffer
nmap <leader>ac <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line
nmap <leader>qf <Plug>(coc-fix-current)
" Map function and" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a) class text objects
" Remap <C-f> and <C-b> to scroll float windows/popups
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'edito" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <localleader>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <localleader>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <localleader>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <localleader>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <localleader>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <localleader>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <localleader>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <localleader>p  :<C-u>CocListResume<CR>r.action.organizeImport')
