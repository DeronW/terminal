-- https://neovim.io/doc/user/map.html
local map = vim.keymap
map.set("n", ";", ":")
map.set("n", "<leader>s", "<C-^>")
map.set("n", "<C-j>", ":m+<CR>")
map.set("n", "<C-k>", ":m-2<CR>")
map.set("i", "<C-j>", "<Esc>:m+<CR>")
map.set("i", "<C-k>", "<Esc>:m-2<CR>")
map.set("c", "w!!", "w !sudo tee > /dev/null %") --  Allow saving of files as sudo when I forgot to start vim using sudo
map.set("t", "<Esc>", "<C-\\><C-n>") -- use ESC to exit terminal mode
map.set("n", "<leader>a", ":set wrap! wrap?<CR>") -- trim all tails
map.set("n", "<C-p>", "\"*p") -- paste text only from clipboard
map.set("v", "<C-y>", "\"+y") -- copy text only to clipboard
