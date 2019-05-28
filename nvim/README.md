# Config
It's named `.vimrc` but if you are using neovim the config file is actually `init.vim`.
So copy it to `~/.config/nvim/init.vim`

# Extra stuffs

## FZF

It's a command line fuzzy finder to make it work in vim you need to install two Plugs
- Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
- Plug 'junegunn/fzf.vim'

Interestingly FZF as a command line can be installed separately, so I'm not really sure
if we need the first Plug

## ProjectFiles

Just a custom script from junegunn to actually fuzzy find a file in a project.

The defaults are not good enough
- `:Files` find files way beyond the current project folder
- `:GitFiles` find files only after you make a git commit. Not bad but different behaviour
