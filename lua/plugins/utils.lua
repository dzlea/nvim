return {
    {
        "christoomey/vim-tmux-navigator"
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config =true,
    },
    {
        "ethanholz/nvim-lastplace",
        config = true,
    },
    {
        "numToStr/Comment.nvim",
        config = true,
    },
    {
        "RRethy/vim-illuminate",
        config = function()
            require('illuminate').configure()
        end
    },
}
