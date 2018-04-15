let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

nmap <Leader>f :Ag<cr>
nnoremap <c-o> :BTags<cr>
nnoremap <c-p> :FZF<cr>
