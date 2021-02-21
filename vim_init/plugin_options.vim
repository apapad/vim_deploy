" Try to set gruvbox as the color scheme
try
	colorscheme gruvbox
	set background=dark
	hi clear SpellBad
	hi SpellBad cterm=underline
	hi SpellBad gui=undercurl
catch /^Vim\%((\a\+)\)\=:E185/
		colorscheme desert
endtry

" lightline
let g:lightline#bufferline#show_number  = 2
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#unnamed      = '[No Name]'

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

" asyncrun
:let g:asyncrun_open = 15 

" tags
"let g:tagbar_ctags_bin="C:\\ctags58\\ctags.exe" " TODO: This is obviously not going to work
"

" UltiSnips 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories = ['~/my_snippets', 'UltiSnips']
let g:UltiSnipsSnippetsDir = '~/my_snippets'

" Fzf
let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

function! s:build_quickfix_list(lines)
	call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
	copen
	cc
endfunction

let g:fzf_action = {
 \ 'ctrl-q': function('s:build_quickfix_list'),
 \ 'ctrl-t': 'tab split',
 \ 'ctrl-x': 'split',
 \ 'ctrl-v': 'vsplit' }
