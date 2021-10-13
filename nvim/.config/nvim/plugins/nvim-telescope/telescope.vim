lua require('telescope')

nnoremap <silent> <leader>ff :lua require('telescope.builtin').find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<CR>
nnoremap <silent> <leader>fg :lua require('telescope.builtin').live_grep()<CR>
nnoremap <silent> <leader>fb :lua require('telescope.builtin').buffers()<CR>
nnoremap <silent> <leader>fh :lua require('telescope.builtin').help_tags()<CR>
