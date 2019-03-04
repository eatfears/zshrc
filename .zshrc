source /usr/share/zsh-antigen/antigen.zsh

export TERM="xterm-256color"

DEFAULT_USER=ilya

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme agnoster
antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell Antigen that you're done.
antigen apply
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history command_execution_time time)

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
