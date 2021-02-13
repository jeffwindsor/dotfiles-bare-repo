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

| key         | cmd            | cmd + ctrl       | cmd + alt + ctrl   | cmd + shift |
|:------------|:---------------|:-----------------|:-------------------|:------------|
| ,           | + main count   |                  |                    |             |
| .           | - main count   |                  |                    |             |
| 0           | focus space 0  | move to space 0  | move to 🖥 0        |             |
| 1           | focus space 1  | move to space 1  | move to 🖥 1        |             |
| 2           | focus space 2  | move to space 2  | move to 🖥 2        |             |
| 3           | focus space 3  | move to space 3  | move to 🖥 3        |             |
| 4           | focus space 4  | move to space 4  | move to 🖥 4        |             |
| 5           | focus space 5  | move to space 5  | move to 🖥 5        |             |
| 6           | focus space 6  | move to space 6  | move to 🖥 6        |             |
| 7           | focus space 7  | move to space 7  | move to 🖥 7        |             |
| 8           | focus space 8  | move to space 8  | move to 🖥 8        |             |
| 9           | focus space 9  | move to space 9  | move to 🖥 9        |             |
| ->          | focus space -> | move to space -> | move to 🖥 ->       |             |
| <-          | focus space <- | move to space <- | move to 🖥 <-       |             |
| [end]       | 3column        |                  |                    |             |
| [home]      | tall           |                  |                    |             |
| [page down] | full screen    |                  |                    |             |
| [page up]   | wide           |                  |                    |             |
| [return]    | Alacritty      | Firefox          | Brave              | Finder      |
| e           | Emacs          | Intellij         | VSCodium           |             |
| h           | shrink main    |                  |                    |             |
| j           | focus ⟳        | move ⟳           |                    |             |
| k           | focus ⟲        | move ⟲           |                    |             |
| l           | expand main    |                  |                    |             |
| r           |                | reload hot keys  | reload win manager |             |
