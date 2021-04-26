
" copy paste 
vnoremap <leader>p "_dP
nmap ,p "0p
nmap ,P "0P

" do not need shift to enter command mode
nnoremap ; :
vnoremap ; :

" surround word with backticks, useful in markdown
nmap <leader>` ysiw`

" window movement
nnoremap <leader><left> <C-W><left> 
nnoremap <leader><right> <C-W><right> 
nnoremap <leader><up> <C-W><up> 
nnoremap <leader><down> <C-W><down> 

" Leader maps
nnoremap <leader>b<Left> :BufferMovePrevious<CR>
nnoremap <leader>b<Right> :BufferMoveNext<CR>
nnoremap <leader>bc :BufferClose<CR>
nnoremap <leader>bh :BufferMovePrevious<CR>
nnoremap <leader>bl :BufferMoveNext<CR>
nnoremap <leader>bn :tabnew<CR>
nnoremap <leader>fa :sav 
nnoremap <leader>fn :tabnew<CR>
nnoremap <leader>fs :w<CR>
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
