call plug#begin('~/.vim/plugged')
Plug 'inkarkat/vim-ingo-library' "need by vim-mark
Plug 'inkarkat/vim-mark'
Plug 'majutsushi/tagbar'
Plug 'bogado/file-line'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Valloric/YouCompleteMe'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'junegunn/fzf'
Plug 'vimers/vim-youdao'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'itchyny/lightline.vim'
Plug 'hari-rangarajan/CCTree'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-utils/vim-cscope'
Plug 'kien/ctrlp.vim'
call plug#end()
