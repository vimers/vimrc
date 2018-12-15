" YouCompleteMe setting {{{1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_cache_omnifunc=0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_show_diagnostics_ui = 1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_key_invoke_completion='<M-;>'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_server_python_interpreter='/usr/bin/python'
set completeopt-=preview
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '!'
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>
let g:ycm_filetype_blacklist={
        \ 'tagbar': 1,
        \}
let g:ycm_filetype_whitelist = {
                        \ "c":1,
                        \ "cpp":1,
                        \ "objc":1,
                        \ "sh":1,
                        \ "zsh":1,
                        \ "zimbu":1,
                        \ }
" }}}1