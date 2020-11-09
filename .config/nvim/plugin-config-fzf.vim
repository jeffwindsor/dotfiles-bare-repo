set rtp+=/usr/local/opt/fzf

if has('nvim') && !exists('g:fzf_layout')
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
endif
nnoremap <silent> <C-f> :Files $HOME/.config<CR>
