" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Assuming you already installed FZF via brew, otherwise it might be on diff
" path
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Custom
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

" Yet another custom
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1 " For old neovim
if (has("termguicolors"))
 set termguicolors
endif
colorscheme gruvbox
set background=dark    " Setting dark mode

" From Vodurden git
set incsearch
set ignorecase
set smartcase
set showmatch
set diffopt=filler,iwhite "Ignore all whitespace
set showmatch " Show matching braces
set encoding=utf-8 "The one true encoding
set clipboard+=unnamed " Yanks go to cliboard
set title " Inherit vim's title, not the terminals
set hidden " Allows multiple buffer managing
set backspace=indent,eol,start " Lazy backspace
set number " Line Numbers
set scrolloff=5 "Leave at least 5 lines up/down the cursor
set scrolljump=5 " Lines to scroll when the cursor leaves the screen
set history=1000 " Remeber more commands!
set autochdir
set ttyfast
set noerrorbells
set relativenumber " Useful but needs time to get used to
set tabstop=2
set shiftwidth=2

set softtabstop=2
set expandtab
set autoindent

" map
map f :FZF

