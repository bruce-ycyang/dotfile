local status, tree = pcall(require, "nvim-tree")
if (not status) then return end

tree.setup {
  -- 不显示 git 状态图标
  git = {
    enable = false
  },
  -- 資料夾線
  renderer = {
    indent_markers = {
      enable = true 
    },
  },
}


-- o 打开关闭文件夹
-- a 创建文件
-- r 重命名
-- x 剪切
-- c 拷贝
-- p 粘贴
-- d 删除

