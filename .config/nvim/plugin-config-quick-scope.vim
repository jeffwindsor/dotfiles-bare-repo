"== QuickScope ===========================================================
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_max_chars=150

" Colors: set this before color scheme
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#FFC107' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#FFB300' gui=underline ctermfg=81 cterm=underline
augroup END
