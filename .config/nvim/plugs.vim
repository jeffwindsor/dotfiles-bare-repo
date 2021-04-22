call plug#begin('~/.cache/nvim/plugged')
  
  "== themes
  Plug 'arcticicestudio/nord-vim'
  Plug 'cocopon/iceberg.vim'
  Plug 'jacoborus/tender.vim'
  Plug 'joshdick/onedark.vim'

  "==  system 
  Plug 'kyazdani42/nvim-web-devicons'       " bar icons
  Plug 'romgrk/barbar.nvim'                 " tab bar
  Plug 'itchyny/lightline.vim'              " bottom bar
  Plug 'jeetsukumaran/vim-filebeagle'       " file browser
  Plug 'junegunn/fzf.vim'                   " fuzzy magic goodness
  Plug 'godlygeek/tabular'                  " align text
  Plug '907th/vim-auto-save'                " Auto Save
  "Plug 'justinmk/vim-sneak'
  Plug 'tomtom/tcomment_vim'
  "Plug 'APZelos/blamer.nvim'                " git lens / blame
 
  "== syntax highlighters
  "Plug 'dense-analysis/ale'                 " linter
  Plug 'ap/vim-css-color'
  Plug 'cespare/vim-toml'
 
  "== applications
  "Plug 'vimwiki/vimwiki'                    " well... wiki

call plug#end()

source $HOME/.config/nvim/vim/vim-sneak.vim"
source $HOME/.config/nvim/vim/tabular.vim"
source $HOME/.config/nvim/vim/fzf.vim"
source $HOME/.config/nvim/vim/autosave.vim"

