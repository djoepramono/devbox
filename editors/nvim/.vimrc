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
" Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' 

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Custom
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'ayu-theme/ayu-vim'

" Initialize plugin system
call plug#end()

" Yet another custom
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1 " For old neovim
if (has("termguicolors"))
 set termguicolors
endif
set termguicolors
set t_Co=256
" colorscheme gruvbox
" colorscheme jellybeans
" colorscheme solarized8
let ayucolor="mirage"
colorscheme ayu

set background=dark    " Setting dark mode

" From Vodurden git
set incsearch
set ignorecase
set smartcase
set showmatch
set diffopt=filler,iwhite "Ignore all whitespace
set showmatch " Show matching braces
set encoding=utf-8 "The one true encoding
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

" copying
set mouse=a " copying with mouse, does not copy the line numbers
" unnamedplus = yanks go to shared clipboard. 
" unnamed = yanks got to vim primary clipboard which is not shared
" for mac and windows, there's only one clipboard. So setting to unnamed is enough
set clipboard+=unnamedplus 

" map
" note that you might need the space after the key shortcut
map f :FZF
map <C-t>a :tabs<cr>
map <C-t><Right> :tabe<cr>
map <C-t><Left> :tabp<cr>
nnoremap <C-b> :NERDTreeToggle<cr>
nnoremap <C-0> :NERDTreeFocus<cr>
"
"
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

"ProjectFiles instead of :Files or :GitFiles
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
