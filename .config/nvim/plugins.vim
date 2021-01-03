"== Plugins ===============================================================
call plug#begin('~/.cache/nvim/plugged')
  
  " Themes and Dispay
  Plug 'jacoborus/tender.vim'
  Plug 'morhetz/gruvbox'
  Plug 'rakr/vim-one'
  Plug 'arcticicestudio/nord-vim'
  Plug 'itchyny/lightline.vim'
  Plug 'ap/vim-css-color'

  " Addons
  "Plug 'machakann/vim-highlightedyank'
  Plug 'junegunn/fzf.vim'
  Plug 'unblevable/quick-scope'
  Plug 'justinmk/vim-sneak'
  Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
  "Plug 'vimwiki/vimwiki'
  Plug 'jeetsukumaran/vim-filebeagle'

  " Code
  Plug 'frazrepo/vim-rainbow' 
  Plug 'tpope/vim-commentary'

call plug#end()

source $HOME/.config/nvim/plugin-config-vim-sneak.vim"
source $HOME/.config/nvim/plugin-config-quick-scope.vim"
source $HOME/.config/nvim/plugin-config-which-key.vim"
source $HOME/.config/nvim/plugin-config-fzf.vim"

