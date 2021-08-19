# Setup

`git clone --bare https://github.com/jeffwindsor/dotfiles.git $HOME/.dotfiles`

`git -C $HOME/.dotfiles config --local status.showUntrackedFiles no`

`alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`

run `setup.sh` and `link.sh` from ~/.config/os/{current os} 

# Updates
use the `dot` alias just as you would the `git` command for example `dot checkout <prefered branch>` or `dot add <list of file>` or `dot commit -m "some message"`
