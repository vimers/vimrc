let mapleader = ","
for config_file in globpath('~/.config/nvim/plug_configs', '*.vim', 1, 1)
	exec 'source '.fnameescape(config_file)
endfor
inoremap jk <esc>
inoremap <esc> <nop>
