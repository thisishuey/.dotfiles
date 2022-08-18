source $HOME/.config/zsh/promptline.sh
source /opt/homebrew/share/antigen/antigen.zsh
source /opt/homebrew/opt/asdf/asdf.sh

if [ -d /opt/homebrew/opt/node@14/bin ]; then
  export PATH="/opt/homebrew/opt/node@14/bin:$PATH"
  export LDFLAGS="-L/opt/homebrew/opt/node@14/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/node@14/include"
fi

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

export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.asdf/shims:$PATH"

export LESS=-FRX

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/huey/google-cloud-sdk/path.zsh.inc' ]; then
  . '/Users/huey/google-cloud-sdk/path.zsh.inc';
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/huey/google-cloud-sdk/completion.zsh.inc' ]; then
  . '/Users/huey/google-cloud-sdk/completion.zsh.inc';
fi

[ -f /opt/homebrew/opt/dvm/dvm.sh ] && . /opt/homebrew/opt/dvm/dvm.sh
