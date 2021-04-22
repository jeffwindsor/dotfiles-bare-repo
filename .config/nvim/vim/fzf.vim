set rtp+=/usr/local/opt/fzf

if has('nvim') && !exists('g:fzf_layout')
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
endif

nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>fc :Files $HOME/.config/<CR>
nnoremap <leader>ff :Files $HOME/src/<CR>
nnoremap <leader>fo :Files $HOME/.config/os/<CR>

nnoremap <leader>sfh :History<CR>
nnoremap <leader>sft :Filetypes<CR>
nnoremap <leader>sa :Commands<CR>
nnoremap <leader>sc :Colors<CR>
nnoremap <leader>sh :Helptags<CR>
nnoremap <leader>sk :Maps<CR>
nnoremap <leader>sl :Lines<CR>
nnoremap <leader>sm :Marks<CR>
nnoremap <leader>st :Tags<CR>
nnoremap <leader>sw :Rg<CR>
nnoremap <leader>ww :Windows<CR> 
