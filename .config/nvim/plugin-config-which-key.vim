"== Which Key
"call which_key#register('<Space>', "g:which_key_map")

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Mappings
let g:which_key_map.b = { 'name' : '+buffer' }
nnoremap <silent> <leader>bd :bdelete<CR>
let g:which_key_map.b.d = 'delete buffer'
nnoremap <silent> <leader>bn :bn<CR>
let g:which_key_map.b.n = 'next buffer'
nnoremap <silent> <leader>bp :bp<CR>
let g:which_key_map.b.p = 'previous buffer'

" " . = location of current file
" nnoremap '.  :exe ":FZF " . expand("%:h")<CR>
" " / = /
" nnoremap '/  :e /<C-d>
" " b = buffers
" nnoremap 'b  :Buffers<cr>
" " d = documents
" nnoremap 'd  :FZF ~/Documents/<cr>
" " f = fzf
" nnoremap 'f  :FZF<cr>
" " g = grep (ripgrep)
" nnoremap 'g  :Rg 
" " h = home
" nnoremap 'h  :FZF ~/<cr>
" " n = notes
" nnoremap 'n  :FZF ~/Documents/Notes/<cr>
" " t = tags
" nnoremap 't  :Tags<cr>
" " r = bashrc
" nnoremap 'r  :e ~/.bashrc<cr>
" " v = vimrc
" nnoremap 'v  :e $MYVIMRC<cr>
" " toggle last buffer
" nnoremap ''  :b#<cr>

" nnoremap <silent> <leader>bR :e<CR>
" let g:which_key_map.b.d = ' buffer'
" nnoremap <silent> <leader>en :lnext<CR>
" nnoremap <silent> <leader>ep :lprev<CR>
" nnoremap <silent> <leader>fed :e ~/.vimrc<CR>
" nnoremap <silent> <leader>feR :source ~/.vimrc<CR>
" nnoremap <silent> <leader>ff :e <C-R>=substitute(expand("%:p:h"), $HOME, "~", "")<CR>/
" nnoremap <silent> <leader>fs :w<CR>
" nnoremap <silent> <leader>fS :wa<CR>
" nnoremap <silent> <leader>j= mzgg=G`z
" nnoremap <silent> <leader>qq :qa<CR>
" nnoremap <silent> <leader>qQ :qa!<CR>
" nnoremap <silent> <leader>qs :xa<CR>
" nnoremap <silent> <leader>sc :noh<CR>
" nnoremap <silent> <leader>tn :set number!<CR>
" nnoremap <silent> <leader>tl :set wrap!<CR>
" nnoremap <silent> <leader>w- :sp<CR>
" nnoremap <silent> <leader>w/ :vsp<CR>
" nnoremap <silent> <leader>w= <C-W>=
" nnoremap <silent> <leader>wd :q<CR>
" nnoremap <silent> <leader>wh <C-W>h
" nnoremap <silent> <leader>wj <C-W>j
" nnoremap <silent> <leader>wk <C-W>k
" nnoremap <silent> <leader>wl <C-W>l
" nnoremap <silent> <leader>ws <C-W>s
" nnoremap <silent> <leader>wv <C-W>v
" nnoremap <silent> <leader>ww <C-W><C-W>
" " fzf
" nnoremap <silent> <leader>f :FZF<cr>

" let g:which_key_map.b = {
"     \ 'name'    : '+buffers',
"     \ 'n'       : [':bn'    , 'next'], 
"     \ 'p'       : [':bp'    , 'previous'], 
"     \ 'R'       : [':e'     , 'Read'], 
"     \ 's'       : [':w'     , 'save'],
"     \ 'q'       : [':wq'    , 'save and quit'], 
"     \ }

" let g:which_key_map.w = {
"     \ 'name'    : '+windows',
"     \ '\'       : [':vsp', 'vertical split'], 
"     \ '-'       : [':bp', 'horizontal split'], 
"     \ 'h'       : ['<C-W>h', 'jump left'], 
"     \ 'l'       : ['<C-W>l', 'jump right'], 
"     \ 'j'       : ['<C-W>j', 'jump down'], 
"     \ 'k'       : ['<C-W>k', 'jump up'], 
"     \ 'H'       : ['<C-W>H', 'move left'], 
"     \ 'L'       : ['<C-W>L', 'move right'], 
"     \ 'J'       : ['<C-W>J', 'move down'], 
"     \ 'K'       : ['<C-W>K', 'move up'], 
"     \ }

