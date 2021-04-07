inoremap = function(key, command) noremap('i', key, command) end
nnoremap = function(key, command) noremap('n', key, command) end
noremap = function(mode, key, command) vim.api.nvim_set_keymap(mode, key, command, { noremap = true, silent = true }) end

vim.g.mapleader = ' '


inoremap('jk', '<esc>')
nnoremap('<leader><Space>', ':Commands<CR>')
nnoremap('<leader>h', ':Helptags<CR>')
nnoremap('<leader>q', ':q<CR>')
nnoremap('<leader>bb', ':Buffers<CR>')
nnoremap('<leader>bh', ':bprevious<CR>')
nnoremap('<leader>bl', ':bnext<CR>')
nnoremap('<leader>fs', ':w<CR>')
nnoremap('<leader>fa', ':sav ')
nnoremap('<leader>ff', ":Files <C-R>=expand('%:h')<CR><CR>")
nnoremap('<leader>ft', ':Filetypes<CR>')
nnoremap('<leader>ce', ':e $MYVIMRC<CR>')
nnoremap('<leader>cr', ':source $MYVIMRC<CR>')
nnoremap('<leader>wv', ':vsplit<CR>')
nnoremap('<leader>ws', ':split<CR>')
nnoremap('<leader>wh', ':vertical resize -5<CR>')
nnoremap('<leader>wj', ':resize -5<CR>')
nnoremap('<leader>wk', ':resize +5<CR>')
nnoremap('<leader>wL', ':vertical resize +5<CR>')
nnoremap('<leader>ww', ':Windows<CR> ')
nnoremap('<leader>w<Right>', '<C-W><C-r> ')
nnoremap('<leader>w<Left>', '<C-W><C-R> ')
nnoremap('<leader>wq', ':close<CR> ')
nnoremap('<leader>wqo', ':only<CR> ')
nnoremap('<leader>wc', ':Colors<CR>')
