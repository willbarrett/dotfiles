alias gp='git pull'
alias ap='ansible-playbook -i'
alias o='xdg-open'

# This is for vim colors in tmux
alias tmux="tmux -2"

# For audio notifications
function notify { espeak "$1 completed with exit status $?"; }
export -f notify
