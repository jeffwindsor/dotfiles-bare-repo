
nnoremap <leader>bq :BufferClose<CR>
nnoremap <leader>bh :BufferMovePrevious<CR>
nnoremap <leader>b<Left> :BufferMovePrevious<CR>
nnoremap <leader>bl :BufferMoveNext<CR>
nnoremap <leader>b<Right> :BufferMoveNext<CR>
nnoremap <leader>bn :tabnew<CR>

nnoremap <leader>fa :sav 
nnoremap <leader>fn :tabnew<CR>
nnoremap <leader>fq :BufferClose<CR>
nnoremap <leader>fs :w<CR>
nnoremap <leader>fv :e $MYVIMRC<CR>
nnoremap <leader>pc :source $MYVIMRC<CR> :PlugClean<CR>
nnoremap <leader>pi :source $MYVIMRC<CR> :PlugInstall<CR>

nnoremap <leader>q :q<CR>

nnoremap <leader>rr :source $MYVIMRC<CR>

nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>ws :split<CR>
nnoremap <leader>wh :vertical resize -5<CR>
nnoremap <leader>wj :resize -5<CR>
nnoremap <leader>wk :resize +5<CR>
nnoremap <leader>wL :vertical resize +5<CR>
nnoremap <leader>w<Right> <C-W><C-r> 
nnoremap <leader>w<Left> <C-W><C-R> 
nnoremap <leader>wc :close<CR> 
nnoremap <leader>wo :only<CR> 

