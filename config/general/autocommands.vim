function! ClearQuickfixList()
  call setqflist([])
endfunction
command! ClearQuickfixList call ClearQuickfixList()

function! DeleteTrailingWhitespace()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunction

autocmd BufWrite * :call DeleteTrailingWhitespace()
autocmd BufRead,BufNewFile *.md, *.txt setlocal spell
autocmd BufLeave,FocusLost * silent! wa
autocmd FileType html,eruby EmmetInstall
autocmd TextYankPost * lua vim.highlight.on_yank {on_visual = false}
