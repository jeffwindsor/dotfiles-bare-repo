call plug#begin('~/.cache/nvim/plugged')
  
  "== themes
  Plug 'arcticicestudio/nord-vim'
  Plug 'cocopon/iceberg.vim'
  Plug 'jacoborus/tender.vim'
  Plug 'joshdick/onedark.vim'

  "==  system 
  "Plug 'APZelos/blamer.nvim'                " git lens / blame
  "Plug 'justinmk/vim-sneak'
  Plug '907th/vim-auto-save'                " Auto Save
  Plug 'airblade/vim-rooter'
  Plug 'godlygeek/tabular'                  " align text
  Plug 'itchyny/lightline.vim'              " bottom bar
  Plug 'jeetsukumaran/vim-filebeagle'       " file browser
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'                   " fuzzy magic goodness
  Plug 'junegunn/vim-peekaboo'              " show my registers, fool... 
  Plug 'kyazdani42/nvim-web-devicons'       " bar icons
  Plug 'romgrk/barbar.nvim'                 " tab bar
  Plug 'tomtom/tcomment_vim'
 
  "== syntax highlighters
  "Plug 'dense-analysis/ale'                 " linter
  Plug 'ap/vim-css-color'
  Plug 'cespare/vim-toml'
 
  "== applications
  "Plug 'vimwiki/vimwiki'                    " well... wiki
  Plug 'tpope/vim-fugitive'                  " git 
  Plug 'junegunn/gv.vim'                     " git browser

call plug#end()

source $HOME/.config/nvim/vim/vim-sneak.vim"
source $HOME/.config/nvim/vim/tabular.vim"
source $HOME/.config/nvim/vim/fzf.vim"
source $HOME/.config/nvim/vim/autosave.vim"

