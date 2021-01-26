"== Commands =======================================================
let mapleader = "\<Space>"
nnoremap <leader><Space> :Commands<CR>
nnoremap <leader>h :Helptags<CR>
nnoremap <leader>q :q<CR>
inoremap jk <esc>

"== Configs =======================================================

"== Buffers =======================================================
"Fuzzy List
nnoremap <leader>bb :Buffers<CR>
"Switch Prev
nnoremap <leader>bh :bprevious<CR>
"Switch Next
nnoremap <leader>bl :bnext<CR>

"== Files =======================================================
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

"== Windows =======================================================
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

