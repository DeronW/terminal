
" ************************************
" refine Vim leader key, default is ","
" ************************************
let mapleader = "'"
let g:mapleader = "'"

" ************************************
" map 2 short key in diff mode
" ************************************
if &diff
    nnoremap - [czz
    nnoremap = ]c
endif

" ************************************
" extra function
" ************************************
nnoremap ; :
nnoremap <F4> :set wrap! wrap?<CR>
nnoremap <silent> <leader>a :set wrap! wrap?<CR>
noremap <C-j> :m+<CR>
noremap <C-k> :m-2<CR>
inoremap <C-j> <Esc>:m+<CR>
inoremap <C-k> <Esc>:m-2<CR>

" easy move in multi windows, ^[l mean: Ctrl-v + Ctrl-l
map <A-l> <C-w>l
map <A-k> <C-w>k
map <A-j> <C-w>j
map <A-h> <C-w>h


" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
 