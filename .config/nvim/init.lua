require('winwinbruce.base')
require('winwinbruce.highlights')
require('winwinbruce.keymaps')
require('winwinbruce.plugins')
-- require('winwinbruce.colorscheme')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('winwinbruce.macos')
end
if is_win then
  require('winwinbruce.windows')
end
