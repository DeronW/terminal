
" ************************************
" Vundle content
" ************************************

" ------------------------------------
" 目录树
Plugin 'scrooloose/nerdtree'

map <F5> :NERDTreeToggle<CR>
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
Plugin 'Xuyuanp/nerdtree-git-plugin'
" ------------------------------------

" ------------------------------------
" 底部状态栏
Plugin 'bling/vim-airline'

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
Plugin 'myusuf3/numbers.vim'
let g:enable_numbers=1
nnoremap <silent> <leader>l :NumbersToggle<CR>
" ------------------------------------

" ------------------------------------
" outline插件 需要安装 Ctags
Plugin 'majutsushi/tagbar'
let g:tagbar_autofocus = 1
map <F8> :TagbarToggle<CR>
nmap <silent> <leader>t :TagbarToggle<CR>
" ------------------------------------

" ------------------------------------
" 引号/括号 编辑中的文件菜单
Plugin 'vim-scripts/SelectBuf'
Plugin 'vim-scripts/genutils'
nmap <silent> <leader>b <Plug>SelectBuf
" nmap <unique> <silent> <C-L> <Plug>SelectBuf
" ------------------------------------

" ------------------------------------
" 引号/括号 自动闭合补全插件
Plugin 'Raimondi/delimitMate'
let delimitMate_expand_cr=1
" ------------------------------------

" ------------------------------------
" 注释代码
Plugin 'scrooloose/nerdcommenter'
" ------------------------------------

" ------------------------------------
" 快速移动
Plugin 'Lokaltog/vim-easymotion'
let g:EasyMotion_smartcase = 1
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
" ------------------------------------

" ------------------------------------
" 文件查找
Plugin 'kien/ctrlp.vim'
" kien/ctrlp
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
" 语法检查
Plugin 'scrooloose/syntastic'
" scrooloose/syntastic
let g:syntastic_python_checkers=['python']
let g:syntastic_echo_current_error=1
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_check_on_wq=1
let g:syntastic_statusline_flag=1
" ------------------------------------

" ------------------------------------
" 插入补全
Plugin 'ervandew/supertab'
" ------------------------------------

" ------------------------------------
" multi cursor
Plugin 'terryma/vim-multiple-cursors'
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-0>'
let g:multi_cursor_select_all_word_key = '<A-0>'
let g:multi_cursor_start_key           = 'g<C-0>'
let g:multi_cursor_select_all_key      = 'g<A-0>'
let g:multi_cursor_next_key            = '<C-0>'
let g:multi_cursor_prev_key            = '<C-9>'
let g:multi_cursor_skip_key            = '<C-8>'
let g:multi_cursor_quit_key            = '<Esc>'
" ------------------------------------

" ------------------------------------
" 包裹编辑
Plugin 'tpope/vim-surround'
" ------------------------------------

" ------------------------------------
" 插销编辑
Plugin 'mbbill/undotree'
if has("persistent_undo")
    set undodir='/tmp/vim-undo/'
    set undofile
    nnoremap <leader>u :UndotreeToggle<CR>
endif
" ------------------------------------

" ------------------------------------
" 按标点对齐
Plugin 'godlygeek/tabular'
" ------------------------------------

" ------------------------------------
" Git
Plugin 'tpope/vim-fugitive'
" ------------------------------------

" ------------------------------------
" 代码格式 editorconfig 插件
Plugin 'editorconfig/editorconfig-vim'
" ------------------------------------

" ------------------------------------
" 标记代码
Plugin 'Kris2k/mark.vim'
" ------------------------------------

" ------------------------------------
" ack搜索
Plugin 'mileszs/ack.vim'
" ------------------------------------

" ------------------------------------
" 替换预览
Plugin 'osyo-manga/vim-over'
" ------------------------------------

" ------------------------------------
" 自定义插件
Plugin 'DeronW/nginx.vim'
Plugin 'DeronW/molokai'
" ------------------------------------

" ------------------------------------
" go语言
Plugin 'fatih/vim-go'
" ------------------------------------

""" backups
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'Shougo/neocomplete.vim'
