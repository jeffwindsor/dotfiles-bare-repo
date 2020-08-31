
alias k 'clear'
alias kk 'clear && reset'
alias ..... 'cd ../../../../'
alias .... 'cd ../../../'
alias ... 'cd ../../'
alias .. 'cd ..'
alias d 'dirs -v | head -10'
alias l 'exa -1Fa --group-directories-first'
alias ll 'exa --long --all --group-directories-first'
alias lt 'exa --tree --level=2'
alias cat 'bat -p'

# fuzzy finds
alias src 'exec-git-dirs cd $SRC'
alias srcv 'exec-git-dirs vscodium $SRC'
alias srci 'exec-git-dirs idea $SRC'
alias dots 'exec-files nvim $XDG_CONFIG_HOME'
alias locs 'exec-files nvim $HOME/.local'

# curls
alias weather 'curl wttr.in'
alias news 'curl getnews.tech'
alias cheatsheet 'curl cheat.sh'
alias rates 'curl rate.sx'

# doom emacs
alias doom '$HOME/.emacs.d/bin/doom'

# docker
alias dkl 'docker ps -a'
alias dkr 'docker run --rm'
alias dkrh 'docker run --rm -d -p 8081:80'
alias dkrt 'docker run --rm -it'

# dotfiles
alias da 'dot add'
alias daa 'dot add -u'
alias dcm 'dot commit -m'
alias dh 'dot-log-graph'
alias ddiff 'dot diff --ignore-space-at-eol -b -w --ignore-blank-lines'
alias dl 'dot ls-files'
alias dph 'dot push'
alias dpl 'dot pull'
alias ds 'dot status -sb --ignore-submodules'

# git
set -x GIT_LOG_PRETTY_FORMAT '%C(green)%h%C(auto)%d%C(reset) - %s | %C(cyan)%an %C(dim)%cr%C(reset)'
alias ga 'git add'
alias gaa 'git add --all'
alias gb 'git branch -r'
alias gc 'git clone'
alias gco 'git checkout'
alias gd 'git diff --ignore-space-at-eol -b -w --ignore-blank-lines'
alias gcm 'git commit -m $1:-"Refactor"'
alias gh 'git-log-graph'
alias gl 'git log'
alias gph 'git push'
alias gpl 'git pull'
alias gr 'git remote -v'
alias gs 'git status -sb --ignore-submodules'
alias gsync 'git checkout master && git pull --rebase && git checkout - && git rebase master'

# stack
alias sb 'stack build'
alias sc 'stack clean'
alias stt 'stack ide targets'
alias sg 'ghcid --command "stack repl" --test ":main"'
alias sr 'stack repl'
alias st 'stack test'
alias sn 'stack-new'
alias sup 'stack upgrade --force-download'
alias sinit 'stack init'
# alias hlsf 'stack test haskell-language-server:test:func-test'
# alias hlst 'stack test haskell-language-server:test:tasty'

# neo-vim
alias vim 'nvim'

# vscodium
alias c 'code .'

# youtube-dl
alias y 'youtube-dl'
alias ya 'youtube-dl --extract-audio --audio-format m4a --audio-quality 0'

source $HOME/.config/machine/(hostname)/config.fish
starship init fish | source

