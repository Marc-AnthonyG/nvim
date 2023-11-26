-- [[
-- Add plugins that doesn't need configuration here
-- ]]
return {
  'ThePrimeagen/vim-be-good',

  -- Git related plugins
  'tpope/vim-fugitive', -- Integration with git
  'tpope/vim-rhubarb',  -- Allow completion from git information such as issue etc.

  'tpope/vim-sleuth',   -- Basicly copy indentation method of the current working directory

  { 'folke/which-key.nvim',                opts = {} },

  -- the line you can see at the bottom with the indication of the mode
  {
    'nvim-lualine/lualine.nvim', -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        theme = 'catppuccin',
        component_separators = '|',
        section_separators = '',
      },
    },
  },

  --Add indentation to blank line See `:help ibl`
  { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim',               opts = {} },

}
