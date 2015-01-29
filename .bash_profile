source ~/.bashrc

source ~/.local/bin/bashmarks.sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#git aware prompt
# Taken from http://www.opinionatedprogrammer.com/2011/01/colorful-bash-prompt-reflecting-git-status/
function _git_prompt() {
local git_status="`git status -unormal 2>&1`"
if ! [[ "$git_status" =~ Not\ a\ git\ repo ]]; then
  if [[ "$git_status" =~ On\ branch\ ([^[:space:]]+) ]]; then
    branch=${BASH_REMATCH[1]}
    #test "$branch" != master || branch=' '
  else
    # Detached HEAD.  (branch=HEAD is a faster alternative.)
    branch="(`git describe --all --contains --abbrev=4 HEAD 2> /dev/null ||
      echo HEAD`)"
  fi
  echo -n '[\[\]'"$branch"'\[\e[0m\]]'
fi
}

function report_status() {
  RET_CODE=$?
  if [[ $RET_CODE -ne 0 ]] ; then
    echo -ne "[\[$RED\]$RET_CODE\[$NC\]]"
  fi
}

export _PS1="\[$NC\](\u@\h \W)"
export PS2="\[$NC\]> "
export PROMPT_COMMAND='_status=$(report_status);export PS1="${_PS1}$(_git_prompt)$ ";unset _status;'

# export PS1="\@ $PS1"

export GOPATH="$HOME/code"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/home/will/code/src/chromium.googlesource.com/depot_tools
