
set -e

source ${HOME}/.package/install_homebrew.sh
source ${HOME}/.package/install_packages.sh
source ${HOME}/.package/configure_packages.sh

TEST_CURRENT_SHELL=$(expr "$SHELL" : '.*/\(.*\)')
if [ "$TEST_CURRENT_SHELL" != "zsh" ]; then
  chsh -s $(grep /zsh$ /etc/shells | tail -1)
fi
