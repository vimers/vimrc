call plug#begin('~/.vim/plugged')
Plug 'inkarkat/vim-ingo-library' "need by vim-mark
Plug 'inkarkat/vim-mark'
Plug 'bogado/file-line'
" file explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
" use plugin coc-git coc-json coc-python
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" fuzzy search
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-translate-me'
" git plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
" common shortcut keys
Plug 'tpope/vim-unimpaired'
" status line setting
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdcommenter'
" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()
