return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = "VeryLazy",
		main = "nvim-treesitter.configs",
		build = ":TSUpdate",
		dependencies = {
			"p00f/nvim-ts-rainbow",
		},
		opts = {
			ensure_installed = {
				"vim",
				"bash",
				"c",
				"cpp",
				"javascript",
				"json",
				"java",
				"lua",
				"python",
				"typescript",
				"tsx",
				"css",
				"markdown",
				"markdown_inline",
			}, -- one of "all" or a list of languages
			sync_install = false,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			rainbow = {
				enable = true,
				extended_mode = true,
				max_file_lines = nil,
			},
		},
	},
}
