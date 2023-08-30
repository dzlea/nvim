return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreview" },
	ft = "markdown",
	lazy = true,
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
	init = function()
		vim.g.mkdp_open_ip = "localhost"
		vim.g.mkdp_port = "10000"
		vim.g.mkdp_open_to_the_world = 0
	end,
	keys = {
		{ "<leader>md", mode = "n", "<cmd>MarkdownPreview<CR>", desc = "start MarkdownPreview" },
		{ "<leader>ms", mode = "n", "<cmd>MarkdownPreviewStop<CR>", desc = "stop MarkdownPreview" },
	},
}
