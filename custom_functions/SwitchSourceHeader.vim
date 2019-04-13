" switch between source and header files easily. TODO: Make extMap a map of
" lists in order to search for the source/header file for more than one
" possible extension e.g "hpp":["cpp","cc","c"]
function! SwitchSourceHeader()
	let extMap = {"hpp":"cpp",
				 \"cpp":"hpp",
				 \"h":"c",
				 \"c":"h"}
	let l:extension = expand("%:e")
    if has_key(extMap, extension)
		let file = fnameescape(expand("%:p:r:s?src?include?").".".extMap[extension])
		if filereadable(file)
        	exe "edit" file
		else
			echo "( > 0_0)> Cannot find the .".extMap[extension]." file!"
		endif
	else
		echo "File type with extension ".extension." not handled!"
	endif
endfunction
