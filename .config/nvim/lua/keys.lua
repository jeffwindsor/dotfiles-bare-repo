
vim.g.mapleader = "\<Space>"

-- copy paste 
--vnoremap <leader>p "_dP
--nmap ,p "0p
--nmap ,P "0P

--                       <mode> <keys>  <actions>   <options>
vim.api.nvim_set_keymap( 'n',   ';',    ':',        {noremap = true}) -- do not need shift to enter command mode
vim.api.nvim_set_keymap( 'v',   ';',    ':',        {noremap = true}) -- do not need shift to enter command mode

-- window movement
vim.api.nvim_set_keymap( 'n',   '<leader>',         ':',        {noremap = true}) 
vim.api.nvim_set_keymap( 'n',   '<leader>',         ':',        {noremap = true}) 
vim.api.nvim_set_keymap( 'n',   '<leader>',         ':',        {noremap = true}) 
vim.api.nvim_set_keymap( 'n',   '<leader>',         ':',        {noremap = true}) 

vim.api.nvim_set_keymap( 'n',   '<leader><left>',   '<C-W><left>',      {noremap = true}) 
vim.api.nvim_set_keymap( 'n',   '<leader><right>',  '<C-W><right>',     {noremap = true}) 
vim.api.nvim_set_keymap( 'n',   '<leader><up>',     '<C-W><up>',        {noremap = true}) 
vim.api.nvim_set_keymap( 'n',   '<leader><down>',   '<C-W><down>',      {noremap = true}) 

-- Leader maps
vim.api.nvim_set_keymap( 'n',   '<leader>bn',       ':tabnew<CR>',	{noremap = true})
vim.api.nvim_set_keymap( 'n',   '<leader>ba',       ':sav ',    	{noremap = true})
vim.api.nvim_set_keymap( 'n',   '<leader>bs',       ':w<CR>',	    {noremap = true})
vim.api.nvim_set_keymap( 'n',   '<leader>pc',       ':source $MYVIMRC<CR> :PlugClean<CR>',	    {noremap = true})
vim.api.nvim_set_keymap( 'n',   '<leader>pi',       ':source $MYVIMRC<CR> :PlugInstall<CR>',	{noremap = true})
vim.api.nvim_set_keymap( 'n',   '<leader>q',        ':q<CR>',	                                {noremap = true})
vim.api.nvim_set_keymap( 'n',   '<leader>rr',       ':source $MYVIMRC<CR>',                 	{noremap = true})
vim.api.nvim_set_keymap( 'n',   '<leader>wL',       ':vertical resize +5<CR>',	                {noremap = true})
vim.api.nvim_set_keymap( 'n',   '<leader>wc',       ':close<CR> ',	                            {noremap = true})
vim.api.nvim_set_keymap( 'n',   '<leader>wh',       ':vertical resize -5<CR>',	{noremap = true})
vim.api.nvim_set_keymap( 'n',   '<leader>wj',       ':resize -5<CR>',	{noremap = true})
vim.api.nvim_set_keymap( 'n',   '<leader>wk',       ':resize +5<CR>',	{noremap = true})
vim.api.nvim_set_keymap( 'n',   '<leader>wo',       ':only<CR> ',	{noremap = true})
vim.api.nvim_set_keymap( 'n',   '<leader>wq',       ':close<CR> ',	{noremap = true})
vim.api.nvim_set_keymap( 'n',   '<leader>ws',       ':split<CR>',	{noremap = true})
vim.api.nvim_set_keymap( 'n',   '<leader>wv',       ':vsplit<CR>',	{noremap = true})
