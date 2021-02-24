# Dotfiles

## Setup

```
git clone --bare https://github.com/jeffwindsor/dotfiles.git $HOME/.dotfiles \
&& git -C $HOME/.dotfiles config --local status.showUntrackedFiles no
&& alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

## Notes

Use the `dot` alias just as you would the `git` command, for example `dot checkout <prefered branch>` or `dot add <list of file>` or `dot commit -m "some message"`

## Key Mappings

| key         | cmd            | cmd + ctrl       | cmd + alt     | cmd + ctrl + alt |
|:------------|:---------------|:-----------------|:--------------|:-----------------|
| =           | + main count     |               |                  | |
| -           | - main count     |               |                  | |
| 0           | focus space 0  | move to space 0  | focus to screen 0  | move to screen 0      |
| 1           | focus space 1  | move to space 1  | focus to screen 1  | move to screen 1      |
| 2           | focus space 2  | move to space 2  | focus to screen 2  | move to screen 2      |
| 3           | focus space 3  | move to space 3  | focus to screen 3  | move to screen 3      |
| 4           | focus space 4  | move to space 4  | focus to screen 4  | move to screen 4      |
| 5           | focus space 5  | move to space 5  | focus to screen 5  | move to screen 5      |
| 6           | focus space 6  | move to space 6  | focus to screen 6  | move to screen 6      |
| 7           | focus space 7  | move to space 7  | focus to screen 7  | move to screen 7      |
| 8           | focus space 8  | move to space 8  | focus to screen 8  | move to screen 8      |
| 9           | focus space 9  | move to space 9  | focus to screen 9  | move to screen 9      |
| [right]     | focus space -> | move to space -> | focus to screen -> | move to screen ->     |
| [left]      | focus space <- | move to space <- | focus to screen <- | move to screen <-     |
| [page up]   | wide           |                  |               |                  |
| [page down] | full screen    |                  |               |                  |
| [end]       | 3column        |                  |               |                  |
| [home]      | tall           |                  |               |                  |
| [return]    | Alacritty      | Firefox          | Safari        | Finder           |
| [space]     | Alfred         | Char Viewer      |               |                  |
| [backslash] | Emacs          | Intellij         | VSCodium      |                  |
| h           |                | shrink main      |               |                  |
| j           |                | focus ⟳          | move ⟳        |                  |
| k           |                | focus ⟲          | move ⟲        |                  |
| l           |                | expand main      |               |                  |
| r           |                | reload hot keys  | reload wm     |                  |
    
