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
" syntax highlight
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" lsc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-telescope/telescope.nvim'
Plug 'fannheyward/telescope-coc.nvim'
" fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" git plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'kdheepak/lazygit.nvim'
" common shortcut keys
Plug 'tpope/vim-unimpaired'
Plug 'mg979/vim-visual-multi'
" appearence
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
" highlight
Plug 'scrooloose/nerdcommenter'
" snippets
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
" registers
Plug 'junegunn/vim-peekaboo'
" cursor move
Plug 'folke/flash.nvim'
" terminal
Plug 'voldikss/vim-floaterm'
" debug
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'
call plug#end()
" }}}1

" coc.nvim plugins {{{1
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-pyright', 'coc-clangd', 'coc-java', 'coc-explorer',
			\ 'coc-snippets', 'coc-prettier', 'coc-translator', 'coc-pairs', 'coc-cmake',
			\ 'coc-emoji']
" }}}1

" include other config {{{1
for config_file in globpath('~/.config/nvim/plug_configs', '*.vim', 1, 1)
	exec 'source '.fnameescape(config_file)
endfor
" }}}1

if has('nvim')
	lua require('treesitter')
	lua require('telescope_config')
	lua require('dap_config')
	lua require('flash_config')
endif

" common key mappings {{{1
inoremap jk <esc>
inoremap <esc> <nop>
" }}}1
