"== Plugins ===============================================================
call plug#begin('~/.cache/nvim/plugged')
  
  " Bling
  Plug 'jacoborus/tender.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'frazrepo/vim-rainbow' 

  " Hammers
  Plug 'tpope/vim-surround'
  Plug 'tomtom/tcomment_vim'
  Plug 'jeetsukumaran/vim-filebeagle'
  Plug 'junegunn/fzf.vim'

  " Experimental
  Plug 'unblevable/quick-scope'
  Plug 'justinmk/vim-sneak'
  Plug 'dhruvasagar/vim-table-mode'
  Plug 'ap/vim-css-color'

call plug#end()

source $HOME/.config/nvim/plugin-config-vim-sneak.vim"
source $HOME/.config/nvim/plugin-config-quick-scope.vim"
"source $HOME/.config/nvim/plugin-config-which-key.vim"
source $HOME/.config/nvim/plugin-config-fzf.vim"
