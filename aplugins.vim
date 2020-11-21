call plug#begin('~/.vim/plugged')
Plug 'inkarkat/vim-ingo-library' "need by vim-mark
Plug 'inkarkat/vim-mark'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'bogado/file-line'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
" use plugin coc-lists coc-git coc-json coc-python coc-explorer coc-snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-translate-me'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-unimpaired'
Plug 'itchyny/lightline.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()
