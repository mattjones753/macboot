# macboot

```sh
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
git clone --bare git@github.com:mattjones753/macboot.git $HOME/.cfg
config config --local status.showUntrackedFiles no
config submodule update --init --recursive
config status
```
