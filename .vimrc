syntax on
set modeline
set exrc
call pathogen#infect()
call pathogen#helptags()

" Remove trailing whitespace on some filetypes
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\s\+$//e

augroup ProjectSetup
au BufRead,BufEnter ~/dev/* set et ts=4 sw=4 cindent cinoptions=:0,l1,t0,g0,(0
augroup END
