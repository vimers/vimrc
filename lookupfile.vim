" LookupFile settings {{{1
let g:LookupFile_MinPatLength = 2
let g:LookupFile_PreserveLastPattern = 0
let g:LookupFile_PreservePatternHistory = 1
let g:LookupFile_AlwaysAcceptFirst = 1
let g:LookupFile_AllowNewFiles = 1
let g:name_file = findfile("lookup.tags", ".;")
let g:LookupFile_TagExpr='g:name_file'

func! LookupFile_IgnoreCaseFunc(pattern)
        let _tags = &tags
        try
                let &tags = eval(g:LookupFile_TagExpr)
                let newpattern = '\c' . a:pattern
                let tags = taglist(newpattern)
        catch
                echohl ErrorMsg | echo "Exception: " . v:exception | echohl NONE
                return ""
        finally
                let &tags = _tags
        endtry
        let files = map(tags, 'v:val["filename"]')
        return files
endfunc
let g:LookupFile_LookupFunc = 'LookupFile_IgnoreCaseFunc'
nmap <silent> <leader>lk :LUTags<cr>
nmap <silent> <leader>ll :LUBufs<cr>
nmap <silent> <leader>lw :LUWalk<cr>
" }}}1
