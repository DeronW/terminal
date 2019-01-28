
"""
" particular language
"""

" ------------------------------------
" 语法检查, 能检查主流编程语言
Plug 'scrooloose/syntastic'
let g:syntastic_python_checkers=['python']
let g:syntastic_echo_current_error=1
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_check_on_wq=1
let g:syntastic_statusline_flag=1
" ------------------------------------

" ------------------------------------
" Golang , this is optional
" Plug 'zchee/nvim-go', { 'do': 'make', 'for': 'go' }
" ------------------------------------

" ------------------------------------
" GraphQL 2016 draft specification
Plug 'jparise/vim-graphql'
" ------------------------------------

" ------------------------------------
"  JavaScript / TypeScript support
Plug 'pangloss/vim-javascript'
" ------------------------------------

" ------------------------------------
" Vue 框架 https://cn.vuejs.org/
Plug 'posva/vim-vue'
" ------------------------------------

" ------------------------------------
" nginx config file
Plug 'DeronW/nginx.vim'
" ------------------------------------

" ------------------------------------
" 自动补全, coc 名字来自 Conquer of Completion
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
" ------------------------------------

" ------------------------------------
" 基于 Prettier 的代码格式化
Plug 'prettier/vim-prettier', {
\ 'do': 'npm install',
\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html']
\ }
let g:prettier#config#print_width = 120
let g:prettier#autoformat = 0
let g:prettier#config#tab_width = 4
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#single_quote = 'false'
let g:prettier#config#bracket_spacing = 'true'
nmap <leader>== <plug>(PrettierAsync)
" ------------------------------------
