"== Plugins ===============================================================
call plug#begin('~/.cache/nvim/plugged')
  
  " Themes and Dispay
  Plug 'jacoborus/tender.vim'
  Plug 'morhetz/gruvbox'
  Plug 'rakr/vim-one'
  Plug 'chriskempson/base16-vim'
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'arcticicestudio/nord-vim'
  Plug 'itchyny/lightline.vim'
  Plug 'ap/vim-css-color'

  " Addons
  "Plug 'machakann/vim-highlightedyank'
  Plug 'junegunn/fzf.vim'
  Plug 'unblevable/quick-scope'
  Plug 'justinmk/vim-sneak'
  "Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
  "Plug 'vimwiki/vimwiki'
  Plug 'jeetsukumaran/vim-filebeagle'

  " Code
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "Plug 'frazrepo/vim-rainbow' 
  "Plug 'tpope/vim-commentary'

call plug#end()

source $HOME/.config/nvim/plugin-config-vim-sneak.vim"
source $HOME/.config/nvim/plugin-config-quick-scope.vim"
source $HOME/.config/nvim/plugin-config-which-key.vim"
source $HOME/.config/nvim/plugin-config-fzf.vim"
"== File Beagle ==========================
"g:filebeagle_show_hidden=1
"g:filebeagle_show_line_relativenumbers=1

