set modeline
set exrc
call pathogen#infect()
call pathogen#helptags()

" Remove trailing whitespace on some filetypes
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\s\+$//e
