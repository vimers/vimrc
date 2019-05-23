" File encoding setting {{{1
set encoding=utf-8
set fenc=utf-8
set fileencodings=utf-8,gbk,ucs-bom,cp936
" }}}1

" backup files setting {{{1
set noswapfile
set nobackup
" }}}1

" Indent setting {{{1
set autoindent
set cindent
set cinoptions=g0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
autocmd BufRead,BufNewFile *.c,*.h,*.hpp,*.java,*.cpp,*.cc,*.xml,*.py,*.lua,CMakeLists.txt set expandtab
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
" noremap <Up> <nop>
" noremap <Down> <nop>
" noremap <Left> <nop>
" noremap <Right> <nop>
set mouse=a
" }}}1

" clipboard settings {{{1
set clipboard=unnamed
set tw=0
set isfname-==
" }}}1

" Scroll Setting {{{1
set scrolloff=3
" }}}1

" Buffer control mapper {{{1
map <leader>bd :Bclose<CR>
map <leader>ba :1,1000 bd!<CR>
" }}}1

" Tab key map {{{1
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
" }}}1

set nowrap
set backspace=2
set noautochdir
set hidden
