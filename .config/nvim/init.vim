"== Vim ====================================================================
source $HOME/.config/nvim/config.vim

"== Plugins ===============================================================
call plug#begin('~/.cache/nvim/plugged')
  
  "== eye candy
  Plug 'arcticicestudio/nord-vim'
  Plug 'cocopon/iceberg.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'jacoborus/tender.vim'
  Plug 'joshdick/onedark.vim'
  "Plug 'ryanoasis/vim-devicons'

  "== system
  Plug 'airblade/vim-rooter'
  Plug 'jeetsukumaran/vim-filebeagle'
  Plug 'junegunn/fzf.vim'

  "== development
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'ap/vim-css-color'
  " Plug 'cespare/vim-toml'
  Plug 'justinmk/vim-sneak'
  Plug 'tomtom/tcomment_vim'
  "Plug 'rust-lang/rust.vim'
  "Plug 'tpope/vim-surround'
  "Plug 'unblevable/quick-scope'
  "Plug 'dhruvasagar/vim-table-mode'
  "Plug 'frazrepo/vim-rainbow' 

call plug#end()

source $HOME/.config/nvim/plugin-config-vim-sneak.vim"
"source $HOME/.config/nvim/plugin-config-quick-scope.vim"
source $HOME/.config/nvim/plugin-config-fzf.vim"
" source $HOME/.config/nvim/plugin-config-coc.vim"

"== Keys =======================================================
let mapleader = "\<Space>"

nnoremap <leader>q :q<CR>

nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bh :bprevious<CR>
nnoremap <leader>bl :bnext<CR>

nnoremap <leader>fa :sav 
nnoremap <leader>fc :Files $HOME/.config/<CR>
nnoremap <leader>fo :Files $HOME/.config/os/<CR>
nnoremap <leader>ff :Files <CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>fs :w<CR>
nnoremap <leader>ft :Filetypes<CR>
nnoremap <leader>fv :e $MYVIMRC<CR>

nnoremap <leader>pc :PlugClean<CR>
nnoremap <leader>pi :PlugInstall<CR>

nnoremap <leader>rr :source $MYVIMRC<CR>

nnoremap <leader>sc :Commands<CR>
nnoremap <leader>sh :Helptags<CR>
nnoremap <leader>sk :Maps<CR>
nnoremap <leader>sl :Lines<CR>
nnoremap <leader>sm :Marks<CR>
nnoremap <leader>st :Tags<CR>

nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>ws :split<CR>
nnoremap <leader>wh :vertical resize -5<CR>
nnoremap <leader>wj :resize -5<CR>
nnoremap <leader>wk :resize +5<CR>
nnoremap <leader>wL :vertical resize +5<CR>
nnoremap <leader>ww :Windows<CR> 
nnoremap <leader>w<Right> <C-W><C-r> 
nnoremap <leader>w<Left> <C-W><C-R> 
nnoremap <leader>wq :close<CR> 
nnoremap <leader>wqo :only<CR> 

"== Theming ====== "tender onedark nord iceberg
let g:lightline = { 'colorscheme' : 'tender' }
colorscheme iceberg
