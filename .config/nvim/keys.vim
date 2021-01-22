"== Commands =======================================================
let mapleader = "\<Space>"
nnoremap <leader><Space> :Commands<CR>
nnoremap <leader>h :Helptags<CR>
nnoremap <leader>q :q<CR>
inoremap jk <esc>

"== Configs =======================================================
"Open
nnoremap <leader>ce :e $MYVIMRC<CR>
"Reload
nnoremap <leader>cr :source $MYVIMRC<CR>
"Swith Color Schemes
nnoremap <leader>cc :Colors<CR>

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
"Change Highlighting
nnoremap <leader>ft :Filetypes<CR>

"== Windows =======================================================
nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>wh :split<CR>
"Resize
nnoremap <leader>wH :vertical resize -5<CR>
nnoremap <leader>wJ :resize -5<CR>
nnoremap <leader>wK :resize +5<CR>
nnoremap <leader>wL :vertical resize +5<CR>
"Select by Search
nnoremap <leader>ww :Windows<CR> 
"Select By Direction
nnoremap <leader>wh <C-W><C-H> 
nnoremap <leader>wj <C-W><C-J> 
nnoremap <leader>wk <C-W><C-K> 
nnoremap <leader>wl <C-W><C-L> 
"Swap Forward
nnoremap <leader>w<Right> <C-W><C-r> 
"Swap Backward
nnoremap <leader>w<Left> <C-W><C-R> 
"Close
nnoremap <leader>wq :close<CR> 
nnoremap <leader>wqo :only<CR> 

