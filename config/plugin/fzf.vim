let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
