local opt = vim.opt

--行号
opt.relativenumber = true
opt.number = true

--缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

--防止包裹
opt.wrap = false

--光标行
opt.cursorline = true

--系统剪切板
opt.clipboard:append("unnamedplus")

--默认窗口位置
opt.splitright = true
opt.splitbelow = true

--搜索
opt.ignorecase = true
opt.smartcase = true

--外观
opt.termguicolors = true
opt.signcolumn = "yes"
