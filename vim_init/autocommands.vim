" show quickfix window always on the bottom taking the whole horizontal space
au FileType qf wincmd J

" set filetype to groovy for .template files
au BufRead,BufNewFile *.template set filetype=groovy

" Set number in insert mode and hybrid in normal mode automatically
augroup numbertoggle
		autocmd!
		autocmd BufEnter,FocusGained,InsertLeave * set number relativenumber
		autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
