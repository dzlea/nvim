vim.g.mapleader = " "

local keymap = vim.keymap

--插入模式
keymap.set("i", "jj", "<ESC>")
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "kk", "<ESC>")

--视觉模式
-- --单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--正常模式
-- --水平增加窗口
keymap.set("n", "<leader>sv", "<C-w>v")
-- --垂直增加窗口
keymap.set("n", "<leader>ss", "<C-w>s")

--取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")
--保存退出
keymap.set("n", "<leader>sq", ":wq<CR>")
--保存
keymap.set("n", "<leader>s", ":w<CR>")
