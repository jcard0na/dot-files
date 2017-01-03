set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'rhysd/vim-clang-format'

syntax on
set modeline
set exrc

" Remove trailing whitespace on some filetypes
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\s\+$//e

augroup ProjectSetup
au BufRead,BufEnter ~/dev/* set et ts=4 sw=4 cindent cinoptions=:0,l1,t0,g0,(0
augroup END
