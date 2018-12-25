set laststatus=2
let g:lightline = {
        \ 'colorscheme': 'solarized',
        \ 'active': {
        \   'left': [ ['mode', 'paste'],
        \             ['gitbranch', 'gitversion', 'readonly', 'filename', 'modified'],
        \             ['ctrlpmark', 'tagbar']
        \           ]
        \ },
        \ 'component_function': {
        \   'gitbranch': 'fugitive#head',
        \   'gitversion': 'LightLineGitVersion',
        \ },
        \ 'component': {
        \   'tagbar': '%{tagbar#currenttag("[%s]", "", "f")}',
        \ },
        \ }

function! LightLineGitVersion()
        let fullname = expand('%')
        let gitversion = ''
        if fullname =~? 'fugitive://.*/\.git//0/.*'
                let gitversion = 'GitInd'
        elseif fullname =~? 'fugitive://.*/\.git//2/.*'
                let gitversion = 'GitTar'
        elseif fullname =~? 'fugitive://.*/\.git//3/.*'
                let gitversion = 'GitMer'
        elseif &diff == 1
                let gitversion = 'WorkCP'
        endif
        return gitversion
endfunction

set noshowmode
if !has('gui_running')
        set t_Co=256
endif
