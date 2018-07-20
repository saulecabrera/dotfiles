set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'mhinz/vim-startify'
Plugin 'Shougo/unite.vim'
Plugin 'tpope/vim-vinegar'

"Colors
Plugin 'whatyouhide/vim-gotham'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'trevordmiller/nova-vim'
Plugin 'arcticicestudio/nord-vim'

"Colors - Airline
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Elixir
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'

"Erlang
Plugin 'vim-erlang/vim-erlang-runtime.git'
Plugin 'vim-erlang/vim-erlang-compiler.git'
Plugin 'vim-erlang/vim-erlang-omnicomplete.git'
Plugin 'vim-erlang/vim-erlang-tags.git'

"Ruby
Plugin 'vim-ruby/vim-ruby'

"Rust
Plugin 'wting/rust.vim'
Plugin 'jiangmiao/auto-pairs'

"Clojure
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'

"JS
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mxw/vim-jsx'

"TypeScript
Plugin 'leafgarland/typescript-vim'

"Elm
" This depends on:
" - elm
" - elm-format: code formatting
" - elm-oracle: code completion
" npm install -g {{ pkg }}
Plugin 'elmcast/elm-vim'

"LESS
Plugin 'groenewege/vim-less'

"Markdown
Plugin 'tpope/vim-markdown'
Plugin 'junegunn/goyo.vim'
Plugin 'iamcco/markdown-preview.vim'

"Jade
Plugin 'digitaltoad/vim-pug.git'

"Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'cohama/agit.vim'
Plugin 'tpope/vim-rhubarb'

"Docker
Plugin 'ekalinin/Dockerfile.vim'

"Editing
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tmux-plugins/vim-tmux-focus-events'
"Plugin 'ervandew/supertab'
Plugin 'tpope/vim-commentary'
Plugin 'Shougo/deoplete.nvim'
Plugin 'tpope/vim-surround'

" Search
Plugin 'haya14busa/incsearch.vim'
Plugin 'mhinz/vim-grepper'

"Linting
Plugin 'w0rp/ale'


call vundle#end()
filetype plugin indent on

" MAPPINGS
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>s :w<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gr :Grepper<CR>

" search
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" completion
set shortmess+=c
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Deoplete + Completion Framework
call deoplete#enable()
au User CmSetup call cm#register_source({'name' : 'deoplete',
        \ 'priority': 7,  
        \ 'abbreviation': '', 
        \ })
inoremap <silent> <Plug>_ <C-r>=g:Deoplete_ncm()<CR>
func! g:Deoplete_ncm()
  call cm#complete('deoplete', cm#context(), g:deoplete#_context.complete_position + 1, g:deoplete#_context.candidates)
  return ''
endfunc


if has('gui_running')
  set macligatures "this will only work when using fonts w/ligatures i.e. Fira Code
  set guifont=DejaVu\ Sans\ Code:h13
  colorscheme gruvbox
  set guioptions-=R
  set guioptions-=r
  set guioptions-=L
  set guioptions-=l
else
  if $TERM_PROGRAM =~ "iTerm"
    set termguicolors
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  endif
    colorscheme nord
  " colorscheme gruvbox
  " let g:gruvbox_termcolors=256
  " let g:gruvbox_contrast_dark="medium"
endif
set background=dark
set cursorline
set number
syntax on
set backspace=indent,eol,start
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set ignorecase
set smartcase
set hlsearch
set clipboard=unnamed

" incsearch
let g:incsearch#auto_nohlsearch = 1

" ctrl-p
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']

"airline configuration
let g:airline#extensions#tabline#enabled = 0
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'
let g:airline_powerline_fonts = 0
let g:airline_solarized_normal_green = 1
let g:airline_theme = 'nova'
set laststatus=2 "for vim-airline to work

"enable jsx in files with js extension
let g:jsx_ext_required = 0

"Markdown preview
let g:mkdp_refresh_slow = 1

"disabling arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"gitgutter
set updatetime=250

set mouse=a


" fold method
set foldmethod=indent
set foldnestmax=2

"lint only on file save, not continously
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

" Startify options
let g:startify_change_to_vcs_root = 1
let g:startify_lists = [
        \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
        \ { 'header': ['   MRU'],            'type': 'files' },
        \ { 'header': ['   Sessions'],       'type': 'sessions' },
\ ]

" Grepper cfg
" brew install ripgrep
runtime plugin/grepper.vim
let g:grepper.tools = ['rg', 'grep']


autocmd VimEnter * if !argc() | Startify | wincmd w | endif

