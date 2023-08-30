return {
	{
		"rainbowhxch/accelerated-jk.nvim",
		event = { "BufReadPost", "BufNewFile" },
		keys = {
			{ "j", mode = "n", "<Plug>(accelerated_jk_gj)", desc = "Fast ↓" },
			{ "k", mode = "n", "<Plug>(accelerated_jk_gk)", desc = "Fast ↑" },
		},
	},
	{
		"christoomey/vim-tmux-navigator",
		event = "VeryLazy",
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = true,
	},
	{
		"ethanholz/nvim-lastplace",
		event = "VeryLazy",
		config = true,
	},
	{
		"numToStr/Comment.nvim",
		event = "VeryLazy",
		config = true,
	},
	{
		"RRethy/vim-illuminate",
		event = "VeryLazy",
		config = function()
			require("illuminate").configure()
		end,
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	{
		"s1n7ax/nvim-window-picker",
		main = "window-picker",
		keys = {
			{
				"<leader>p",
				mode = "n",
				function()
					local window_number = require("window-picker").pick_window()
					if window_number then
						vim.api.nvim_set_current_win(window_number)
					end
				end,
				desc = "Picker show current windows",
			},
		},
		opts = {
			filter_rules = {
				include_current_win = true,
				bo = {
					filetype = { "fidget", "neo-tree" },
				},
			},
		},
	},
}
