" ***********************************
" interface
" ***********************************

syntax on " high light keyword
filetype indent on " use different indent format in different file
filetype plugin on " enable plugin for different filetype
set history=2000 " record history row
set ruler " show current row and column number
set t_Co=256 " show vim in 256 color mode, this means vim will be colorful
set autoread " auto reload file content
set nobackup " no backup file
set noswapfile " no *.swp file
set number " show numberline
set cursorline " high light current line
"set selectmode=mouse,key
"set mouse=a " enable mouse in vim
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
set wildignore=*.swp,*.bak,*.pyc,*.class,*.db,*.sqlite3 " ingore such file
set scrolloff=5 " show min lines when scroll screen
set encoding=utf-8 " set default file encoding
set fileformats=unix " set file format, default use unix
set formatoptions+=B " merge two un-ASCII code lines without spaces
set completeopt=longest,menu " A comma separated list of options for Insert mode completion
set wildmenu " When 'wildmenu' is on, command-line completion operates in an enhanced mode
set magic " Changes the special characters that can be used in search patterns
set whichwrap+=<,>,h,l " Allow specified keys that move the cursor line
set backspace=eol,start,indent " Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode
set nowrapscan " dont search wrap file
set laststatus=2 " always show status line

" fix bug, Vim does't work with fish shell, so use default sh in Vim
if $SHELL=~'bin/fish' " user system default shell, we can use vim in different shell
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
set cindent " use c like style indent

" ************************************
" in diff mode
" ************************************
if &diff
    set cursorcolumn
    hi CursorLine ctermfg=16 ctermbg=255
    "hi DiffDelete ctermfg=52 ctermbg=52
endif
