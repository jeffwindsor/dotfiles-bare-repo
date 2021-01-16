" map escape to rapid jk 
inoremap jk <esc>

"== Mappings: SpaceMacs ================================================== 
let mapleader = "\<Space>"

"Commands
nnoremap <leader><Space> :Commands<CR>
nnoremap <leader>h :Helptags<CR>
nnoremap <leader>qq :qq<CR>

"Configs
nnoremap <leader>ce :e $MYVIMRC<CR>
nnoremap <leader>cs :source $MYVIMRC<CR>
">Swith Color Schemes
nnoremap <leader>cc :Colors<CR>

"Buffers
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bh :bprevious<CR>
nnoremap <leader>bl :bnext<CR>

"Files
">Save
nnoremap <leader>fs :w<CR>
">Save As
nnoremap <leader>fa :sav 
">Fuzzy Find
nnoremap <leader>fo :Files<CR>
">Search
nnoremap <leader>fs :rg
">Change Highlighting
nnoremap <leader>ft :Filetypes<CR>

"Windows
nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>ws :split<CR>
">Resize Height
nnoremap <leader>w+ :resize +5<CR>
nnoremap <leader>w- :resize -5<CR>
">Resize Width
nnoremap <leader>w> :vertical resize +5<CR>
nnoremap <leader>w< :vertical resize -5<CR>
">Select by Search
nnoremap <leader>ww :Windows<CR> 
">Select By Direction
nnoremap <leader>wh <C-W><C-H> 
nnoremap <leader>wj <C-W><C-J> 
nnoremap <leader>wk <C-W><C-K> 
nnoremap <leader>wl <C-W><C-L> 
">Swap Forward
nnoremap <leader>w<Right> <C-W><C-r> 
">Swap Backward
nnoremap <leader>w<Left> <C-W><C-R> 
">Close
nnoremap <leader>wq :close[!]<CR> 
