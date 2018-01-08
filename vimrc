set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'mhinz/vim-startify'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'

"Colors
Plugin 'whatyouhide/vim-gotham'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/vim-tomorrow-theme'

"Colors - Airline
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Elixir
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'

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

"LESS
Plugin 'groenewege/vim-less'

"Markdown
Plugin 'tpope/vim-markdown'
Plugin 'junegunn/goyo.vim'

"Jade
Plugin 'digitaltoad/vim-pug.git'

"Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'cohama/agit.vim'

"Editing
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-commentary'
Plugin 'sickill/vim-pasta'

" Search
Plugin 'haya14busa/incsearch.vim'
Plugin 'mhinz/vim-grepper'

" Window management
Plugin 't9md/vim-choosewin'

"Linting
Plugin 'w0rp/ale'
call vundle#end()
filetype plugin indent on

" MAPPINGS
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlPMixed<CR>
nnoremap <Leader>s :w<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>x :Explore<CR>
nmap - <Plug>(choosewin)
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

"workaround for nvim clipboard
vnoremap <LeftRelease> "*ygv

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
  colorscheme gruvbox
  let g:gruvbox_termcolors=256
  let g:gruvbox_contrast_dark="soft"
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

"airline configuration
let g:airline#extensions#tabline#enabled = 0
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'
let g:airline_powerline_fonts = 0
let g:airline_solarized_normal_green = 1
let g:airline_theme = 'gruvbox'
set laststatus=2 "for vim-airline to work

"enable jsx in files with js extension
let g:jsx_ext_required = 0

"enabling comments in italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
"highlight Comment cterm=italic

"vim-instant-markdown config
"display changes on save
let g:instant_markdown_slow = 1
"do not auto start plugin on opening a markdown buffer
"start the plugin manually with :InstantMarkdownPreview
let g:instant_markdown_autostart = 0

"omnicompletion configuration
set omnifunc=syntaxcomplete#Complete

"disabling arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"gitgutter
set updatetime=250

set mouse=a

"lint only on file save, not continously
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

" Startify options
let g:startify_change_to_vcs_root = 1
let g:startify_list_order = ['dir', 'files']

" VimFiler options
let g:vimfiler_as_default_explorer = 1
call vimfiler#custom#profile('default', 'context', {
   \ 'safe' : 0,
\ })

autocmd VimEnter *
                \   if !argc()
                \ |   Startify
                \ |   VimFilerExplorer
                \ |   wincmd w
                \ | endif

autocmd BufEnter * if (!has('vim_starting') && winnr('$') == 1
	\ && &filetype ==# 'vimfiler') | quit | endif

