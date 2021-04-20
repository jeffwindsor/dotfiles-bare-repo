let mapleader = "\<Space>"

nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bb :BufferClose<CR>
nnoremap <leader>bh :BufferMovePrevious<CR>
nnoremap <leader>bl :BufferMoveNext<CR>
nnoremap <leader>b<Left> :BufferMovePrevious<CR>
nnoremap <leader>b<Right> :BufferMoveNext<CR>
nnoremap <leader>bn :tabnew<CR>
nnoremap <leader>fa :sav 
nnoremap <leader>fc :Files $HOME/.config/<CR>
nnoremap <leader>ff :Files <CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>fn :tabnew<CR>
nnoremap <leader>fo :Files $HOME/.config/os/<CR>
nnoremap <leader>fs :w<CR>
nnoremap <leader>ft :Filetypes<CR>
nnoremap <leader>fv :e $MYVIMRC<CR>
nnoremap <leader>pc :w<CR> :source $MYVIMRC<CR> :PlugClean<CR>
nnoremap <leader>pi :w<CR> :source $MYVIMRC<CR> :PlugInstall<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>rr :source $MYVIMRC<CR>
nnoremap <leader>sc :Commands<CR>
nnoremap <leader>sh :Helptags<CR>
nnoremap <leader>sk :Maps<CR>
nnoremap <leader>sl :Lines<CR>
nnoremap <leader>sm :Marks<CR>
nnoremap <leader>st :Tags<CR>
nnoremap <leader>sw :Rg<CR>
nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>ws :split<CR>
nnoremap <leader>wh :vertical resize -5<CR>
nnoremap <leader>wj :resize -5<CR>
nnoremap <leader>wk :resize +5<CR>
nnoremap <leader>wL :vertical resize +5<CR>
nnoremap <leader>ww :Windows<CR> 
nnoremap <leader>w<Right> <C-W><C-r> 
nnoremap <leader>w<Left> <C-W><C-R> 
nnoremap <leader>wc :close<CR> 
nnoremap <leader>wo :only<CR> 
