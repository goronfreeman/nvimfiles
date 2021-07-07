" nmap <leader>f :GFiles<CR>
" nmap <leader>F :Files<CR>
" nmap <leader>l :BLines<CR>
" nmap <leader>L :Lines<CR>
" nmap <leader>T :Tags<CR>
" nmap <leader>C :Commands<CR>

nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>a <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>A <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>H <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>h <cmd>lua require('telescope.builtin').oldfiles()<cr>
nnoremap <leader>' <cmd>lua require('telescope.builtin').marks()<cr>
nnoremap <leader>t <cmd>lua require('telescope.builtin').current_buffer_tags()<cr>

command GBranches lua require('telescope.builtin').git_branches()<cr>
