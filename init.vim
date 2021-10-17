let mapleader = ","
" plug setting {{{1
call plug#begin('~/.vim/plugged')
Plug 'inkarkat/vim-ingo-library' "need by vim-mark
Plug 'inkarkat/vim-mark'
Plug 'bogado/file-line'
" file explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
" lsc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" fuzzy search
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" git plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'kdheepak/lazygit.nvim'
" common shortcut keys
Plug 'tpope/vim-unimpaired'
Plug 'gcmt/wildfire.vim'
Plug 'mg979/vim-visual-multi'
" appearence
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
" highlight
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'scrooloose/nerdcommenter'
" snippets
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
" registers
Plug 'junegunn/vim-peekaboo'
call plug#end()
" }}}1

" include other config {{{1
for config_file in globpath('~/.config/nvim/plug_configs', '*.vim', 1, 1)
	exec 'source '.fnameescape(config_file)
endfor
" }}}1

" common key mappings {{{1
inoremap jk <esc>
inoremap <esc> <nop>
" }}}1
