function! s:RubyHashSyntaxToggle() range
  if join(getline(a:firstline, a:lastline)) =~# '=>'
    silent! execute a:firstline . ',' . a:lastline . 's/[^{,]*[{,]\?\zs:\([^: ]\+\)\s*=>/\1:/g'
  else
    silent! execute a:firstline . ',' . a:lastline . 's/[^{,]*[{,]\?\zs\([^: ]\+\):/:\1 =>/g'
  endif
endfunction

command! -bar -range RubyHashSyntaxToggle <line1>,<line2>call s:RubyHashSyntaxToggle()

noremap <Leader>rh :RubyHashSyntaxToggle<CR>

autocmd BufWritePre *.py :%s/\s\+$//e
:au FocusLost * :wa

