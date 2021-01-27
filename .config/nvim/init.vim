"== Vim ====================================================================
set nocompatible                                    " Disable compatibility to old-time vi
set viminfo+=n~/.cache/nvim/viminfo                 " neo vim
set runtimepath^=~/.viDTreeShowHidden=1uvim/after   " neo vim
let &packpath = &runtimepath                        " neo vim
set autoindent                                      " autoindent
set clipboard+=unnamedplus                          " yank to clipboard
set cursorline                                      " highlight current line
set expandtab
set hlsearch                                        " highlight matches
set ignorecase                                      " Do case insensitive matching
set inccommand=split
set incsearch                                       " search as characters are entered
set lazyredraw                                      " redraw only when we need to.
set nowrap
set number relativenumber                           " hybrid line numbers
set shiftwidth=4
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set mouse=a
if (has("termguicolors"))
 set termguicolors
endif
set wildmenu
set wildmode=longest,list                           " get bash-like tab completions
filetype plugin on
syntax enable                                       " turn on all the magic, including Explorer and syntax highlighting
autocmd BufRead,BufNewFile *.md setlocal spell
let g:netrw_banner = 0
let g:sneak#label = 1
set timeoutlen=2000

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
source $HOME/.config/nvim/plugins.vim

"== Keys =======================================================
let mapleader = "\<Space>"
nnoremap <leader><Space> :Commands<CR>
nnoremap <leader>h :Helptags<CR>
nnoremap <leader>q :q<CR>
inoremap jk <esc>
"Fuzzy List
nnoremap <leader>bb :Buffers<CR>
"Switch Prev
nnoremap <leader>bh :bprevious<CR>
"Switch Next
nnoremap <leader>bl :bnext<CR>
"Save
nnoremap <leader>fs :w<CR>
"Save As
nnoremap <leader>fa :sav 
"Fuzzy Find
nnoremap <leader>fo :Files $HOME<CR>
"Search
nnoremap <leader>ff :rg
"Change Type 
nnoremap <leader>ft :Filetypes<CR>
"Open
nnoremap <leader>fce :e $MYVIMRC<CR>
"Reload
nnoremap <leader>fcr :source $MYVIMRC<CR>
"Splits
nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>ws :split<CR>
"Resize
nnoremap <leader>wh :vertical resize -5<CR>
nnoremap <leader>wj :resize -5<CR>
nnoremap <leader>wk :resize +5<CR>
nnoremap <leader>wL :vertical resize +5<CR>
"Select by Search
nnoremap <leader>ww :Windows<CR> 
"Select By Direction
nnoremap <leader>sh <C-W><C-H> 
nnoremap <leader>sj <C-W><C-J> 
nnoremap <leader>sk <C-W><C-K> 
nnoremap <leader>sl <C-W><C-L> 
"Swap
nnoremap <leader>w<Right> <C-W><C-r> 
nnoremap <leader>w<Left> <C-W><C-R> 
"Close
nnoremap <leader>wq :close<CR> 
nnoremap <leader>wqo :only<CR> 
"Swith Color Schemes
nnoremap <leader>wc :Colors<CR>

"== Theming =============================================== "tender one nord
let g:lightline = { 'colorscheme' : 'tender' }
colorscheme tender


