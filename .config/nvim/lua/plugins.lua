local execute = vim.api.nvim_command
local fn = vim.fn

--local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--if fn.empty(fn.glob(install_path)) > 0 then
--  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
--  execute 'packadd packer.nvim'
--end

return require('packer').startup(function()
  -- Packer can manage itself
  use {'wbthomason/packer.nvim', opt = true }

  -- use 'airblade/vim-rooter'
  -- use 'ap/vim-css-color'
  -- use 'dhruvasagar/vim-table-mode'
  -- use 'frazrepo/vim-rainbow' 
  use 'itchyny/lightline.vim'
  --use 'jeetsukumaran/vim-filebeagle'
  --use 'junegunn/fzf.vim'
  -- use 'justinmk/vim-sneak'
  -- use 'tomtom/tcomment_vim'
  -- use 'tpope/vim-surround'
  -- use 'unblevable/quick-scope'
  -- use 'ryanoasis/vim-devicons'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'

  -- use 'cocopon/iceberg.vim'
  use 'jacoborus/tender.vim'
  -- use 'arcticicestudio/nord-vim'
  -- use 'artanikin/vim-synthwave84'
  -- use 'joshdick/onedark.vim'
end)
