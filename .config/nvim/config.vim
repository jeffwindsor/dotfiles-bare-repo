set nocompatible                                    " Disable compatibility to old-time vi
set viminfo+=n~/.cache/nvim/viminfo                 " neo vim
set runtimepath^=~/.viDTreeShowHidden=1uvim/after   " neo vim
let &packpath = &runtimepath                        " neo vim
set autoindent                                      " autoindent
set clipboard+=unnamedplus                          " yank to clipboard
set cursorline                                      " highlight current line
set expandtab
set hlsearch                                        " highlight matches
set ignorecase                                      " Do case insensitive matching
set inccommand=split
set incsearch                                       " search as characters are entered
set lazyredraw                                      " redraw only when we need to.
set nowrap
set number relativenumber                           " hybrid line numbers
set shiftwidth=4
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set mouse=a
if (has("termguicolors"))
 set termguicolors
endif
set wildmenu
set wildmode=longest,list                           " get bash-like tab completions
filetype plugin on
syntax enable                                       " turn on all the magic, including Explorer and syntax highlighting
autocmd BufRead,BufNewFile *.md setlocal spell
let g:netrw_banner = 0

"== Keys
" Space leader
let mapleader = "\<Space>"

" map escape to rapid jk 
inoremap jk <esc>

