export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source ~/.package/package_zshrc

