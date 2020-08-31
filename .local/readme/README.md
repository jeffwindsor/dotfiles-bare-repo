![.files](./.local/readme/dotfiles.webp)

# How to use this repo

## Clone Repo

Clone the repo in your home directory as bare git directory.

```
pushd ${HOME} \
    && git clone --bare https://github.com/jeffwindsor/dotfiles.git $HOME/.dotfiles \
    && pushd $HOME/.dotfiles \
    && git config --local status.showUntrackedFiles no \
    && popd && popd
```

## Create a Special Git Alias

Add yourself an alias to use this bare repo.  Use the `dot` alias just as you would the `git` command, for example `dot checkout <prefered branch>` or `dot add <list of file>` or `dot commit -m "some message"`

```
alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

## Create any Machine Specific Configs you need

The zshrc will look for an source the file `$XDG_CONFIG_HOME/machines/$(hostname)`, this file is the prefect place to put any configuration that is specific to this machine.

# Keyboard Configuration

![.files](./.local/readme/keyboard-layout.png)
[builder](http://www.keyboard-layout-editor.com/)

Hyper = Control + Alt + Cmd/Win

| Key | Hyper | Shift + Hyper |
|---|---|---|
| Home | Stack Right | Stack Left |
| PgUp | Wide | 3 Column |
| PgDn | Full | Floating |
| Enter | Swap with Main Window |  |
| h | Shrink Main Window | |
| l | Expand Main Window | |
| j | Focus Next | Swap Next |
| k | Focus Prev | Swap Prev |
| m | Focus to Main Window |  |
| f | Toggle Float |
| , | Add Main Count |  |
| . | Reduce Main Count |  |
| ↑ | Cycle Layout Forward | |
| ↓ | Cycle Layout Backward | |
| ← | Switch to left | Throw Window to left |
| → | Switch to right | Throw Window to right |
| 1 | Switch to 1 | Throw Window to 1 |
| 2 | Switch to 2 | Throw Window to 2 |
| 3 | Switch to 3 | Throw Window to 3 |
| 4 | Switch to 4 | Throw Window to 4 |
| 5 | Switch to 5 | Throw Window to 5 |
| Backspace | Redraw Windows | |
| Del | Restart Amethyst |  |
| - | Toggle Do Not Disturb | Notifications |
| = | Mission Control | App Windows |
| b | browser 1 | browser 2 |
| c | comms 1 | comms 2 |
| e | editor 1 | editor 2|
| i | ide 1| ide 2 |
| a | mail 1 | mail 2 |
| s | slack | spotify |
| t | terminal 1 | terminal 2 |


# How to re-create this repo from scratch

```
cd
mkdir -p $HOME/.dotfiles
git init --bare $HOME/.dotfiles
pushd $HOME/.dotfiles && git config --local status.showUntrackedFiles no && popd`
alias dot='git --git-dir=${HOME}/.dotfiles/ --work-tree=$HOME'
```

Use the `dot` alias just as you would the `git` command to start adding file to the repo

# Shortened Urls for setup files

| File | sUrl |
|---|---|
dev-manjaro | https://git.io/JfZ8a
dev-macos | https://git.io/JfZ82
dev-popos | https://git.io/JfZ8u
