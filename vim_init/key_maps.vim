" Toggle list
noremap <F3> :set list!<CR>

" Use jj to Esc
:inoremap jj <Esc>

" move to the next buffer or next error buffer depending of the current buffer
" type
nnoremap <expr> <right> (&ft=='qf' ? ":cnewer" : ":bnext")."\<cr>" 

" move to the next buffer or next error buffer depending of the current buffer
" type
nnoremap <expr> <left> (&ft=='qf' ? ":colder" : ":bprev")."\<cr>" 

" delete current buffer
nnoremap <F2> :bd<CR>

" Handy macro to assign instruction numbers to UF shaders. Works only for
" shaders with one RET at the moment.
nnoremap <leader>nuf ms/MAIN<CR>ma/RET<CR>mb<c-v>'aI0<esc>j<c-v>'bg<c-a>'szz

nnoremap <leader>cx yiw:AsyncRun conv -x <c-r>"<cr>
nnoremap <leader>cd yiw:AsyncRun conv -d <c-r>"<cr>
nnoremap <leader>tag :AsyncRun ctags -R --exclude=build --exclude=build_linux --exclude=deploy --exclude=docs --exclude=docs --exclude=vc<cr>

nnoremap <F8> :TagbarToggle<CR>

let g:vimrc_path='~/.vimrc'
if has('nvim')
let g:vimrc_path='~/.config/nvim/init.vim'
endif
execute "nnoremap <leader>vimrc :e ".g:vimrc_path."<cr>"

nnoremap <leader>hh :call AutoHighlightSelectionToggle()<cr>
nnoremap <leader>ss :source %<cr>

" Esc now works also in terminal mode
:tnoremap <Esc> <C-\><C-n>

" Moving lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

noremap <F1> :NERDTree<cr>

nnoremap <leader>sh :if AutoHighlightSelectionToggle()<Bar>set hls<Bar>endif<CR>
nmap <leader>sw :call SwitchSourceHeader()<CR>

" find all words under current dir
nmap <leader>ff yiw:F <c-r>"<cr>

" find all words in file
nmap <leader>fif yiw:vimgrep <c-r>" %<cr>:cw<cr>

" fuzzy search in current file
nnoremap <leader>/ :BLines<CR>

" Map emacs keys to fzf file and buffers functions
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>

" A global fuzzy text search tool using rip grep. mapped to :F
" Very very fast...
command! -bang -nargs=* F call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
