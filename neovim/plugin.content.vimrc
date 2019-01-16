
" ************************************
" Vundle content
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