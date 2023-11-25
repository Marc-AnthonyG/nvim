--[[
  Really nice guide on lua.
  - https://learnxinyminutes.com/docs/lua/
  - https://neovim.io/doc/user/lua-guide.html or `:help lua-guide`
--]]

-- Set <space> as the leader key (must be done before loading plugin) (`:help mapleader`)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Install `lazy.nvim` plugin manager ]]
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- [[ Configure plugins ]]
require('lazy').setup({
  require 'plugins.init',
  require 'plugins.gitsigns',
  require 'plugins.treesitter',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.autocompletion',
}, {})

require('options')

require('keymaps')

