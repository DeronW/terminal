" based on vundle https://github.com/gmarik/vundle
" delong vim config, used for python

" **********************************
" common start
" **********************************
set nocompatible " not compatible with vi
filetype off " detect file type, turn off, needed by vundle
syntax on " high light keyword
filetype indent on " use different indent format in different file
filetype plugin on " enable plugin for different filetype
set history=2000 " record history row
set ruler " show current row and column number
set t_Co=256 " show vim in 256 color mode, this means vim will be colorful
set autoread " auto reload file content
set nobackup " no backup file
set noswapfile " no *.swp file
set cursorcolumn " high light current column
set number " show numberline
set cursorline " high light current line
set selectmode=mouse,key
set title " use file name as terminal title
set novisualbell " dont beep
set noerrorbells " dont beep when occur error
set tabstop=4 " set width of 'tab'
set shiftwidth=4 " number of spaces to use for auto indent
set softtabstop=4 " delete 4 spaces in one click of backspace
set smarttab " insert tabs on the start of a line according to shiftwidth
set expandtab " convert tab to spaces, use <C v> + tab for real tab
set shiftround " Round indent to multiple of 'shiftwidth', Applies to > and < commands
set showcmd " Show (partial) command in the last line of the screen
set showmode " show current mode
set hidden " hidden buffer, avoid mutile terminal edit same file
set wildmode=list:longest " Completion mode that is used for the character specified with 'wildchar'.
set ttyfast " Indicates a fast terminal connection
set wildignore=*.swp,*.bak,*.pyc,*.class " ingore such file
set scrolloff=5 " show min lines when scroll screen
set laststatus=2 " The value of this option influences when the last window will have a status line
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
set encoding=utf-8 " set default file encoding
set fileformats=unix " set file format, default use unix
set formatoptions+=B " merge two un-ASCII code lines without spaces
set completeopt=longest,menu " A comma separated list of options for Insert mode completion
set wildmenu " When 'wildmenu' is on, command-line completion operates in an enhanced mode
set magic " Changes the special characters that can be used in search patterns
set whichwrap+=<,>,h,l " Allow specified keys that move the cursor line
set backspace=eol,start,indent " Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode
set nowrapscan " dont search wrap file
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")} " show file message in status line
set paste " set paste, for paste text from flipboard
if $SHELL=~'bin/fish' " user system default shell, fix bug, we can use vim in different shell
    set shell=/bin/sh
endif
" ***********************************
" interface
" ***********************************
set nowrap " abort auto newline
set showmatch " show match bracket
set mat=2 " blink matching brackets, when 'mat' of tenth were match

" ************************************
" about search
" ************************************
set hlsearch " high light search text
set ignorecase " ignore case of searching text
set incsearch " searching when typing
set smartcase " sense case search, when one or more upper letter in pattern

" ************************************
" folder
" ************************************
set foldenable " enable fold function
set foldmethod=indent " use indent as fold format, conditions are: manual\indent\expr\syntax\diff\marker
set foldlevel=99 " max fold level

" ************************************
" indent
" ************************************
set smartindent " indent format
set autoindent " auto indent in new line

" ************************************
" extra function
" ************************************

" self hotkey
let mapleader = "'"
let g:mapleader = "'"

" treat long lines as break lines
" map j gj
" map k gk

nnoremap ; :
nnoremap <F4> :set wrap! wrap?<CR>
noremap <C-j> :m+<CR>
noremap <C-k> :m-2<CR>
inoremap <C-j> <Esc>:m+<CR>
inoremap <C-k> <Esc>:m-2<CR>

au InsertLeave * set nopaste " disable paste mode when leaving insert mode
au InsertEnter * set paste " disable paste mode when leaving insert mode

" ************************************
" vim vundle
" ************************************

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle, bundle manage tool
Bundle 'gmarik/vundle'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'majutsushi/tagbar'
Bundle 'Yggdroot/indentLine'
Bundle 'Raimondi/delimitMate'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/genutils'
Bundle 'vim-scripts/SelectBuf'
Bundle 'hdima/python-syntax'
Bundle 'scrooloose/syntastic'
Bundle 'pangloss/vim-javascript'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'delongw/nginx.vim'
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-surround'
Bundle 'mbbill/undotree'
Bundle 'godlygeek/tabular'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'myusuf3/numbers.vim'

" ************************************
" plugin
" ************************************

" NERDTree
map <F5> :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$' ]

" majutsushi/tagbar
map <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" indentline
let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term = 0
let g:indentLine_char = '¦'

" python-syntax
let python_highlight_all = 1

" scrooloose/syntastic
let g:syntastic_error_symbol='->'
let g:syntastic_warning_symbol='->'
let g:syntastic_check_on_open=1

" pangloss/vim-javascript
let javascript_enable_domhtmlcss=1
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" kien/ctrlp
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

" vim-scripts/selectbuf
map <F3> <Plug>SelectBuf

" bronson/vim-trailing-whitespace
map <leader>w :FixWhitespace<CR>

" delongw/nginx
au BufRead,BufNewFile /etc/nginx/* set ft=nginx
au BufRead,BufNewFile /usr/local/nginx/conf/* set ft=nginx
au BufRead,BufNewFile */nginx/*.conf set ft=nginx

" mbbill/undotree
nnoremap <leader>u :UndotreeToggle<CR>

" myusuf3/numbers.vim
let g:enable_numbers=0
nnoremap <leader>n :NumbersToggle<CR>
nnoremap <F2> :NumbersOnOff<CR>

filetype plugin indent on

" ************************************
" theme
" ************************************

colorscheme molokai

hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

