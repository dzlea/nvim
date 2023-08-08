return {
    {
        "neovim/nvim-lspconfig",
        cmd = { "Mason", "Neoconf" },
        event = { "BufReadPost", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "folke/neodev.nvim",
            {
                "j-hui/fidget.nvim",
                tag = "legacy",
            },
        },
        config = function()
            local language_servers = {
                lua_ls = {},
            }
            require("neodev").setup()
            require("fidget").setup()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            require("mason-lspconfig").setup({
                ensure_installed = vim.tbl_keys(language_servers),
                handlers = {
                    function(server_name)
                        require("lspconfig")[server_name].setup {
                            settings = language_servers[server_name],
                            capabilities = capabilities,
                        }
                    end,
                }
            })
        end
    },
}
