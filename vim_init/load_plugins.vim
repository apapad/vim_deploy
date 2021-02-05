" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
let s:plug_location='~/.vim/plugged'
if has('nvim')
let s:plug_location='~/.local/share/nvim/plugged'
endif

call plug#begin(s:plug_location)
Plug 'https://github.com/itchyny/lightline.vim.git'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'tpope/vim-surround'
Plug 'https://github.com/terryma/vim-multiple-cursors.git'
Plug 'majutsushi/tagbar'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/skywind3000/asyncrun.vim.git'
Plug 'https://github.com/rhysd/vim-clang-format.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/kshenoy/vim-signature.git'
" Initialize plugin system
call plug#end()
