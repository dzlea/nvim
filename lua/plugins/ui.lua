return {
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        dependencies = "nvim-tree/nvim-web-devicons",
        keys = {
            {"H", mode = "n", "<cmd>:BufferLineCyclePrev<CR>", desc = "BufferLine Prev"},
            {"L", mode = "n", "<cmd>:BufferLineCycleNext<CR>", desc = "BufferLine Next"},
        },
        opts = {
            options = {
                offsets = {{
                    filetype = "NvimTree",
                    text = "FileTree",
                    highlight = "Directory",
                    text_align = "left",
                }}
            }
        },
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            show_current_context = true,
        },
    },
    {
        "goolord/alpha-nvim",
        event = "VimEnter",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            local dashboard = require("alpha.themes.dashboard")

            -- Set header
            dashboard.section.header.val = [[

            ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ 
            ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ 
            ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ 
            ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ 
            ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ 
            ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ 

            ]]

            -- Send config to alpha
            require("alpha").setup(dashboard.opts)
        end
    },
    {
        "utilyre/sentiment.nvim",
        version = "*",
        event = "VeryLazy", -- keep for lazy loading
        opts = {
            -- config
        },
        init = function()
            -- `matchparen.vim` needs to be disabled manually in case of lazy loading
            vim.g.loaded_matchparen = 1
        end,
    },
}
