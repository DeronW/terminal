-- https://neovim.io/doc/user/options.html
local opt = vim.opt

opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.shiftround = true -- Round indent
opt.showmode = false -- Dont show mode since we have a statusline
-- opt.splitbelow = true -- Put new windows below current
opt.splitkeep = "screen"
opt.termguicolors = true -- True color support
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.laststatus = 3 -- global statusline
opt.expandtab = true -- Use spaces instead of tabs

opt.number = true
opt.relativenumber = true
opt.swapfile = false
opt.cursorline = true
opt.title = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.shiftround = true
opt.wildmode = "list,longest"
opt.wildignore = "*/tmp/*,*.so,*.zip,*.bak,*.db"
opt.scrolloff = 5
opt.fileformats = unix
opt.completeopt = "longest,menu"
opt.showmatch = true
opt.matchtime = 2
opt.ignorecase = true
opt.smartcase = true
opt.foldmethod = "indent"
opt.foldlevel = 99
opt.smartindent = true
opt.cindent = true
opt.wrap = false
opt.whichwrap = vim.opt.whichwrap + ",<,>"

opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"