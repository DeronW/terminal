return {{
    -- https://github.com/hrsh7th/nvim-cmp
    "https://github.com/hrsh7th/nvim-cmp",
    version = false,
    event = "InsertEnter",
    dependencies = {"https://gitee.com/neotaich/cmp-nvim-lsp", -- "hrsh7th/cmp-nvim-lsp"
    "https://gitee.com/mirrorsdemo/cmp-buffer", -- "hrsh7th/cmp-buffer",
    "https://gitee.com/zsdfbb/cmp-path" --  "hrsh7th/cmp-path"
    },
    opts = function()
        vim.api.nvim_set_hl(0, "CmpGhostText", {
            link = "Comment",
            default = true
        })
        local cmp = require("cmp")
        local defaults = require("cmp.config.default")()
        return {
            completion = {
                completeopt = "menu,menuone,noinsert"
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-n>"] = cmp.mapping.select_next_item({
                    behavior = cmp.SelectBehavior.Insert
                }),
                ["<C-p>"] = cmp.mapping.select_prev_item({
                    behavior = cmp.SelectBehavior.Insert
                }),
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm({
                    select = true
                }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                ["<S-CR>"] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = true
                }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                ["<C-CR>"] = function(fallback)
                    cmp.abort()
                    fallback()
                end
            }),
            sources = cmp.config.sources({{
                name = "nvim_lsp"
            }, {
                name = "path"
            }}, {{
                name = "buffer"
            }}),
            formatting = {
                format = function(_, item)
                    -- local icons = require("lazyvim.config").icons.kinds
                    -- if icons[item.kind] then
                    --     item.kind = icons[item.kind] .. item.kind
                    -- end
                    return item
                end
            },
            experimental = {
                ghost_text = {
                    hl_group = "CmpGhostText"
                }
            },
            sorting = defaults.sorting
        }
    end,
    config = function(_, opts)
        for _, source in ipairs(opts.sources) do
            source.group_index = source.group_index or 1
        end
        require("cmp").setup(opts)
    end

}}
