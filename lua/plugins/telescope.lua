return {
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.2",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
        },
        keys = {
            {"<leader>ff", mode = "n", "<cmd>lua require('telescope.builtin').find_files()<CR>", desc = "Telescope Find File"},
            {"<leader>fg", mode = "n", "<cmd>lua require('telescope.builtin').live_grep()<CR>", desc = "Telescope Live Grep"},
            {"<leader>fb", mode = "n", "<cmd>lua require('telescope.builtin').buffers()<CR>", desc = "Telescope Buffers"},
            {"<leader>fo", mode = "n", "<cmd>lua require('telescope.builtin').oldfiles()<CR>", desc = "Telescope Find Oldfiles"},
            {"<leader>fh", mode = "n", "<cmd>lua require('telescope.builtin').help_tags()<CR>", desc = "Telescope Help"},
        },
        config = function()
            require("telescope").setup {
                extensions = {
                    fzf = {
                        fuzzy = true,                   -- false will only do exact matching
                        override_generic_sorter = true, -- override the generic sorter
                        override_file_sorter = true,    -- override the file sorter
                        case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                        -- the default case_mode is "smart_case"
                    },
                },
            }
            require('telescope').load_extension('fzf')
        end,
    },
}
