return {
	"stevearc/conform.nvim",
	event = "VeryLazy",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			go = {
				formatters = { "gofumpt", "goimports", "golines" },
				-- Run formatters one after another instead of stopping at the first success
				run_all_formatters = true,
			},
		},
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
			lsp_fallback = true,
		},
	},
}
