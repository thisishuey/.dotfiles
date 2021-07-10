if !exists('g:vscode')

  let mapleader = "\<Space>"

  source $HOME/.dotfiles/nvim/plugins.vim
  source $HOME/.dotfiles/nvim/autocmds.vim
  source $HOME/.dotfiles/nvim/mappings.vim
  source $HOME/.dotfiles/nvim/options.vim
  source $HOME/.dotfiles/nvim/variables.vim

endif
