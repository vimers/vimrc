" LeaderF settings
let g:Lf_ShortcutF = ',,'
let g:Lf_WindowHeight = 0.3
let g:Lf_MruMaxFiles = 150
nnoremap <silent> <leader>f :LeaderfFunction<CR>
nnoremap <silent> <leader>u :LeaderfMru<CR>

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu
