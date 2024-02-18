return { -- https://github.com/fatih/vim-go
    "https://gitee.com/bon-ami/vim-go",
    events = {'VeryLazy'},
    init = function()
        vim.g.go_auto_type_info = 1
        vim.g.go_fmt_command = "goimports"
        vim.g.go_highlight_build_constraints = 1
        vim.g.go_highlight_fields = 1
        vim.g.go_highlight_function_calls = 1
        vim.g.go_highlight_functions = 1
        vim.g.go_highlight_operators = 1
        vim.g.go_highlight_types = 1
        vim.g.go_metalinter_autosave_enabled = {'vet', 'golint'}
    end
}
