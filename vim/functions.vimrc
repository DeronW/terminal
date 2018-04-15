
" ************************************
" auto reload vim when vimrc is changed
" ************************************

" auto reload .vimrc after modify
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost ~/.vimrc source ~/.vimrc
augroup END " }

" trim whitespace 
function! s:FixWhitespace(line1,line2)
    let l:save_cursor = getpos(".")
    silent! execute ':' . a:line1 . ',' . a:line2 . 's/\s\+$//'
    call setpos('.', l:save_cursor)
endfunction
command! -range=% FixWhitespace call <SID>FixWhitespace(<line1>,<line2>)
map <leader>w :FixWhitespace<CR>
