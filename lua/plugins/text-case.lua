return {
	"johmsalas/text-case.nvim",
	main = "textcase",
	lazy = true,
	keys = {
		{ "gau", mode = "n", "<cmd>lua require('textcase').current_word('to_upper_case')<CR>", desc = "To Upper Case" },
		{ "gal", mode = "n", "<cmd>lua require('textcase').current_word('to_lower_case')<CR>", desc = "To Lower Case" },
		{ "gas", mode = "n", "<cmd>lua require('textcase').current_word('to_snake_case')<CR>", desc = "To Snake Case" },
		{ "gac", mode = "n", "<cmd>lua require('textcase').current_word('to_camel_case')<CR>", desc = "To Camel Case" },
	},
	config = true,
}
