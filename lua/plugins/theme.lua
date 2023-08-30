return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		config = function()
			vim.cmd([[colorscheme tokyonight-storm]])
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			opt = true,
		},
		opts = {
			options = {
				-- ... your lualine config
				theme = "tokyonight",
				-- ... your lualine config
			},
		},
	},
}
