return {{
    -- https://github.com/lewis6991/gitsigns.nvim
    "https://gitee.com/cangmj/gitsigns.nvim",
    event = {"VeryLazy"},
    config = function()
        require('gitsigns').setup {
            current_line_blame = true,
            max_file_length = 10000,
            current_line_blame_opts = {
                delay = 200
            }
        }
    end
}, {
    -- https://github.com/folke/which-key.nvim
    "https://gitee.com/mirrorsdemo/which-key.nvim",
    lazy = true,
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        require("which-key").setup {}
    end
}, {
    -- https://github.com/jiangmiao/auto-pairs
    "https://gitee.com/jhrjh/auto-pairs",
    init = function()
    end
}, {
    -- https://github.com/numToStr/Comment.nvim
    "https://gitee.com/mirrorsdemo/Comment.nvim",
    init = function()
        vim.keymap.set('n', '<leader>c', '<Plug>(comment_toggle_linewise_current)')
    end,
    config = function()
        require('Comment').setup {}
    end
}, {
    -- https://github.com/stevearc/conform.nvim
    "https://gitee.com/mirrors_stevearc/conform.nvim",
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                -- Conform will run multiple formatters sequentially
                python = {"isort", "black"},
                -- Use a sub-list to run only the first available formatter
                javascript = {{"prettier"}}
            }
        })
    end
}, {
    -- https://github.com/easymotion/vim-easymotion
    "https://gitee.com/ProVim/vim-easymotion",
    init = function()
        vim.g.EasyMotion_smartcase = 1
    end
    -- }, {
    --     -- https://github.com/folke/trouble.nvim
    --     "https://gitee.com/oyaay/trouble.nvim",
    --     opts = {},
    --     config = function()
    --         vim.keymap.set("n", "<leader>xx", function()
    --             require("trouble").toggle()
    --         end)
    --         vim.keymap.set("n", "<leader>xd", function()
    --             require("trouble").toggle("document_diagnostics")
    --         end)
    --         vim.keymap.set("n", "<leader>xq", function()
    --             require("trouble").toggle("quickfix")
    --         end)
    --         vim.keymap.set("n", "gR", function()
    --             require("trouble").toggle("lsp_references")
    --         end)
    --     end
    -- }
}, {
    -- https://github.com/dense-analysis/ale
    "https://gitee.com/old_school_vim/ale",
    config = function()

    end
}}

