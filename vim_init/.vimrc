
" ██╗   ██╗██╗███╗   ███╗    ██████╗ ███████╗██████╗ ██╗      ██████╗ ██╗   ██╗
" ██║   ██║██║████╗ ████║    ██╔══██╗██╔════╝██╔══██╗██║     ██╔═══██╗╚██╗ ██╔╝
" ██║   ██║██║██╔████╔██║    ██║  ██║█████╗  ██████╔╝██║     ██║   ██║ ╚████╔╝ 
" ╚██╗ ██╔╝██║██║╚██╔╝██║    ██║  ██║██╔══╝  ██╔═══╝ ██║     ██║   ██║  ╚██╔╝  
"  ╚████╔╝ ██║██║ ╚═╝ ██║    ██████╔╝███████╗██║     ███████╗╚██████╔╝   ██║   
"   ╚═══╝  ╚═╝╚═╝     ╚═╝    ╚═════╝ ╚══════╝╚═╝     ╚══════╝ ╚═════╝    ╚═╝   

let s:vim_init_path='~/.vim_deploy/vim_init/'
let s:custom_functions_path='~/.vim_deploy/custom_functions/'

exec "source ".s:vim_init_path."basic_options.vim"
exec "source ".s:vim_init_path."auto_install_plug.vim"
exec "source ".s:vim_init_path."load_plugins.vim"
exec "source ".s:vim_init_path."plugin_options.vim"
exec "source ".s:vim_init_path."key_maps.vim"
exec "source ".s:vim_init_path."autocommands.vim"

" load some custom functions... TODO: Add them as Unmanaged plugins.
exec "source ".s:custom_functions_path."AutoHighlightSelectionToggle.vim"
exec "source ".s:custom_functions_path."FlipPredicate.vim"
exec "source ".s:custom_functions_path."Get_visual_selection.vim"
exec "source ".s:custom_functions_path."SwitchSourceHeader.vim"
