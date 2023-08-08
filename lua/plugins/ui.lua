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
                    filetype = "neo-tree",
                    text = "Neo-tree",
                    highlight = "Directory",
                    text_align = "left",
                }}
            }
        },
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "VeryLazy",
        config = true,
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
}
