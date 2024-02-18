-- refer https://github.com/LazyVim/LazyVim
-- lua http://www.it028.com/lua-tutorial.html
vim.g.mapleader = "'"

require("configs.options")
require("configs.keymaps")
-- require("configs.autocmds")

-- plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({"git", "clone", "--filter=blob:none", -- https://github.com/folke/lazy.nvim
    "https://gitee.com/gogopowerrangerfyf/lazy.nvim", "--branch=stable", lazypath})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
