let data_dir = has('nvim') ? stdpath('data') : '~/.vim'
let site_dir = has('nvim') ? data_dir . '/site' : data_dir

if empty(glob(site_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo ' . site_dir . '/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugged')

  Plug 'chriskempson/base16-vim'
  Plug 'edkolev/promptline.vim'
  Plug 'edkolev/tmuxline.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

call plug#end()

source $HOME/.dotfiles/nvim/plugins/chriskempson/base16-vim.vim
source $HOME/.dotfiles/nvim/plugins/edkolev/promptline.vim
source $HOME/.dotfiles/nvim/plugins/edkolev/tmuxline.vim
source $HOME/.dotfiles/nvim/plugins/vim-airline/vim-airline.vim
