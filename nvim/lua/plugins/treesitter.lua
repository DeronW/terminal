return {{
    -- https://github.com/nvim-treesitter/nvim-treesitter
    "https://gitee.com/cangmj/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    event = {"VeryLazy"},
    init = function(plugin)
        require("lazy.core.loader").add_to_rtp(plugin)
        require("nvim-treesitter.query_predicates")
    end,
    cmd = {"TSUpdateSync", "TSUpdate", "TSInstall"},
    config = function(_, opts)
        if type(opts.ensure_installed) == "table" then
            ---@type table<string, boolean>
            local added = {}
            opts.ensure_installed = vim.tbl_filter(function(lang)
                if added[lang] then
                    return false
                end
                added[lang] = true
                return true
            end, opts.ensure_installed)
        end

        vim.g.loaded_ruby_provider = 0
        vim.g.loaded_perl_provider = 0

        require("nvim-treesitter.configs").setup(opts)
    end
}}
