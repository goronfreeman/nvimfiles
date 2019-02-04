autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noruler
  \| autocmd BufLeave <buffer> set laststatus=2 ruler

" command! -bang -nargs=* Ag
"   \ call fzf#vim#ag(<q-args>,
"   \                 <bang>0 ? fzf#vim#with_preview('up:60%')
"   \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
"   \                 <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 '--color-line-number 39 --color-match "30;46" --color-path 32',
  \                 {'options': '--color fg:-1,bg:-1,hl:#81A1C1,fg+:-1,bg+:-1,hl+:#8FBCBB'})

command! -bang -nargs=* Rg
  \ call fzf#vim#grep("rg --follow --column --line-number --no-heading --color=always --colors 'match:bg:cyan' --colors 'match:fg:black' --colors 'match:style:nobold' --colors 'path:fg:green' --smart-case ".shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
