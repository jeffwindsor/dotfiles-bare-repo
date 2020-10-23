# Jeff Windsor's Dotfiles

Mac and Linux
requires `git`

## Clone Script

```
cd && git clone --bare https://github.com/jeffwindsor/dotfiles.git $HOME/.dotfiles \
  && cd $HOME/.dotfiles \
  && git config --local status.showUntrackedFiles no \
  && alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 
  && cd
```

Use the `dot` alias just as you would the `git` command, for example `dot checkout <prefered branch>` or `dot add <list of file>` or `dot commit -m "some message"`

## Create Script

```
cd \
&& mkdir -p .dotfiles
&& cd .dotfiles \
&& git init --bare \
&& git config --local status.showUntrackedFiles no \
&& alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' \
&& cd
```
