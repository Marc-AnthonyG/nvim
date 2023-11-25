
-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

vim.o.hlsearch = false -- Set highlight on search

vim.o.nu = true
vim.wo.relativenumber = true


vim.o.colorcolumn = "80"


vim.o.mouse = 'a' -- Enable mouse mode

vim.o.clipboard = 'unnamedplus' -- sync clipboard to OS See `:help 'clipboard'`

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 50
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

vim.o.termguicolors = true

