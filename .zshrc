source /usr/share/zsh-antigen/antigen.zsh

DEFAULT_USER="ilya"

export TERM="xterm-256color"
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
#antigen bundle heroku
antigen bundle pip
#antigen bundle lein
antigen bundle command-not-found

POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="243"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="000"
POWERLEVEL9K_VIRTUALENV_BACKGROUND="30c"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv context dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history command_execution_time time)

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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

################################################

case $- in *i*)
#    [ -z "$TMUX" ] && exec tmux
esac

