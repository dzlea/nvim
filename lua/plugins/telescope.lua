return {
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.2",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        keys = {
            {"<leader>ff", mode = "n", "<cmd>lua require('telescope.builtin').find_files()<CR>", desc = "Telescope Find File"},
            {"<leader>fg", mode = "n", "<cmd>lua require('telescope.builtin').live_grep()<CR>", desc = "Telescope Live Grep"},
            {"<leader>fb", mode = "n", "<cmd>lua require('telescope.builtin').buffers()<CR>", desc = "Telescope Buffers"},
            {"<leader>fo", mode = "n", "<cmd>lua require('telescope.builtin').oldfiles()<CR>", desc = "Telescope Find Oldfiles"},
            {"<leader>fh", mode = "n", "<cmd>lua require('telescope.builtin').help_tags()<CR>", desc = "Telescope Help"},
        },
        config = true,
    },
}
