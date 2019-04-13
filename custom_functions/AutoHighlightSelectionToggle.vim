" Highlight all instances of selection, when idle.
function! AutoHighlightSelectionToggle()
  let @/ = ''
  if exists('#auto_highlight_sel')
    au! auto_highlight_sel
    augroup! auto_highlight_sel
    setl updatetime=4000
    echo 'Highlight current selection: off'
    return 0
  else
    augroup auto_highlight_sel
      au!
      au CursorHold * let @/ = Get_visual_selection()
    augroup end
    setl updatetime=500
    echo 'Highlight current selection: ON'
    return 1
  endif
endfunction
