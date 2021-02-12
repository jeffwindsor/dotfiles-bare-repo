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

## Keys

| key         | modifiers        | action                         |
|:------------|:-----------------|--------------------------------|
| ,           | cmd              | increase main pane count       |
| .           | cmd              | decrease main pane count       |
| 0           | cmd              | focus 0 space                  |
| 0           | cmd + ctrl       | move window to 0 space         |
| 1           | cmd              | focus 1 space                  |
| 1           | cmd + ctrl       | move window to 1 space         |
| 2           | cmd              | focus 2 space                  |
| 2           | cmd + ctrl       | move window to 2 space         |
| 3           | cmd              | focus 3 space                  |
| 3           | cmd + ctrl       | move window to 3 space         |
| 4           | cmd              | focus 4 space                  |
| 4           | cmd + ctrl       | move window to 4 space         |
| 5           | cmd              | focus 5 space                  |
| 5           | cmd + ctrl       | move window to 5 space         |
| 6           | cmd              | focus 6 space                  |
| 6           | cmd + ctrl       | move window to 6 space         |
| 7           | cmd              | focus 7 space                  |
| 7           | cmd + ctrl       | move window to 7 space         |
| 8           | cmd              | focus 8 space                  |
| 8           | cmd + ctrl       | move window to 8 space         |
| 9           | cmd              | focus 9 space                  |
| 9           | cmd + ctrl       | move window to 9 space         |
| <end>       | cmd              | 3column layout                 |
| <home>      | cmd              | tall layout                    |
| <left>      | cmd              | focus previous space           |
| <left>      | cmd + ctrl       | move window to previous space  |
| <page down> | cmd              | full screen layout             |
| <page up>   | cmd              | wide layout                    |
| <return>    | cmd              | open new Alacritty             |
| <return>    | cmd + ctrl       | open new Firefox               |
| <return>    | cmd + ctrl + alt | open new Brave                 |
| <return>    | cmd + shift      | open new Finder                |
| <right>     | cmd              | focus next space               |
| <right>     | cmd + ctrl       | move window to next space      |
| e           | cmd              | open new Emacs                 |
| h           | cmd              | shrink main pane               |
| i           | cmd              | open new Intellij IDEA         |
| j           | cmd              | focus clockwise window         |
| j           | cmd + ctrl       | move window clockwise          |
| k           | cmd              | focus counter clockwise window |
| k           | cmd + ctrl       | move window counter clockwise  |
| l           | cmd              | expand main pane               |
| r           | cmd + ctrl       | reload hot keys                |
| r           | cmd + ctrl + alt | reload window manager          |
