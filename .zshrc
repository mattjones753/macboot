export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
ZSH_CUSTOM=$HOME/.zsh-custom

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

plugins=(
  git
  osx
  nvm
  docker
)

source $ZSH/oh-my-zsh.sh
source ~/.package/.package_zshrc
source ~/.package/config/programming/setup_golang.sh

