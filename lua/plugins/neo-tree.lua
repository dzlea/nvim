return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        init = function()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
            vim.opt.termguicolors = true
        end,
        keys = {
            {"<leader>e", mode = {"n", "v"}, "<cmd>:NvimTreeToggle<CR>", desc = "open nvim-tree"},
            {"<leader>c", mode = {"n", "v"}, "<cmd>:NvimTreeCollapse<CR>", desc = "collapse nvim-tree"},
        },
        config = true,
    },
}
