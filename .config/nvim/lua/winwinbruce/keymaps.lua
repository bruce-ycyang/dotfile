-- leader key 是你常用的前缀, <leader> 就表示 空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- loca 變數
-- map('模式','按键','對應按鍵XX',opt)
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- x do not yank
map('n', 'x', '"_x', opt)

-- Increment/decrement
map('n', '+', '<C-a>', opt)
map('n', '-', '<C-x>', opt)

-- 往下移動 9 行
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

-- 連續縮排
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)


-- Select all
map('n', '<C-a>', 'gg<S-v>G', opt)


--  sv 水平分頁
--  sh 垂直分頁
--  sc 關閉目前分頁 (c = close)
--  so 關閉其他分頁 (o = other)
--  s> s< s= sj sk 分頁比例控制
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt) -- close others
-- 比例控制
map("n", "s.", ":vertical resize +20<CR>", opt)
map("n", "s,", ":vertical resize -20<CR>", opt)
map("n", "s=", "<C-w>=", opt)
map("n", "sj", ":resize +10<CR>", opt)
map("n", "sk", ":resize -10<CR>", opt)

-- 分頁跳轉 alt + kjhl
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- New tab and Close tab (gt 切換頁籤)
map('n', 'te', ':tabedit', opt)
map('n', 'tc', ':bd<CR>', opt)
map('n', '<Tab>', ':BufferLineCycleNext<CR>', opt)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', opt)

-- nvimTree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)

-- Vimspector
vim.cmd([[
nmap <F9> <cmd>call vimspector#Launch()<cr>
nmap <F5> <cmd>call vimspector#StepOver()<cr>
nmap <F8> <cmd>call vimspector#Reset()<cr>
nmap <F11> <cmd>call vimspector#StepOver()<cr>")
nmap <F12> <cmd>call vimspector#StepOut()<cr>")
nmap <F10> <cmd>call vimspector#StepInto()<cr>")
]])
map('n', "Db", ":call vimspector#ToggleBreakpoint()<cr>", opt)
map('n', "Dw", ":call vimspector#AddWatch()<cr>", opt)
map('n', "De", ":call vimspector#Evaluate()<cr>", opt)
