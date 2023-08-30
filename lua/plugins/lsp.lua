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
			"nvimdev/lspsaga.nvim",
		},
		config = function()
			local language_servers = {
				lua_ls = {
					settings = {
						Lua = {
							workspace = { checkThirdParty = false },
							telemetry = { enable = false },
						},
					},
				},
				marksman = {},
				gopls = {
					cmd = { "gopls" },
					filetypes = { "go", "gomod", "gowork", "gotmpl" },
					root_dir = require("lspconfig/util").root_pattern("go.work", "go.mod", ".git"),
					settings = {
						gopls = {
							completeUnimported = true,
							usePlaceholders = true,
							analyses = {
								unusedparams = true,
							},
						},
					},
				},
			}
			local on_attach = function(_, bufnr)
				-- Enable completion triggered by <c-x><c-o>
				local nmap = function(keys, func, desc)
					if desc then
						desc = "LSP: " .. desc
					end

					vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
				end

				nmap("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
				nmap("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
				nmap("K", "<cmd>Lspsaga hover_doc<CR>", "Hover Documentation")
				nmap("gi", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
				nmap("<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")
				nmap("<leader>wa", vim.lsp.buf.add_workspace_folder, "[W]orkspace [A]dd Folder")
				nmap("<leader>wr", vim.lsp.buf.remove_workspace_folder, "[W]orkspace [R]emove Folder")
				nmap("<leader>wl", function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, "[W]orkspace [L]ist Folders")
				nmap("<leader>D", vim.lsp.buf.type_definition, "Type [D]efinition")
				nmap("<leader>rn", "<cmd>Lspsaga rename ++project<cr>", "[R]e[n]ame")
				nmap("<leader>ca", "<cmd>Lspsaga code_action<CR>", "[C]ode [A]ction")
				nmap("<leader>da", require("telescope.builtin").diagnostics, "[D]i[A]gnostics")
				nmap("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
				-- nmap('gr', vim.lsp.buf.references, '[G]oto [R]eferences')
				nmap("<space>f", function()
					vim.lsp.buf.format({ async = true })
				end, "[F]ormat code")
			end
			require("neodev").setup()
			require("fidget").setup()
			require("lspsaga").setup()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			require("mason-lspconfig").setup({
				ensure_installed = vim.tbl_keys(language_servers),
			})

			for language_server, config in pairs(language_servers) do
				require("lspconfig")[language_server].setup(vim.tbl_deep_extend("keep", {
					on_attach = on_attach,
					capabilities = capabilities,
				}, config))
			end
		end,
	},
}
