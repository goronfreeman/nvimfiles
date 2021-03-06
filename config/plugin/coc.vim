let g:coc_global_extensions = [
  \'coc-css',
  \'coc-emmet',
  \'coc-html',
  \'coc-json',
  \'coc-snippets',
  \'coc-solargraph',
  \'coc-tsserver',
  \'coc-yaml'
\]
let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
