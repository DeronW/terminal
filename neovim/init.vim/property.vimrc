
" ***********************************
" interface
" ***********************************

set t_Co=256 " show vim in 256 color mode, this means vim will be colorful
set autoread " auto reload file content
set nobackup " no backup file
set noswapfile " no *.swp file
set number " show numberline
set cursorline " high light current line
set title " use file name as terminal title
set tabstop=4 " set width of 'tab'
set shiftwidth=4 " number of spaces to use for auto indent
set softtabstop=4 " delete 4 spaces in one click of backspace
set expandtab " convert tab to spaces, use <C v> + tab for real tab
set shiftround " Round indent to multiple of 'shiftwidth', Applies to > and < commands
set showmode " show current mode
set hidden " hidden buffer, avoid mutile terminal edit same file
set wildmode=list:longest " Completion mode that is used for the character specified with 'wildchar'.
set wildignore=*/tmp/*,*.so,*.swp,*.zip,*.bak,*.pyc,*.class,*.db,*.sqlite3 " ingore such file
set scrolloff=5 " show min lines when scroll screen
set fileformats=unix " set file format, default use unix
set formatoptions+=B " merge two un-ASCII code lines without spaces
set completeopt=longest,menu " A comma separated list of options for Insert mode completion
set magic " Changes the special characters that can be used in search patterns
set whichwrap+=<,>,h,l " Allow specified keys that move the cursor line
set nowrapscan " dont search wrap file

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
set ignorecase " ignore case of searching text
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
set cindent " use c like style indent

" ************************************
" in diff mode
" ************************************
if &diff
    set cursorcolumn
    hi CursorLine ctermfg=16 ctermbg=255
    "hi DiffDelete ctermfg=52 ctermbg=52
endif
