return {
    "nvimdev/guard.nvim",
    init = function()
        local ft = require("guard.filetype")
        ft("go"):fmt("lsp")
                :append("golines")
                :lint("golangci")
    end,
    opts = {
        -- the only options for the setup function
        fmt_on_save = true,
        -- Use lsp if no formatter was defined for this filetype
        lsp_as_default_formatter = false,
    },
}
