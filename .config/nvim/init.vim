"== Vim ====================================================================
source $HOME/.config/nvim/config.vim

"== Plugins ===============================================================
call plug#begin('~/.cache/nvim/plugged')
  
  " Plug 'airblade/vim-rooter'
  Plug 'ap/vim-css-color'
  Plug 'chriskempson/base16-vim'
  " Plug 'dawikur/base16-vim-airline-themes'
  " Plug 'dhruvasagar/vim-table-mode'
  " Plug 'frazrepo/vim-rainbow' 
  Plug 'itchyny/lightline.vim'
  Plug 'jacoborus/tender.vim'
  Plug 'jeetsukumaran/vim-filebeagle'
  Plug 'junegunn/fzf.vim'
  Plug 'justinmk/vim-sneak'
  Plug 'tomtom/tcomment_vim'
  " Plug 'tpope/vim-surround'
  " Plug 'unblevable/quick-scope'

call plug#end()

source $HOME/.config/nvim/plugin-config-vim-sneak.vim"
source $HOME/.config/nvim/plugin-config-quick-scope.vim"
source $HOME/.config/nvim/plugin-config-fzf.vim"

"== Keys =======================================================
let mapleader = "\<Space>"
nnoremap <leader><Space> :Commands<CR>
nnoremap <leader>h :Helptags<CR>
nnoremap <leader>q :q<CR>
inoremap jk <esc>
"Fuzzy List
nnoremap <leader>bb :Buffers<CR>
"Switch Previous
nnoremap <leader>bh :bprevious<CR>
"Switch Next
nnoremap <leader>bl :bnext<CR>
"Save
nnoremap <leader>fs :w<CR>
"Save As
nnoremap <leader>fa :sav 
"Fuzzy Find
nnoremap <leader>fo :Files $PWD <CR>
"Search
nnoremap <leader>ff :Rg
"Fuzzy Change Type 
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
"Fuzzy Select by Search
nnoremap <leader>ww :Windows<CR> 
"Swap
nnoremap <leader>w<Right> <C-W><C-r> 
nnoremap <leader>w<Left> <C-W><C-R> 
"Close
nnoremap <leader>wq :close<CR> 
nnoremap <leader>wqo :only<CR> 
"Fuzzy Swith Color Schemes
nnoremap <leader>wc :Colors<CR>

"== Theming =============================================== "tender one nord
let g:lightline = { 'colorscheme' : 'tender' }
colorscheme tender


