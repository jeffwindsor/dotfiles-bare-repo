# Dotfiles

## Setup

```
git clone --bare https://github.com/jeffwindsor/dotfiles.git $HOME/.dotfiles 
&& git -C $HOME/.dotfiles config --local status.showUntrackedFiles no
&& alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

## Notes

* Use the `dot` alias just as you would the `git` command for example `dot checkout <prefered branch>` or `dot add <list of file>` or `dot commit -m "some message"`
* each os has a folder in the ~/.config/os/ path with a setup shell file 

## Key Mappings

| key           | ctrl + cmd         | ctrl + alt + cmd     | alt + cmd           | shift + cmd         | shift + alt + cmd   |
| :------------ | :----------------- | :------------------- | :------------------ | :------------------ | :------------------ |
| h             | focus window ⬅️     | swap window ⬅️        | warp ⬅️              |                     |                     |
| j             | focus window ⬇️     | swap window ⬇️        | warp ⬇️              |                     |                     |
| k             | focus window ⬆️     | swap window ⬆️        | warp ⬆️              |                     |                     |
| l             | focus window ->    | swap window ->       | warp ->             |                     |                     |
| -             | shrink window      | shrink gap+padding   |                     |                     |                     |
| +             | expand window      | expand gap+padding   |                     |                     |                     |
| return        | terminal           | web browser          | file browser        |                     |                     |
| space         | launcher           |                      |                     |                     |                     |
| backspace     | emacs              | intellij             | vscodium            |                     |                     |
| delete        | reload hot keys    | balance windows      |                     |                     |                     |
| 0             | focus space 0      | move to space 0      |                     |                     |                     |
| 1             | focus space 1      | move to space 1      |                     |                     |                     |
| 2             | focus space 2      | move to space 2      |                     |                     |                     |
| 3             | focus space 3      | move to space 3      |                     |                     |                     |
| 4             | focus space 4      | move to space 4      |                     |                     |                     |
| 5             | focus space 5      | move to space 5      |                     |                     |                     |
| 6             | focus space 6      | move to space 6      |                     |                     |                     |
| 7             | focus space 7      | move to space 7      |                     |                     |                     |
| 8             | focus space 8      | move to space 8      |                     |                     |                     |
| 9             | focus space 9      | move to space 9      |                     |                     |                     |
| b             | bsp                |                      |                     |                     |                     |
| s             | stack              |                      |                     |                     |                     |
| f             | float              |                      |                     |                     |                     |

