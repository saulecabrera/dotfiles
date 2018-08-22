set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'Shougo/unite.vim'
Plug 'tpope/vim-vinegar'

"Colors
Plug 'whatyouhide/vim-gotham'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'trevordmiller/nova-vim'
Plug 'arcticicestudio/nord-vim'

"Colors - Airline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Elixir
Plug 'elixir-lang/vim-elixir' , { 'for': 'elixir' }
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }

"Ruby
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }

"Rust
Plug 'wting/rust.vim'
Plug 'jiangmiao/auto-pairs'

"Clojure
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-classpath', { 'for': 'clojure' }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }

"JS
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffeescript' }
Plug 'mxw/vim-jsx'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm i -g tern' }

"TypeScript
Plug 'leafgarland/typescript-vim', { 'do': 'npm i -g typescript', 'for': ['typescript', 'typescript.tsx'] }
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }

"Elm
" This depends on:
" - elm
" - elm-format: code formatting
" - elm-oracle: code completion
" npm install -g {{ pkg }}
Plug 'elmcast/elm-vim', { 'for': 'elm' }

"LESS
Plug 'groenewege/vim-less'

"Markdown
Plug 'tpope/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'iamcco/markdown-preview.vim'

"Jade
Plug 'digitaltoad/vim-pug'

"Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'
Plug 'tpope/vim-rhubarb'

"Docker
Plug 'ekalinin/Dockerfile.vim'

"Editing
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-commentary'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-surround'

" Search
Plug 'haya14busa/incsearch.vim'
Plug 'mhinz/vim-grepper'

"Linting
Plug 'w0rp/ale'

"Dev icons
Plug 'ryanoasis/vim-devicons'

call plug#end()


filetype plugin indent on

" MAPPINGS
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>s :w<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gr :Grepper<CR>
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

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
  let g:gruvbox_contrast_light="medium"
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
set encoding=utf-8
set lazyredraw

" incsearch
let g:incsearch#auto_nohlsearch = 1

" ctrl-p
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']

"airline configuration
let g:airline#extensions#tabline#enabled = 0
let g:airline_left_sep = ' '
let g:airline_right_sep = ' '
let g:airline_inactive_collapse = 1
let g:airline_powerline_fonts = 1
let g:airline_solarized_normal_green = 1
let g:airline_theme = 'gruvbox'
set laststatus=2 "for vim-airline to work

" Prevent mix recompile with ale
let $MIX_ENV = 'test'

"enable jsx in files with js extension
let g:jsx_ext_required = 0

"Markdown preview
let g:mkdp_refresh_slow = 1

"netrw
let g:netrw_banner = 1
let g:netrw_preview = 1

"disabling arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"gitgutter
set updatetime=250

set mouse=a

set splitbelow
set splitright


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

" Deoplete + Completion Framework
" python 3
" pip3 install neovim
" pip3 install --upgrade neovim
let g:deoplete#enable_at_startup = 1 

" Grepper cfg
" brew install ripgrep
runtime plugin/grepper.vim
let g:grepper.tools = ['rg', 'grep']

autocmd VimEnter * if !argc() | Startify | wincmd w | endif

