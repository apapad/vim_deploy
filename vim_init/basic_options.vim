scriptencoding utf-8
set encoding=utf-8
nnoremap Q <nop>
syntax on                     " Syntax highlighting
set guifont=Consolas:h10      " Set the font to Consolas
set hidden 		              " Allows switching to other/new buffers without saving current one
set number                    " Show line numbers
set relativenumber            " Use relative numbers by default
set cursorline                " Highlight the screen line of the cursor
set hlsearch                  " Highlight search matches.
set incsearch                 " Jump to matching results while searching.
set shiftwidth=4              "For tab characters that appear 4-spaces-wide
set tabstop=4                 "indent corresponds to a single tab
set softtabstop=0 noexpandtab "If you're using actual tab character in your source code you probably also want these settings 

"For indents that consist of 4 space characters but are entered with the tabkey
"set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

set formatoptions-=t          " stop vim from adding a newline for long lines.

set fillchars+=vert:¦

set listchars=trail:·,precedes:«,extends:»,eol:¬,tab:>- 

if has('gui_running')
	set guioptions-=e
endif
set showtabline=2

if executable('rg')
	set grepprg=rg\ --vimgrep
endif

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Always show the status line
set laststatus=2

set directory=$HOME/temp//
set backupdir=$HOME/temp//
set undodir=$HOME/temp//
