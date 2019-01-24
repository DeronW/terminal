
" ************************************
" vim-plug content
" ************************************

" ------------------------------------
" 目录树
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
map <C-n> :NERDTreeToggle<CR>
" autocmd vimenter * NERDTree " 进入Vim后自动打开nerdtree
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '\.orig$']

" 如果vim打开的是目录, 则自动打开 nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" 如果当前窗口只剩 nerdtree, 自动关闭窗口
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" ------------------------------------

" ------------------------------------
" 目录树增强 - 显示当前目录中文件的git状态
Plug 'Xuyuanp/nerdtree-git-plugin'
" ------------------------------------

" ------------------------------------
" 底部状态栏
Plug 'vim-airline/vim-airline'

" 在底部显示git状态
let g:statline_fugitive=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" git状态标志符
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'"
" ------------------------------------

" ------------------------------------
" 相对行数显示
Plug 'myusuf3/numbers.vim'
let g:enable_numbers=1
nnoremap <silent> <leader>ll :NumbersToggle<CR>
" ------------------------------------

" ------------------------------------
" outline插件 需要安装 Ctags
Plug 'majutsushi/tagbar'
let g:tagbar_autofocus = 1
nmap <silent> <leader>t :TagbarToggle<CR>
" ------------------------------------

" ------------------------------------
" 打开最近编辑文件列表
Plug 'jeetsukumaran/vim-buffergator'
let g:buffergator_viewport_split_policy = "T"
let g:buffergator_suppress_keymaps = 1
map <silent> <Leader>b :BuffergatorToggle<CR>
" ------------------------------------

" ------------------------------------
" 引号/括号 自动闭合补全插件
Plug 'Raimondi/delimitMate'
let delimitMate_expand_cr=1
" ------------------------------------

" ------------------------------------
" 注释代码
Plug 'scrooloose/nerdcommenter'
" ------------------------------------

" ------------------------------------
" 快速移动
Plug 'Lokaltog/vim-easymotion'
let g:EasyMotion_smartcase = 1
" ------------------------------------

" ------------------------------------
" 主题
" 颜色大全
" Plug 'flazz/vim-colorschemes'

" 自定义主题 molokai
Plug 'DeronW/molokai'
" ------------------------------------

" ------------------------------------
" 全文检索
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
" ------------------------------------

" ------------------------------------
" ack搜索, vim-grepper 比 ack 功能更多
Plug 'mileszs/ack.vim'
" ------------------------------------

" ------------------------------------
" 插入补全
Plug 'ervandew/supertab'
" ------------------------------------

" ------------------------------------
" 包裹编辑
Plug 'tpope/vim-surround'
" ------------------------------------

" ------------------------------------
" 自动对齐插件
Plug 'junegunn/vim-easy-align'
" ------------------------------------

" ------------------------------------
" Git
Plug 'tpope/vim-fugitive'
" ------------------------------------

" ------------------------------------
" 代码格式 editorconfig 插件
Plug 'editorconfig/editorconfig-vim'
" ------------------------------------

" ------------------------------------
" 标记代码
Plug 'Kris2k/mark.vim'
" ------------------------------------

" ------------------------------------
" 替换
Plug 'brooth/far.vim'
" ------------------------------------

" ------------------------------------
" 黑灯模式
Plug 'junegunn/limelight.vim'
nmap <Leader>lt :Limelight!!<CR>
" ------------------------------------

" ------------------------------------
" 文件查找 ### TODO tobe replaced
Plug 'kien/ctrlp.vim'
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.zip,node_modules/* " MacOSX/Linux"
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
" ------------------------------------

" ------------------------------------
" 文件查找
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
" ------------------------------------

" ------------------------------------
" 语法检查
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
" multiple cursors
Plug 'terryma/vim-multiple-cursors'
let g:multi_cursor_use_default_mapping=0
" ------------------------------------

" ------------------------------------
" 编辑
" Plug 'mbbill/undotree'
" if has("persistent_undo")
"     set undodir='/tmp/vim-undo/'
"     set undofile
"     nnoremap <leader>u :UndotreeToggle<CR>
" endif
" ------------------------------------

" ------------------------------------
" wakatime 代码编辑时间统计插件
Plug 'wakatime/vim-wakatime'
" ------------------------------------
