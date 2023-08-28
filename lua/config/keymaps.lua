vim.g.mapleader = " "

local keymap = vim.keymap

--插入模式
keymap.set("i", "jj", "<ESC>", { desc = "Exit Insert Mode" })
keymap.set("i", "jk", "<ESC>", { desc = "Exit Insert Mode" })
keymap.set("i", "kk", "<ESC>", { desc = "Exit Insert Mode" })

--视觉模式
-- --单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Down Single Or Multiple Lines" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Up Single Or Multiple Lines" })

--正常模式
-- --水平增加窗口
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Horizontal Increase Window" })
-- --垂直增加窗口
keymap.set("n", "<leader>ss", "<C-w>s", { desc = "Vertically Increase Window" })
keymap.set("n", "=", "<C-w>+", { desc = "Increase the height of the current window" })
keymap.set("n", "-", "<C-w>-", { desc = "Decrease the height of the current window" })
keymap.set("n", ",", "<C-w><", { desc = "Reduce the current window bandwidth" })
keymap.set("n", ".", "<C-w>>", { desc = "Increase current window bandwidth" })

--取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Unhighlight" })
--保存退出
keymap.set("n", "<leader>sq", ":wq<CR>", { desc = "Save And Exit" })
--保存
keymap.set("n", "<leader>s", ":w<CR>", { desc = "Save" })
