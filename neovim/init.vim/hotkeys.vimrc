
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
nnoremap <silent> <leader>a :set wrap! wrap?<CR>
noremap <C-j> :m+<CR>
noremap <C-k> :m-2<CR>
inoremap <C-j> <Esc>:m+<CR>i
inoremap <C-k> <Esc>:m-2<CR>i
nnoremap <leader>s <C-^>

" easy move in multi windows, ^[l mean: Ctrl-v + Ctrl-l
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
" use ESC to exit terminal mode
tnoremap <Esc> <C-\><C-n>

inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l

" move between split window
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" 复制内容到系统剪切板，只支持文字
vnoremap <C-y> "+y
" 粘贴剪切板内容，只支持文字
nnoremap <C-p> "*p

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
 
