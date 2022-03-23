" $XDG_CONFIG_HOME/nvim/init/plug.vim

" => Autoplugins
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" => Plug
call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))

" => Wiki/Prose
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'

" => Appearance
Plug 'glepnir/dashboard/nvim'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" => QOL improvments
Plug 'unblevable/quick-scope'
Plug 'junegunn/vim-peekaboo'

" => Worflow/project managment
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-obsession'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'ludovicchabant/vim-gutentags'
Plug 'junegunn/fzf', { 'do': { -> 'yes\| ./install' } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fugitive-blame-ext'
Plug 'airblade/vim-gitgutter'
Plug 'voldikss/vim-floaterm', { 'on': ['FloatermNew', 'FloatermNew!', 'FloatermToggle', 'FloatermToggle!'] }

" => Text modification and motions
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-sneak'
Plug 'jiangmiao/auto-pairs'
Plug 'michaeljsmith/vim-indent-object'
Plug 'jeetsukumaran/vim-indentwise'
'
" => Autocompletion, linting, syntax, and code snippits
Plug 'preservim/vim-markdown'
Plug 'ap/vim-css-color'
" Plug 'vim-syntastic/syntastic'
" Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
Plug 'adamclerk/vim-razor'
Plug 'tikhomirov/vim-glsl'
Plug 'oranget/vim-csharp'
Plug 'neovimhaskell/haskell-vim'
Plug 'elixir-editors/vim-elixir'
" Plug 'dense-analysis/ale'
Plug 'kburdett/vim-nuuid'
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install() }}

call plug#end()
