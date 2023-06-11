function ColorMyPencils(color)
  require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true,
    term_colors = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        harpoon = true,
        mason = true,
        treesitter = true,
    },
  })

	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

end

ColorMyPencils()
