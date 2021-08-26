set nocompatible                                    " Disable compatibility to old-time vi

" ===== NEOVIM ============================
set viminfo+=n~/.cache/nvim/viminfo                 " neo vim
set runtimepath^=~/.viDTreeShowHidden=1uvim/after   " neo vim
let &packpath = &runtimepath                        " neo vim

" ===== SETS ==============================
filetype plugin on
syntax enable                                       " turn on all the magic, including Explorer and syntax highlighting

set autoindent                                      " autoindent
set clipboard+=unnamedplus                          " yank to clipboard
set cursorline                                      " highlight current line
set encoding=UTF-8
set expandtab
set fileencoding=utf-8                  " The encoding written to file
set hidden                                          " Required to keep multiple buffers open multiple buffers
set hlsearch                                        " highlight matches
set ignorecase                                      " Do case insensitive matching
set inccommand=split
set incsearch                                       " search as characters are entered
set lazyredraw                                      " redraw only when we need to.
set mouse=a
set nowrap
set number relativenumber                           " hybrid line numbers
set ruler              			            " Show the cursor position all the time
set shiftwidth=4
set smartindent                         " Makes indenting smart
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set softtabstop=4
set spell
set spelllang=en_us
set splitbelow
set splitright
set tabstop=4
set timeoutlen=2000
set updatetime=300                      " Faster completion
set wildmenu
set wildmode=longest,list                           " get bash-like tab completions
set t_Co=256

" ===== PLUGS =============================
call plug#begin('~/.cache/nvim/plugged')
  
 " themes
  Plug 'arcticicestudio/nord-vim'
  Plug 'ayu-theme/ayu-vim'
  Plug 'cocopon/iceberg.vim'
  Plug 'jacoborus/tender.vim'
  Plug 'joshdick/onedark.vim'
  Plug 'tomasr/molokai'
  
  " decorations
  "Plug 'itchyny/lightline.vim'              " bottom bar
  Plug 'famiu/feline.nvim'
  Plug 'kyazdani42/nvim-web-devicons' " lua
  Plug 'ryanoasis/vim-devicons' " vimscript

  " system
  Plug '907th/vim-auto-save'                " Auto Save
  Plug 'airblade/vim-rooter'                " current directory moves with file
  Plug 'ap/vim-css-color'                   " highlight hex colors in actual color
  Plug 'jeetsukumaran/vim-filebeagle'       " simple file browser
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'                   " fuzzy magic goodness
  Plug 'junegunn/gv.vim'                    " git browser
  Plug 'junegunn/vim-peekaboo'              " show my registers, fool... 
  Plug 'romgrk/barbar.nvim'                 " tab bar (lua)
  Plug 'justinmk/vim-sneak'

  " development
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'

call plug#end()

source $HOME/.config/nvim/vim/vim-sneak.vim
source $HOME/.config/nvim/vim/autosave.vim
source $HOME/.config/nvim/vim/fzf.vim

lua << EOF
  require'nvim-web-devicons'.get_icons()
  require('feline').setup({
        preset = 'noicon'
    })
EOF

" ===== EYE CANDY =========================
colorscheme tender

" ===== KEYS ==============================
let mapleader = "\<Space>"

" do not need shift to enter command mode
nnoremap ; :
vnoremap ; :

" Yank act like other capital letters
nnoremap Y y$

" Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv

" Leader maps
nnoremap <leader>pc :source $MYVIMRC<CR> :PlugClean<CR>
nnoremap <leader>pi :source $MYVIMRC<CR> :PlugInstall<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>rr :source $MYVIMRC<CR>

nnoremap <leader>b<Left> :BufferMovePrevious<CR>
nnoremap <leader>b<Right> :BufferMoveNext<CR>
nnoremap <leader>ba :sav 
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bc :BufferClose<CR>
nnoremap <leader>bh :BufferMovePrevious<CR>
nnoremap <leader>bl :BufferMoveNext<CR>
nnoremap <leader>bn :tabnew<CR>
nnoremap <leader>bs :w<CR>

nnoremap <leader><leader> :Files <CR>
nnoremap <leader>fc :Files $HOME/.config/<CR>
nnoremap <leader>ff :Files $HOME<CR>
nnoremap <leader>fo :Files $HOME/.config/os/<CR>
nnoremap <leader>fs :Files $HOME/src/<CR>

nnoremap <leader>sa :Commands<CR>
nnoremap <leader>sc :Colors<CR>
nnoremap <leader>sft :Filetypes<CR>
nnoremap <leader>sh :History<CR>
nnoremap <leader>sht :Helptags<CR>
nnoremap <leader>sk :Maps<CR>
nnoremap <leader>sl :Lines<CR>
nnoremap <leader>sm :Marks<CR>
nnoremap <leader>ss :Rg<CR>
nnoremap <leader>st :Tags<CR>
nnoremap <leader>sw :Windows<CR> 

nnoremap <leader>w<down> <C-W><down> 
nnoremap <leader>w<left> <C-W><left> 
nnoremap <leader>w<right> <C-W><right> 
nnoremap <leader>w<up> <C-W><up> 
nnoremap <leader>wL :vertical resize +5<CR>
nnoremap <leader>wc :close<CR> 
nnoremap <leader>wh :vertical resize -5<CR>
nnoremap <leader>wj :resize -5<CR>
nnoremap <leader>wk :resize +5<CR>
nnoremap <leader>wo :only<CR> 
nnoremap <leader>wq :close<CR> 
nnoremap <leader>ws :split<CR>
nnoremap <leader>wv :vsplit<CR>

