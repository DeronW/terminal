local plugins = {}

local golang = require("plugins.golang")
local ui = require("plugins.ui")
local editor = require("plugins.editor")
local lsp = require('plugins.lsp')
local enhance = require("plugins.enhance")
local treesitter = require("plugins.treesitter")
local cmp = require("plugins.cmp")


table.insert(plugins, ui)
table.insert(plugins, enhance)
table.insert(plugins, treesitter)
table.insert(plugins, golang)
table.insert(plugins, lsp)
table.insert(plugins, editor)
table.insert(plugins, enhance)
table.insert(plugins, cmp)

return plugins
