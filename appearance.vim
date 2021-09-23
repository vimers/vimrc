" color theme {{{1
syntax enable
filetype on
set t_Co=256
set background=dark
set fillchars=vert:\ ,stl:\ ,stlnc:\
colorscheme gruvbox
" }}}1

" Hightlight setting {{{1
set hlsearch
set incsearch
highlight CocFloating ctermbg=White
highlight CocFloating ctermfg=Black
" }}}1

" Highlight cpp {{{1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_posix_standard = 1
" }}}1

" Cursor show setting {{{1
" conflict with mark plugin
" set cursorcolumn
" set cursorline
set colorcolumn=120
" }}}1

set diffopt+=vertical

" set max highlight mark num
let g:mwDefaultHighlightingPalette = 'maximum'
let g:mwDefaultHighlightingNum = 9
nmap <unique> <Leader>rr <Plug>MarkRegex

" show linenum
" set number relativenumber
highlight LineNr term=bold ctermfg=grey ctermfg=NONE
