" Dark powered mode of SpaceVim, generated by SpaceVim automatically.
let g:spacevim_enable_debug = 1
let g:spacevim_realtime_leader_guide = 1
call SpaceVim#layers#load('incsearch')
call SpaceVim#layers#load('lang#c')
call SpaceVim#layers#load('lang#elixir')
call SpaceVim#layers#load('lang#go')
call SpaceVim#layers#load('lang#haskell')
call SpaceVim#layers#load('lang#java')
call SpaceVim#layers#load('lang#javascript')
call SpaceVim#layers#load('lang#lua')
call SpaceVim#layers#load('lang#perl')
call SpaceVim#layers#load('lang#php')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#rust')
call SpaceVim#layers#load('lang#swig')
call SpaceVim#layers#load('lang#tmux')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('lang#xml')
call SpaceVim#layers#load('shell')   
call SpaceVim#layers#load('tools#screensaver')
let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_debug = 1
let g:deoplete#auto_complete_delay = 150
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1
let g:spacevim_enable_neomake = 1
let g:spacevim_enable_cursorline = 0
if executable('vimlint')
  call add(g:neomake_vim_enabled_makers, 'vimlint') 
endif
if executable('vint')
  call add(g:neomake_vim_enabled_makers, 'vint') 
endif
if has('python3')
  let g:ctrlp_map = ''
  nnoremap <silent> <C-p> :Denite file_rec<CR>
endif
let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''

let g:spacevim_relativenumber = 0
let mapleader = ","

let g:spacevim_disabled_plugins = [
  \ ]
let g:spacevim_custom_plugins = [
  \ ['plasticboy/vim-markdown', {'on_ft' : 'markdown'}],
  \ ['elzr/vim-json', {'on_ft' : 'json'}],
  \ ['digitaltoad/vim-pug', {'on_ft' : 'jade'}],
  \ ['ElmCast/elm-vim', {'on_ft' : 'elm'}],
  \ ['mxw/vim-jsx'],
  \ ['pangloss/vim-javascript'],
  \ ['styled-components/vim-styled-components'],
  \ ['jaawerth/nrun.vim'],
  \ ['Konfekt/FastFold'],
  \ ]

"au BufEnter *.js let b:neomake_javascript_eslint_exe = nrun#Which('eslint')
"au BufEnter *.jsx let b:neomake_javascript_eslint_exe = nrun#Which('eslint')

let g:neomake_verbose=3
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = system('PATH=$(npm bin):$PATH && which eslint | tr -d "\n"')
let g:neomake_open_list = 0
let g:jsx_ext_required = 0
let g:indentLine_newVersion=0
" indentation issues:
" not sure if the configuration
" provided by spacevim to deal
" with this actually works
set backspace=indent,eol,start
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set foldmethod=syntax
