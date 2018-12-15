" vundle settings {{{1
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tagbar'
Plugin 'file-line'
Plugin 'scrooloose/nerdtree'
Plugin 'genutils'
Plugin 'lookupfile'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vimers/vim-youdao'
Plugin 'amitab/vim-unite-cscope'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'brookhong/cscope.vim'
Plugin 'hari-rangarajan/CCTree'
call vundle#end()
filetype plugin indent on
" }}}1
