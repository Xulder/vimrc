" $XDG_CONFIG_HOME/nvim/init/plug.vim

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif


call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
" Wiki/Prose
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
" Appearance
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" QOL improvments
Plug 'unblevable/quick-scope'
Plug 'liuchengxu/vim-which-key'
" , { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'junegunn/vim-peekaboo'
" Worflow/project managment
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-obsession'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'junegunn/fzf', { 'do': { -> 'yes\| ./install' } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fugitive-blame-ext'
Plug 'airblade/vim-gitgutter'
" Text modification and motions
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-sneak'
Plug 'jiangmiao/auto-pairs'
" Autocompletion, linting, syntax, and code snippits
Plug 'ap/vim-css-color'
Plug 'vim-syntastic/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
