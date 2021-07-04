lua require('telescope')

nnoremap <silent> <C-P> :lua require('telescope.builtin').find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<CR>
nnoremap <silent> <C-F> :lua require('telescope.builtin').live_grep()<CR>
