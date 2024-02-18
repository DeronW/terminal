return {{ -- https://github.com/mhinz/vim-startify
    "https://gitee.com/ojer/vim-startify",
    init = function()
    end
}, {
    -- https://github.com/wakatime/vim-wakatime
    "https://gitee.com/mirrors_wakatime/vim-wakatime",
    event = {"VeryLazy"},
    init = function()
        -- vim.cmd([[packadd wakatime/vim-wakatime]])
    end
}, {
    -- https://github.com/junegunn/limelight.vim
    "https://gitee.com/mirrors_junegunn/limelight.vim",
    event = {"VeryLazy"},
    init = function()
        vim.keymap.set("n", "<leader>lt", "<Cmd>Limelight!!<CR>")
    end
}, { -- https://github.com/preservim/tagbar
    "https://gitee.com/lzxyx/tagbar",
    event = {"VeryLazy"},
    init = function()
        vim.keymap.set("n", "<leader>p", "<cmd>TagbarToggle<CR>")
        vim.keymap.set("n", "<F8>", "<cmd>TagbarToggle<CR>")
    end
}, {
    -- https://github.com/akinsho/toggleterm.nvim
    "https://gitee.com/mirrorsdemo/nvim-toggleterm.lua",
    event = {"VeryLazy"},
    init = function()
        vim.keymap.set('n', '<leader>t', '<Cmd>exe v:count1 . "ToggleTerm"<CR>')
    end,
    config = function()
        require("toggleterm").setup {
            direction = 'float'
        }
    end
}, {
    -- https://github.com/nvim-lualine/lualine.nvim 
    "https://gitee.com/uomer/lualine.nvim",
    config = function()
        require("lualine").setup {}
    end
}, { -- https://github.com/rcarriga/nvim-notify
    "https://gitee.com/cangmj/nvim-notify",
    config = function()
    end
}, {
    -- https://github.com/nvim-tree/nvim-tree.lua
    -- doc: https://gitee.com/cangmj/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt#L2168
    "https://gitee.com/cangmj/nvim-tree.lua",
    init = function()
        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        vim.keymap.set("", "<C-l>", ":NvimTreeToggle<CR>")

        -- https://github.com/nvim-tree/nvim-tree.lua/wiki/Auto-Close
        vim.api.nvim_create_autocmd("BufEnter", {
            nested = true,
            callback = function()
                if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
                    vim.cmd "quit"
                end
            end
        })
    end,
    config = function()
        require("nvim-tree").setup {
            hijack_cursor = true,
            filters = {
                custom = {".git", ".DS_Store"}
            }
        }
    end
}, {
    -- https://github.com/nvim-telescope/telescope.nvim
    "https://gitee.com/cangmj/telescope.nvim",
    tag = "0.1.5",
    dependencies = {"https://gitee.com/cangmj/plenary.nvim"},
    init = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end,
    config = function()
        require('telescope').setup {}
    end
}}
