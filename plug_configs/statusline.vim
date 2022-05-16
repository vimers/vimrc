set laststatus=3
let g:lightline = {
            \ 'colorscheme': 'gruvbox',
            \ 'active': {
            \   'left': [  ['homemode' ],
            \             [ 'fugitive','gitgutter'],[ 'filename'],['curfunc' ],['cocerror'],['cocwarn'] ],
            \   'right':[ ['lineinfo'],
            \             [ 'percent'],['fileformat','fileencoding'] ]
            \ },
				\   'component': {
				\     'lineinfo': ' %3l:%-2v',
				\   },
            \ 'component_function': {
            \   'homemode': 'LightlineMode',
            \   'fugitive': 'LightLineFugitive',
            \   'gitgutter': 'LightLineGitGutter',
            \   'readonly': 'LightLineReadonly',
            \   'modified': 'LightLineModified',
            \   'filename': 'LightLineFname',
            \    'curfunc' : 'CocCurrentFunction',
            \   'cocerror': 'LightLineCocError',
            \   'cocwarn' : 'LightLineCocWarn',
            \   'filetype': 'LightLineFiletype',
            \   'fileformat': 'LightLineFileformat',
            \ },
            \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2"},
            \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3"}
            \ }

function! LightlineMode() 
    let nr = s:get_buffer_number() 
    return nr
endfunction
function! s:get_buffer_number() 
    let i = 0
    for nr in filter(range(1, bufnr('$')), 'bufexists(v:val) && buflisted(v:val)') 
        let i += 1
        if nr == bufnr('') 
            return i 
        endif 
    endfor 
    return '' 
endfunction

function! LightLineModified()
    if &filetype == "help"
        return ""
    elseif &modified
        return "+"
    elseif &modifiable
        return ""
    else
        return ""
    endif
endfunction

function! LightLineReadonly()
    if &filetype == "help"
        return ""
    elseif &readonly
        return ""
    else
        return ""
    endif
endfunction

function! LightLineFugitive()
    if exists("*fugitive#head")
        let _ = fugitive#head()
        return strlen(_) ? ''._ : ''
    endif
    return ''
endfunction

function! LightLineCoc() 
    if empty(get(g:, 'coc_status', '')) && empty(get(b:, 'coc_diagnostic_info', {})) 
        return ''
    endif 
    return trim(coc#status())
endfunction

function! LightLineCocError()
      let s:error_sign = get(g:, 'coc_status_error_sign')
	  let info = get(b:, 'coc_diagnostic_info', {})
      if empty(info)
          return ''
      endif
	  let errmsgs = []
	  if get(info, 'error', 0)
	    call add(errmsgs, s:error_sign . info['error'])
	  endif
	  return join(errmsgs, ' ') . ' ' . get(g:, 'coc_status', '')
endfunction

function! LightLineCocWarn() abort
      let s:warning_sign = get(g:, 'coc_status_warning_sign')
	  let info = get(b:, 'coc_diagnostic_info', {})
      if empty(info)
          return '' 
      endif
	  let warnmsgs = []
	  if get(info, 'warning', 0)
	    call add(warnmsgs, s:warning_sign . info['warning'])
	  endif
	  return join(warnmsgs, ' ') . ' ' . get(g:, 'coc_status', '')
endfunction

autocmd User CocDiagnosticChange call lightline#update()

function! LightLineGitGutter()
  if ! exists('*GitGutterGetHunkSummary')
        \ || ! get(g:, 'gitgutter_enabled', 0)
        \ || winwidth('.') <= 90
    return ''
  endif
  let symbols = ['+','~','-']
  let hunks = GitGutterGetHunkSummary()
  let ret = []
  for i in [0, 1, 2]
    if hunks[i] > 0
      call add(ret, symbols[i] . hunks[i])
    endif
  endfor
  return join(ret, ' ')
endfunction

function! LightLineFname() 
    let icon = (strlen(&filetype) ? ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') 
    let filename = LightLineFilename()
    if filename == ''
        return ''
    endif
    return join([filename, icon],'')
endfunction

function! LightLineFilename()
    return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
                \ ('' != expand('%:t') ? expand('%:t') : '') .
                \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! CocCurrentFunction() abort
	return get(b:, 'coc_current_function', '')
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! LightLineFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
let g:lightline#bufferline#show_number  = 2
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#filename_modifier = ':t'
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline#bufferline#number_map = {
\ 0: '➓ ', 1: '❶ ', 2: '❷ ', 3: '❸ ', 4: '❹ ',
\ 5: '❺ ', 6: '❻ ', 7: '❼ ', 8: '❽ ', 9: '❾ '}
