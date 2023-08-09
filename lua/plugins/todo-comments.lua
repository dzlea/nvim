return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = {"TodoLocList", "TodoQuickFix", "TodoTelescope"},
    lazy = true,
    keys = {
      {"]t", mode = "n", "<cmd>lua require('todo-comments').jump_next()<CR>", desc = "Next TODO"},
      {"[t", mode = "n", "<cmd>lua require('todo-comments').jump_prev()<CR>", desc = "Previous TODO"},
      {"]e", mode = "n", "<cmd>lua require('todo-comments').jump_next({keywords = {'ERROR', 'WARNING'}})<CR>", desc = "Next error/warning TODO"},
      {"<leader>tl", mode = "n", "<cmd>:TodoLocList<CR>", desc = "Show All TODO"},
    },
    opts = {},
}
  