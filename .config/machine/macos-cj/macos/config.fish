###############################################################################
# ENV
###############################################################################
# XDG Base Directory Specification
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_DATA_HOME $HOME/.local/share

# NVim
set -x NVM_DIR $XDG_CACHE_HOME/nvim
set -x NVIM_LOG_FILE $XDG_CACHE_HOME/nvim-log/

# VsCode / VSCodium
set -x VSCODE_EXTENSIONS $XDG_DATA_HOME/vscode-oss/extensions

# Less
set -x LESSHISTFILE "-"

# only store unique commands in history
set -x HISTCONTROL ignoreboth

# source code directory
set -x SRC $HOME/src

# aliases and functions
set -x FUNCS $HOME/.local/functions

# nixos home-manager
set -x NIX_PATH $HOME/.nix-defexpr/channels$NIX_PATH:+:$NIX_PATH

###############################################################################
# LINKS
###############################################################################
# GIT
ln -fh "$XDG_CONFIG_HOME/git/cj.gitconfig" \
       "$HOME/.gitconfig"
# SSH
ln -fh "$XDG_CONFIG_HOME/ssh/cj.config" \
       "$HOME/.ssh/config"
# VSCODE
ln -fh "$XDG_CONFIG_HOME/vscode/keybindings.json.macos" \
       "$HOME/Library/Application Support/VSCodium/User/keybindings.json"
ln -fh "$XDG_CONFIG_HOME/vscode/settings.json.macos" \
       "$HOME/Library/Application Support/VSCodium/User/settings.json"
ln -fh "$XDG_CONFIG_HOME/keybindings/DefaultKeyBindings.dict" \
       "$HOME/Library/KeyBindings/DefaultKeyBindings.dict"

###############################################################################
# VARIABLES
###############################################################################
# set -x EMPIRE_DEV_ACCT '845290112482'
# set -x EMPIRE_PROD_ACCT '900394040587'
# set -x CJDEV_DEV_ACCT '837465188358'
# set -x CJDEV_PROD_ACCT '123972995618'
# set -x COMM_DETAIL_PRD_ACCT '237555547766'
# set -x AD_SYSTEMS_DEV_ACCT '157941295081'
set -x PROJECTS_DIR "$HOME/.local/cjdev"
set -x SOFTWARE_HOME "$PROJECTS_DIR"
set -x JAVA_HOME "$SOFTWARE_HOME/java/1.8.0-osx"
set -x TNS_ADMIN "$SOFTWARE_HOME/sqlplus/"
set -x DYLD_LIBRARY_PATH "$SOFTWARE_HOME/sqlplus/darwin"
set -x CLASSPATH "$SOFTWARE_HOME/bin:$CLASSPATH"
set -x DEVDB_HOST devdb.db.cj.com
set -x DEVDB_USERNAME spud
set -x DEVDB_PORT 1521
set -x DEVDB_SID devdb
set -x PATH "$PATH:$JAVA_HOME/bin"
set -x PATH "$PATH:$SOFTWARE_HOME/resin"
set -x PATH "$PATH:$SOFTWARE_HOME/bin"
set -x MAVEN_OPTS "-Xmx8G -Xss3m -XX:ReservedCodeCacheSize=256m"

###############################################################################
# ALIASES
###############################################################################
# aws
alias aws-empire 'aws-assume-account-duration-role 43199 "cjorganization/CJDeveloperAccessRole" 845290112482'
alias aws-empire-pro 'aws-assume-account-duration-role 3599 "cjorganization/CJProvisionerAccessRole" 900394040587'
alias aws-cjdev 'aws-assume-account-duration-role 43199 "cjorganization/CJDeveloperAccessRole" 837465188358'
alias aws-cjdev-pro 'aws-assume-account-duration-role 3599 "cjorganization/CJProvisionerAccessRole" 123972995618'
alias aws-ad 'aws-assume-account-duration-role 43199 "cjorganization/CJDeveloperAccessRole" 157941295081'
alias aoc 'open "(aws-get-url-inline)"'
alias aes 'aws-end-session'

# mvn
alias qb 'mvn clean install -T 1C -Ddelta.skip=true -Dcleanup.skip=true -Dqunit.numThreads=8 -DskipTests -Dtablespaces.skip=true -Dgulp.task=min'
alias qqb 'mvn install -T 1C -Ddelta.skip=true -Dcleanup.skip=true -Dqunit.numThreads=8 -DskipTests -Dtablespaces.skip=true -Dgulp.task=min'
alias mc 'k && mvn clean'
alias mci 'k && mvn clean install'
alias mnt 'mvn -Dmaven.test.skip=true install'
alias dbstart "nohup VBoxHeadless --startvm 'Oracle11g32' &> /dev/null &"
alias dbstop "VBoxManage controlvm Oracle11g32 poweroff"

# sqlplus
alias shopcart 'sqlplus -L jwindsor@shopcart'
alias t1 'sqlplus -L cj@tcjoweb1'

# macos
alias cellar 'cd /usr/local/Cellar && l'
alias caskroom 'cd /usr/local/Caskroom && l'
alias bl 'brew list && brew cask list && mas list'
alias bi 'brew info'
alias bc 'brew cask'
# alias bl 'brew leaves | xargs brew deps --installed --for-each | sed \"s/^.*:/(tput setaf 4)&(tput sgr0)/\"'
alias bup 'package-upgrade && package-list'
alias bs 'brew search'
