
let mapleader = "\<Space>"

" do not need shift to enter command mode
nnoremap ; :
vnoremap ; :

" Yank act like other capital letters
nnoremap Y y$

" Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv


" window movement
nnoremap <leader><left> <C-W><left> 
nnoremap <leader><right> <C-W><right> 
nnoremap <leader><up> <C-W><up> 
nnoremap <leader><down> <C-W><down> 

" Leader maps
nnoremap <leader>bn :tabnew<CR>
nnoremap <leader>ba :sav 
nnoremap <leader>bs :w<CR>
nnoremap <leader>pc :source $MYVIMRC<CR> :PlugClean<CR>
nnoremap <leader>pi :source $MYVIMRC<CR> :PlugInstall<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>rr :source $MYVIMRC<CR>
nnoremap <leader>wL :vertical resize +5<CR>
nnoremap <leader>wc :close<CR> 
nnoremap <leader>wh :vertical resize -5<CR>
nnoremap <leader>wj :resize -5<CR>
nnoremap <leader>wk :resize +5<CR>
nnoremap <leader>wo :only<CR> 
nnoremap <leader>wq :close<CR> 
nnoremap <leader>ws :split<CR>
nnoremap <leader>wv :vsplit<CR>

nnoremap <leader>b<Left> :BufferMovePrevious<CR>
nnoremap <leader>b<Right> :BufferMoveNext<CR>
nnoremap <leader>bc :BufferClose<CR>
nnoremap <leader>bh :BufferMovePrevious<CR>
nnoremap <leader>bl :BufferMoveNext<CR>
nnoremap <leader>bb :Buffers<CR>

nnoremap <leader><leader> :Files <CR>
nnoremap <leader>ff :Files <CR>
nnoremap <leader>fc :Files $HOME/.config/<CR>
nnoremap <leader>fs :Files $HOME/src/<CR>
nnoremap <leader>fo :Files $HOME/.config/os/<CR>

nnoremap <leader>sh :History<CR>
nnoremap <leader>sft :Filetypes<CR>
nnoremap <leader>sa :Commands<CR>
nnoremap <leader>sc :Colors<CR>
nnoremap <leader>sht :Helptags<CR>
nnoremap <leader>sk :Maps<CR>
nnoremap <leader>sl :Lines<CR>
nnoremap <leader>sm :Marks<CR>
nnoremap <leader>st :Tags<CR>
nnoremap <leader>ss :Rg<CR>
nnoremap <leader>sw :Windows<CR> 
