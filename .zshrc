export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
ZSH_CUSTOM=$HOME/.zsh-custom

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

plugins=(
  gitfast
  encode64
  common-aliases
  aws
  osx
  nvm
  docker
  npm
  history
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ~/.package/.package_zshrc
source ~/.package/config/programming/setup_golang.sh
if [[ -a ~/.temp_aliases.sh ]]; then
  source ~/.temp_aliases.sh
fi

