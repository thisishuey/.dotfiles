lua require('telescope')

nnoremap <silent> <leader>ef :lua require('telescope.builtin').file_browser()<CR>
nnoremap <silent> <C-P> :lua require('telescope.builtin').find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<CR>
nnoremap <silent> <C-F> :lua require('telescope.builtin').live_grep()<CR>
