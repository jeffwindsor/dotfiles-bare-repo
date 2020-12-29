* contains macOs and linux dotfiles
* requires `git`

## Alias
```
alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
Use the `dot` alias just as you would the `git` command, for example `dot checkout <prefered branch>` or `dot add <list of file>` or `dot commit -m "some message"`

## Clone

```
git clone --bare https://github.com/jeffwindsor/dotfiles.git $HOME/.dotfiles \
&& git -C $HOME/.dotfiles config --local status.showUntrackedFiles no
```

## Create

```
mkdir -p $HOME/.dotfiles
&& git -C $HOME/.dotfiles init --bare \
&& git -C $HOME/.dotfiles config --local status.showUntrackedFiles no
```
