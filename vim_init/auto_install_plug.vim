let s:plug_location='~/.vim/autoload/plug.vim'
let s:vim_plug_remote='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

if has('nvim')
	let s:plug_location='~/.local/share/nvim/site/autoload/plug.vim'
endif

if empty(glob(s:plug_location))
  exec "silent !curl -fLo ".s:plug_location." --create-dirs ".s:vim_plug_remote
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"TODO: Make this work on Windows
