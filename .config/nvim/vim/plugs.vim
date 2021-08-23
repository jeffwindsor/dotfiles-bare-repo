call plug#begin('~/.cache/nvim/plugged')
  
 " themes
  Plug 'arcticicestudio/nord-vim'
  Plug 'ayu-theme/ayu-vim'
  Plug 'cocopon/iceberg.vim'
  Plug 'jacoborus/tender.vim'
  Plug 'joshdick/onedark.vim'
  Plug 'tomasr/molokai'

  " system
  Plug '907th/vim-auto-save'                " Auto Save
  Plug 'airblade/vim-rooter'                " current directory moves with file
  Plug 'ap/vim-css-color'                   " highlight hex colors in actual color
  Plug 'jeetsukumaran/vim-filebeagle'       " simple file browser
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'                   " fuzzy magic goodness
  Plug 'junegunn/gv.vim'                    " git browser
  Plug 'junegunn/vim-peekaboo'              " show my registers, fool... 
  Plug 'romgrk/barbar.nvim'                 " tab bar (lua)
  Plug 'justinmk/vim-sneak'

  Plug 'itchyny/lightline.vim'              " bottom bar
  "Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
  Plug 'kyazdani42/nvim-web-devicons' " lua
  "Plug 'ryanoasis/vim-devicons' " vimscript

call plug#end()

source $HOME/.config/nvim/vim/vim-sneak.vim
source $HOME/.config/nvim/vim/autosave.vim
source $HOME/.config/nvim/vim/fzf.vim

