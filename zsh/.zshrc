source $HOME/.config/zsh/promptline.sh
source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle b4b4r07/enhancd
antigen bundle bobthecow/git-flow-completion
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

alias ls="gls -hv --color=auto --group-directories-first"
alias la="ls -Al"

export MANPAGER="nvim -c 'set ft=man' -"

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
  [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
  eval "$("$BASE16_SHELL/profile_helper.sh")"

export PATH="$HOME/.asdf/shims:$PATH"
