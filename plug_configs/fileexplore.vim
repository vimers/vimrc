let g:coc_explorer_global_presets = {
\ 'floating': {
\   'position': 'floating',
\   'open-action-strategy': 'sourceWindow'
\ },
\ 'buffer': {
\   'position': 'floating',
\   'source': [{'name': 'buffer', 'expand': v:true}]
\ },
\ 'fixLeft': {
\   'position': 'left',
\   'open-action-strategy': 'select'
\ }
\ }

nmap <leader>ef <Cmd>CocCommand explorer --preset floating<CR>
nmap <leader>eb <Cmd>CocCommand explorer --preset buffer<CR>
nmap <leader>ee <Cmd>CocCommand explorer --preset fixLeft<CR>
augroup vimers_fileexplore
	autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
augroup end
