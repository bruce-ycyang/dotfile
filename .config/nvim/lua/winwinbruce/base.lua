-- utf8
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- 頁面上下移動保留 8 行
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- 相對行號
vim.wo.number = true
vim.wo.relativenumber = true

-- 所在行高亮
vim.wo.cursorline = true

-- 右測長度參考位置
vim.wo.colorcolumn = "130"

-- tab 是 4 個空格
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true

-- >> << 移動長度 
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

-- 空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 搜索大小寫不敏感
vim.o.ignorecase = true
vim.o.smartcase = true

-- 搜索高亮
vim.o.hlsearch = true

-- 禁止折行
vim.o.wrap = false
vim.wo.wrap = false

-- 不要備份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- 空格顯示一點 
-- vim.o.list = true
-- vim.o.listchars = "space:·"
