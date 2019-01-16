
" **********************************
" last config
" should placed on the bottom of .vimrc
" **********************************

colorscheme molokai

" setup filetype to shell with *.fish file. http://fishshell.com/
autocmd BufNewFile,BufRead *.fish set filetype=sh
autocmd BufNewFile,BufRead *.vue set filetype=vue.html.javascript.css

filetype plugin indent on
