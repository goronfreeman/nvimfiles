nmap <silent><leader>gb :Git blame<CR>
nmap <silent><leader>gg :GBrowse<CR>
nmap <silent><leader>gs :Git<CR>
nmap <silent><leader>gc :Git commit<CR>

" Add back asynchronous:Gpush
command! -bang -bar -nargs=* Gpush execute 'Dispatch<bang> -dir=' .
      \ fnameescape(FugitiveGitDir()) 'git push' <q-args>
