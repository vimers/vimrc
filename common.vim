" File encoding setting {{{1
set encoding=utf-8
set fenc=utf-8
set fileencodings=utf-8,gbk,ucs-bom,cp936
" }}}1

" backup files setting {{{1
set noswapfile
set nobackup
" }}}1

" scheme color setting {{{1
syntax enable
filetype on
set t_Co=256
let g:solarized_termcolors=256
set background=dark
set fillchars=vert:\ ,stl:\ ,stlnc:\
colorscheme solarized
" }}}1

" Indent setting {{{1
set autoindent
set cindent
set cinoptions=g0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
autocmd BufRead,BufNewFile *.c,*.h,*.java,*.cpp,*.cc,*.xml,*.py,*.lua,CMakeLists.txt set expandtab
" }}}1

" Hightlight setting {{{1
set hlsearch
set incsearch
" }}}1

" Fold setting {{{1
autocmd filetype c,cpp,java,python setlocal foldmethod=syntax
autocmd filetype c,cpp,java,python normal zR
autocmd filetype txt,vim setlocal foldmethod=marker
" }}}1

" jump last leave position {{{1
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
" save search register and restore it when edit next file
autocmd BufLeave * let g:search_save=@/
autocmd BufEnter * if exists("g:search_save") | let @/=g:search_save | endif
" }}}1

" arrow key and mouse setting {{{1
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
set mouse=nvi
" }}}1

" clipboard settings {{{1
set clipboard=unnamed
set tw=0
set isfname-==
" }}}1

" Scroll Setting {{{1
set scrolloff=3
" }}}1

set nowrap
set cursorcolumn
set backspace=2
set noautochdir
set hidden
set cursorline
set colorcolumn=81
