"== Vim ====================================================================
source $HOME/.config/nvim/config.vim

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

  Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() }}
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'

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


