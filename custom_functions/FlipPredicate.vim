nnoremap <leader>rp :call FlipPredicate()<cr>
function! FlipPredicate()
	let predMap = {"false":"true",
				 \"true":"false",
				 \"False":"True",
				 \"True":"False",
				 \"yes":"no",
				 \"no":"yes"}
	:normal yiw
	let pred = expand(@")
    if has_key(predMap, pred)
		:normal diw
		let @"=expand(predMap[pred])
		:normal p
	else
		echo "Predicate -".pred."- not handled!"
	endif
endfunction
