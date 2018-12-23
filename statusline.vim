set laststatus=2
let g:lightline = {
	\ 'colorscheme': 'solarized',
	\ 'active': {
	\   'left': [ ['mode', 'paste'],
	\             ['gitbranch', 'readonly', 'filename', 'modified']
	\           ]
	\ },
	\ 'component_function': {
	\   'gitbranch': 'fugitive#head'
	\ },
	\ }
set noshowmode
if !has('gui_running')
	set t_Co=256
endif
