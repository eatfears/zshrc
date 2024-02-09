source ~/antigen.zsh

DEFAULT_USER="eatfears"

export TERM="xterm-256color"
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
#antigen bundle heroku
antigen bundle pip
#antigen bundle lein
antigen bundle command-not-found

#antigen theme powerlevel9k
antigen bundle fancy-ctrl-z
antigen bundle git-extras
antigen bundle gnu-utils
antigen bundle rake
antigen bundle systemd
antigen bundle python
antigen bundle tmux
antigen bundle zsh_reload
antigen bundle zsh-users/zsh-autosuggestions
# antigen bundle popstas/zsh-command-time



POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="243"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="000"
POWERLEVEL9K_VIRTUALENV_BACKGROUND="30c"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv context dir rbenv vcs) #newline
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history command_execution_time time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="→ "

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

#antigen theme agnoster
antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply

################################################

setopt share_history
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_FIND_NO_DUPS		# Do not display a line previously found.
setopt HIST_IGNORE_SPACE		# Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS

# git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
# ~/.fzf/install
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

################################################

case $- in *i*)
#    [ -z "$TMUX" ] && exec tmux
esac

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export COLORTERM=truecolor
export LANG=en_US.utf8
export LANGUAGE=en
export QT_SELECT="qt5"
LC_ALL="en_US.utf8"

if [ -n $TMUX ]; then
	alias vim="TERM=screen-256color vim"
	alias mc='TERM=screen-256color mc -S gray-green-purple256'
fi

alias docker_rm_stopped='sudo docker rm -v $(sudo docker ps -aq -f status=exited)'
alias docker_kill_all='sudo docker kill $(sudo docker ps -q)'
alias docker_rm_images='docker rmi $(docker images -q)'

# source ~/scmprompt.zsh
