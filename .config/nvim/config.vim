set nocompatible                                    " Disable compatibility to old-time vi
set viminfo+=n~/.cache/nvim/viminfo                 " neo vim
set runtimepath^=~/.viDTreeShowHidden=1uvim/after   " neo vim
let &packpath = &runtimepath                        " neo vim
set rtp+=/usr/local/opt/fzf

set autoindent                                      " autoindent
set clipboard+=unnamedplus                          " yank to clipboard
set cursorline                                      " highlight current line
set encoding=UTF-8
set expandtab
set hlsearch                                        " highlight matches
set ignorecase                                      " Do case insensitive matching
set inccommand=split
set incsearch                                       " search as characters are entered
set lazyredraw                                      " redraw only when we need to.
set mouse=a
set nowrap
set number relativenumber                           " hybrid line numbers
set shiftwidth=4
set softtabstop=4
set spell
set spelllang=en_us
set splitbelow
set splitright
set tabstop=4
set timeoutlen=2000
set wildmenu
set wildmode=longest,list                           " get bash-like tab completions

if (has("termguicolors"))
  set termguicolors
endif
filetype plugin on
syntax enable                                       " turn on all the magic, including Explorer and syntax highlighting
autocmd BufRead,BufNewFile *.md setlocal spell
let g:netrw_banner = 0
let g:sneak#label = 1

" automatically leave insert mode after 'updatetime' milliseconds of inaction
"au CursorHoldI * stopinsert
