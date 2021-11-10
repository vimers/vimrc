let mapleader = ","
" plug setting {{{1
call plug#begin('~/.vim/plugged')
" mark word with different colors
Plug 'inkarkat/vim-ingo-library' "need by vim-mark
Plug 'inkarkat/vim-mark'
" open file with line number
Plug 'bogado/file-line'
" nerdfont icons
Plug 'ryanoasis/vim-devicons'
" file explorer use coc-explorer
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

" coc.nvim plugins {{{1
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-pyright', 'coc-clangd', 'coc-java', 'coc-explorer',
			\ 'coc-snippets', 'coc-prettier', 'coc-translator', 'coc-pairs',
			\ 'coc-emoji']
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
