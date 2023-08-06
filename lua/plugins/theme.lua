return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        config = function()
            vim.cmd[[colorscheme tokyonight-storm]]
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons", opt = true
        },
        config = function()
            require('lualine').setup {
                options = {
                  -- ... your lualine config
                  theme = 'tokyonight'
                  -- ... your lualine config
                }
            }
        end,
    },
}
