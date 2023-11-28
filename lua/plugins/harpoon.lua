return{
    'ThePrimeagen/harpoon',
    config = function ()
        vim.api.nvim_set_keymap('n', '<C-a>', '<Nop>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<C-s>', '<Nop>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<C-d>', '<Nop>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<C-f>', '<Nop>', { noremap = true, silent = true })

        local ui = require("harpoon.ui")
        local mark = require("harpoon.mark")
        vim.keymap.set("n", "<leader>h", mark.add_file, {desc = '[H]arpoon'})
        vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
        for i=1,9 do
            vim.keymap.set("n", "<leader>".. i, function() ui.nav_file(i) end,{desc = "Nav to file ".. i, noremap = true, silent = true })
        end
    end
}
