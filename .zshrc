# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /home/eatfears/antigen.zsh

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

antigen theme romkatv/powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

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
#

export PATH=$PATH:/usr/local/go/bin:/home/eatfears/go/bin

# The next line updates PATH for CLI.
if [ -f '/home/eatfears/yandex-cloud/path.bash.inc' ]; then source '/home/eatfears/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
if [ -f '/home/eatfears/yandex-cloud/completion.zsh.inc' ]; then source '/home/eatfears/yandex-cloud/completion.zsh.inc'; fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
