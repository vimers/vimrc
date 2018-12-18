let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=31
let NERDTreeIgnore=['\.pyc','\~$','\.swp','\.git']
let NERDTreeShowBookmarks=1
let NERDTreeMinimalUI=1
" when open vim without parameter,show NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close NERDTree when no file opened
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

nmap <F4> :NERDTreeToggle<CR>
