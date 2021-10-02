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

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
