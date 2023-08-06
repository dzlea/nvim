return {
    {
        "akinsho/bufferline.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = true,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
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
