vim.opt.compatible=false                                    -- Disable compatibility to old-time vi
-- vim.opt.viminfo+=n~/.cache/nvim/viminfo                  -- neo vim
-- set runtimepath^=~/.viDTreeShowHidden=1uvim/after        -- neo vim
-- let &packpath = &runtimepath                             -- neo vim
-- set rtp+=/usr/local/opt/fzf

cmd 'filetype plugin on'
cmd 'syntax enable'                                         -- turn on all the magic, including Explorer and syntax highlighting

vim.opt.autoindent=true                                     -- autoindent
vim.opt.clipboard = vim.opt.clipboard + :'unnamedplus'      -- yank to clipboard
vim.opt.cursorline=true                                     -- highlight current line
vim.opt.encoding='UTF-8'
vim.opt.expandtab=true
vim.opt.fileencoding='utf-8'                                -- The encoding written to file
vim.opt.hidden=true                                         -- Required to keep multiple buffers open multiple buffers
vim.opt.hlsearch=true                                       -- highlight matches
vim.opt.ignorecase=true                                     -- Do case insensitive matching
vim.opt.inccommand='split'
vim.opt.incsearch=true                                      -- search as characters are entered
vim.opt.lazyredraw=true                                     -- redraw only when we need to.
vim.opt.mouse='a'
vim.opt.number relativenumber                               -- hybrid line numbers
vim.opt.ruler=true             			                    -- Show the cursor position all the time
vim.opt.shiftwidth=4
vim.opt.smartindent=true                                    -- Makes indenting smart
vim.opt.smarttab=true                                       -- Makes tabbing smarter will realize you have 2 vs 4
vim.opt.softtabstop=4
vim.opt.spell=true
vim.opt.spelllang='en_us'
vim.opt.splitbelow=true
vim.opt.splitright=true
vim.opt.t_Co=256                                            -- Support 256 colors
vim.opt.tabstop=4
vim.opt.timeoutlen=2000
vim.opt.updatetime=300                                      -- Faster completion
vim.opt.wildmenu=true
vim.opt.wildmode='longest,list'                             -- get bash-like tab completions
vim.opt.wrap=false
vim.opt.termguicolors=true

-- autocmd BufRead,BufNewFile *.md setlocal spell
vim.g['netrw_banner'] = 0
vim.g['sneak#label'] = 1
