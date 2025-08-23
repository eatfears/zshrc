#!/bin/sh

# https://github.com/zsh-users/antigen
# or use git.io/antigen-nightly for the latest version
curl -L git.io/antigen > ~/antigen.zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

mkdir ~/.fonts
git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git ~/.fonts/ubuntu-mono-powerline-ttf
fc-cache -vf

# fonts for cli
# ubuntu mono regular


wget -qO- http://ipecho.net/plain | xargs echo
curl -s http://ifconfig.me | xargs echo
telnet mapscii.me
telnet towel.blinkenlights.nl
