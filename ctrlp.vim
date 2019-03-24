let g:ctrlp_map = ',,'
let g:ctrlp_open_multiple_files = '2vjr'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/build/*
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
map <leader>f :CtrlPMRU<CR>
