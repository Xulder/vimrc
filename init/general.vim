" $XDG_CONFIG_HOME/nvim/init/general.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Basics
set nocompatible " Turn off vi compatibility
filetype plugin on
set background=dark
syntax enable
set backspace=2  " Backspace behaves like other programs
set go=a
set mouse=a
set hidden       " Undo persists even when switching to other buffers
set termguicolors
let base16colorspace=256
" This has to happen before colorscheme is called.
augroup qs_colors
    autocmd!
    autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
    autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup end
" colorscheme base16-google-dark
" colorscheme base16-horizon-dark
colorscheme base16-phd
" colorscheme wombat256grf
" colorscheme base16-spacemacs
" Fixes for that sweet sweet transparency
hi Normal guibg=NONE ctermbg=NONE
hi clear CursorLine
hi CursorLine gui=underline cterm=underline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => General
set autoread
set lazyredraw
set ttyfast                                                   " Speed up scrolling in Vim
" set exrc                                                    " Run project specific .nvimrc files
" set secure                                                  " Diasble unsafe commands in project specific nvimrc files
set timeoutlen=500                                            " Shorten timeout length for multikey commands
set clipboard+=unnamedplus                                    " Using system clipboard
set encoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Files, backups and undo
set nowritebackup
set nobackup        " Turn backup off since most stuff is in Git anyway...
set shortmess+=c
set nowb
set noswapfile
set undofile
set undolevels=1000 " Number of undo levels
set undodir=~/.local/share/nvim/undotree

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Tabs, spaces and indentation
set autoindent             " Auto-indent new lines
set shiftwidth=4           " Number of auto-indent spaces
set smartindent            " Enable smart-indent
set smarttab               " Enable smart-tabs
set softtabstop=4          " Number of spaces per Tab
set expandtab              " Convert tabs to spaces

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => UI config
filetype indent on                              " load filetype-specific indent files
set number relativenumber                       " Show relative line numbers
set showcmd                                     " Show last command in bottom bar
set laststatus=0 " Never show status line on last window
set cursorline                                  " Highlight current cursorline
set ruler                                       " Show row and column ruler information
set visualbell                                  " Use visual bell (no beeping)
set cmdheight=2                                 " Taller command line
set wildmenu                                    " Visual autocomplete for command menu
set wildmode=longest,list,full
set showmatch                                   " Highlight matching [{()}]
set so=3                                        " Set x lines to the cursor - when moving vertically with j/k
set ai                                          " Auto indent
set si                                          " Smart indent
set wrap                                        " Wrap lines
set linebreak                                   " Break lines at word (requires Wrap lines)
set showbreak=***                               " Wrap-broken line prefix
set textwidth=80                                " Line wrap (number of cols)
set nolist
set splitbelow splitright                       " Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
" set foldcolumn=5
" Messes with transparency so disabled until I find a fix
" let &colorcolumn="80,".join(range(121,999),",") " Set an 80 column border for good coding style
" highlight colorcolumn ctermbg=235 guibg=#2c2d27
" set path+=**                                  " Find every file recursively based on current directory

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Searching
set hlsearch   " Highlight all search results
set smartcase  " Enable smart-case search
set ignorecase " Always case-insensitive
set incsearch  " Searches for strings incrementally

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Mappings
" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
" Stops c from clobbering the main register
noremap c "_c
" Treat long lines as break lines
map j gj
map k gk
" Replace ex mode with gq
map Q gq
" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Autocommands/groups
" Automatically deletes all trailing whitespace and newlines at end of file on save. (Because fuck python)
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e
" When shortcut files are updated, renew bash and ranger configs with new material:
autocmd BufWritePost bm-files,bm-dirs !shortcuts
" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufRead,BufNewFile Xresources,Xdefaults,xresources,xdefaults set filetype=xdefaults
autocmd BufWritePost Xresources,Xdefaults,xresources,xdefaults !xrdb %
" Prevent automatic comment continuation because it's annoying as fuck
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
" Disable autopairs by default because it can be fucking obnoxious
autocmd VimEnter,BufWinEnter * silent! call AutoPairsToggle()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Macros

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
