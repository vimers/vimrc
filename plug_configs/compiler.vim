noremap <c-r> :call CompileAndRun()<CR>
func! CompileAndRun()
	if isdirectory('build') && filereadable('CMakeLists.txt')
		exec "!cmake --build build"
	elseif &filetype == 'c'
		exec "w"
		set splitbelow
		exec "!g++ % -o %<"
		:sp
		:res -5
		:term ./%<
	endif
endfunc
