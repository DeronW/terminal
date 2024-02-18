return {{
    -- https://github.com/neovim/nvim-lspconfig
    "https://gitee.com/mirrorsdemo/nvim-lspconfig",
    config = function()
        require("lspconfig").pyright.setup {}
    end
-- }, {
--     -- https://github.com/mfussenegger/nvim-lint
--     "https://gitee.com/mirrors_mfussenegger/nvim-lint",
--     -- lazy = true,
--     config = function(_, opts)

--         local lint = require("lint")

--         vim.api.nvim_create_autocmd({"BufWritePost", "FileReadPost", "BufReadPost", "InsertLeave"}, {
--             callback = function()
--                 lint.try_lint()
--             end
--         })
--     end
}}
