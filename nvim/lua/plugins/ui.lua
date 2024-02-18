return {{
    -- https://github.com/nvim-tree/nvim-web-devicons 
    "https://gitee.com/rux_plugin/nvim-tree-nvim-web-devicons",
    config = function()
        require("nvim-web-devicons").setup {}
    end
}, {
    -- https://github.com/catppuccin/nvim
    "https://gitee.com/oyaay/catppuccin.nvim",
    name = "catppuccin",
    priority = 1000,
    init = function()
        vim.cmd.colorscheme "catppuccin"
    end,
    config = function()
        require("catppuccin").setup {}
    end
}}
