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
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-dadbod'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-vinegar'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

call plug#end()

source $HOME/.config/nvim/plugins/chriskempson/base16-vim.vim
source $HOME/.config/nvim/plugins/edkolev/promptline.vim
source $HOME/.config/nvim/plugins/edkolev/tmuxline.vim
source $HOME/.config/nvim/plugins/nvim-telescope/telescope.vim
source $HOME/.config/nvim/plugins/vim-airline/vim-airline.vim
source $HOME/.config/nvim/plugins/tpope/vim-vinegar.vim
