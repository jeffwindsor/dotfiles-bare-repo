"== Mappings: SpaceMacs ================================================== 
let mapleader = "\<Space>"
nnoremap <leader><TAB> <C-^>
nnoremap <leader>bb :buffers<CR>:buffer<Space>
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bR :e<CR>
nnoremap <leader>en :lnext<CR>
nnoremap <leader>ep :lprev<CR>
nnoremap <leader>fed :e ~/.vimrc<CR>
nnoremap <leader>feR :source ~/.vimrc<CR>
nnoremap <leader>ff :e <C-R>=substitute(expand("%:p:h"), $HOME, "~", "")<CR>/
nnoremap <leader>fs :w<CR>
nnoremap <leader>fS :wa<CR>
nnoremap <leader>j= mzgg=G`z
nnoremap <leader>qq :qa<CR>
nnoremap <leader>qQ :qa!<CR>
nnoremap <leader>qs :xa<CR>
nnoremap <leader>sc :noh<CR>
nnoremap <leader>tn :set number!<CR>
nnoremap <leader>tl :set wrap!<CR>
nnoremap <leader>w- :sp<CR>
nnoremap <leader>w/ :vsp<CR>
nnoremap <leader>w= <C-W>=
nnoremap <leader>wd :q<CR>
nnoremap <leader>wh <C-W>h
nnoremap <leader>wj <C-W>j
nnoremap <leader>wk <C-W>k
nnoremap <leader>wl <C-W>l
nnoremap <leader>ws <C-W>s
nnoremap <leader>wv <C-W>v
nnoremap <leader>ww <C-W><C-W>
" fzf
nnoremap <silent> <leader>f :FZF<cr>
