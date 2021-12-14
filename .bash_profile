source ~/.local/bin/bashmarks.sh
source ~/.shell_vars
source /usr/share/autojump/autojump.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


export _PS1="\[$NC\](\u@\h \W)"
export PS2="\[$NC\]> "
# export PS1="\@ $PS1"

export GOPATH="$HOME/code"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/home/will/code/src/chromium.googlesource.com/depot_tools

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
eval "$(rbenv init -)"

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

eval `dircolors ~/.dircolors`
stty -ixon

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
