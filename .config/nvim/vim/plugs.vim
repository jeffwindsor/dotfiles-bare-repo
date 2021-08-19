call plug#begin('~/.cache/nvim/plugged')
  
  Plug '907th/vim-auto-save'                " Auto Save
  Plug 'airblade/vim-rooter'                " current directory moves with file
  Plug 'ap/vim-css-color'                   " highlight hex colors in actual color
  "Plug 'drmingdrmer/vim-tabbar'
  "Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
  "Plug 'godlygeek/tabular'                  " align text
  Plug 'itchyny/lightline.vim'              " bottom bar
  "Plug 'jeetsukumaran/vim-filebeagle'       " simple file browser
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'                   " fuzzy magic goodness
  "Plug 'junegunn/gv.vim'                    " git browser
  Plug 'junegunn/vim-peekaboo'              " show my registers, fool... 
  Plug 'kyazdani42/nvim-web-devicons'       " icons for bar bar
  Plug 'romgrk/barbar.nvim'                 " tab bar (lua)
  "Plug 'sheerun/vim-polyglot'               " syntax highlighting to rule them all
  "Plug 'tomtom/tcomment_vim'
  "Plug 'tpope/vim-fugitive'                 " git integration 
  "Plug 'tpope/vim-markdown'
  "Plug 'tpope/vim-surround'

  "Plug 'neovim/nvim-lspconfig'
  "Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

"Plug 'APZelos/blamer.nvim'                " git lens / blame
  "Plug 'dense-analysis/ale'                 " linter
  "Plug 'dyng/ctrlsf.vim'
  "Plug 'honza/vim-snippets'
  Plug 'justinmk/vim-sneak'
  "Plug 'puremourning/vimspector'            " debugger
  "Plug 'vimwiki/vimwiki'                    " well... wiki

 " lsp (need configs)
" Plug 'neovimhaskell/haskell-vim'          " haskell
 "Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
 "Plug 'nvim-treesitter/playground'
 "Plug 'hrsh7th/nvim-compe'
 "Plug 'kosayoda/nvim-lightbulb'            " lightbulb like suggestions
 "Plug 'glepnir/lspsaga.nvim'
 "Plug 'gfanto/fzf-lsp.nvim'

 " themes
  Plug 'arcticicestudio/nord-vim'
  Plug 'ayu-theme/ayu-vim'
  Plug 'cocopon/iceberg.vim'
  Plug 'jacoborus/tender.vim'
  Plug 'joshdick/onedark.vim'
  Plug 'tomasr/molokai'

call plug#end()

source $HOME/.config/nvim/vim/vim-sneak.vim
source $HOME/.config/nvim/vim/autosave.vim
source $HOME/.config/nvim/vim/fzf.vim

