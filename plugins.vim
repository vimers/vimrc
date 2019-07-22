call plug#begin('~/.vim/plugged')
Plug 'inkarkat/vim-ingo-library' "need by vim-mark
Plug 'inkarkat/vim-mark'
Plug 'majutsushi/tagbar'
Plug 'bogado/file-line'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Valloric/YouCompleteMe'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vimers/vim-youdao'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-unimpaired'
Plug 'itchyny/lightline.vim'
Plug 'hari-rangarajan/CCTree'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-utils/vim-cscope'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'scrooloose/nerdcommenter'
call plug#end()
