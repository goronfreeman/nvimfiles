function! ClearQuickfixList()
  call setqflist([])
endfunction
command! ClearQuickfixList call ClearQuickfixList()

function! DeleteTrailingWhitespace()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunction

au BufWrite * :call DeleteTrailingWhitespace()
au BufLeave,FocusLost * silent! wa
