"== Vim ====================================================================
source $HOME/.config/nvim/config.vim

"== Plugins ===============================================================
call plug#begin('~/.cache/nvim/plugged')
  
  Plug 'airblade/vim-rooter'
  Plug 'ap/vim-css-color'
  "Plug 'arcticicestudio/nord-vim'
  "Plug 'artanikin/vim-synthwave84'
  Plug 'cocopon/iceberg.vim'
  " Plug 'dhruvasagar/vim-table-mode'
  " Plug 'frazrepo/vim-rainbow' 
  Plug 'itchyny/lightline.vim'
  Plug 'jacoborus/tender.vim'
  Plug 'jeetsukumaran/vim-filebeagle'
  "Plug 'joshdick/onedark.vim'
  Plug 'junegunn/fzf.vim'
  Plug 'justinmk/vim-sneak'
  Plug 'tomtom/tcomment_vim'
  " Plug 'tpope/vim-surround'
  " Plug 'unblevable/quick-scope'
  " Plug 'ryanoasis/vim-devicons'

  "== LUA NVIM 0.5+ ============================================================================
  " Plug 'nvim-lua/completion-nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim' 
  Plug 'nvim-lua/lsp_extensions.nvim' 

call plug#end()

source $HOME/.config/nvim/plugin-config-vim-sneak.vim"
"source $HOME/.config/nvim/plugin-config-quick-scope.vim"
source $HOME/.config/nvim/plugin-config-fzf.vim"

"== Keys =======================================================
let mapleader = "\<Space>"
nnoremap <leader><Space> :Commands<CR>
nnoremap <leader>h :Helptags<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>m :Maps<CR>
inoremap jk <esc>
"
"Buffers
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bh :bprevious<CR>
nnoremap <leader>bl :bnext<CR>

" Config
nnoremap <leader>ce :e $MYVIMRC<CR>
nnoremap <leader>cr :source $MYVIMRC<CR>

"Files
nnoremap <leader>fs :w<CR>
nnoremap <leader>fa :sav 
nnoremap <leader>ff :Files <C-R>=expand('%:h')<CR><CR>
nnoremap <leader>fr :Rg
nnoremap <leader>ft :Filetypes<CR>

" Plugs 
nnoremap <leader>pc :PlugClean<CR>
nnoremap <leader>pi :PlugInstall<CR>

"Splits
nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>ws :split<CR>
"Resize
nnoremap <leader>wh :vertical resize -5<CR>
nnoremap <leader>wj :resize -5<CR>
nnoremap <leader>wk :resize +5<CR>
nnoremap <leader>wL :vertical resize +5<CR>
"Fuzzy Select by Search
nnoremap <leader>ww :Windows<CR> 
"Swap
nnoremap <leader>w<Right> <C-W><C-r> 
nnoremap <leader>w<Left> <C-W><C-R> 
"Close
nnoremap <leader>wq :close<CR> 
nnoremap <leader>wqo :only<CR> 
"Fuzzy Swith Color Schemes
nnoremap <leader>wc :Colors<CR>

"== Theming =============================================== "tender onedark nord synthwave84 iceberg
let g:lightline = { 'colorscheme' : 'iceberg' }
colorscheme iceberg


