return {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
        "tpope/vim-dadbod",
        {
            "kristijanhusak/vim-dadbod-completion",
            init = function()
                vim.api.nvim_create_autocmd("FileType", {
                    desc = "dadbod completion",
                    group = vim.api.nvim_create_augroup("dadbod_cmp", { clear = true }),
                    pattern = { "sql", "mysql", "plsql" },
                    callback = function()
                        require("cmp").setup.buffer {
                             sources = { 
                                { name = "vim-dadbod-completion" } 
                            }
                        } 
                    end,
                })
            end,
        },
    },
    keys = {
        { "<leader>db", mode = { "n" }, "<cmd>DBUI<CR>", desc = "Toggleterm db ui" },
    },
    init = function()
        -- vim.g.db_ui_auto_execute_table_helpers = 1
        vim.g.db_ui_use_nerd_fonts = 1
    end,
}
