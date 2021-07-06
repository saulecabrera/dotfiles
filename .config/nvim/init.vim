set nocompatible
filetype off

call plug#begin('~/.local/share/nvim/plugged')


" CocInstall coc-rust-analyzer
" To enable rust support

" Files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Neomake build tool (mapped below to <c-b>)
Plug 'benekastah/neomake'

" Remove extraneous whitespace when edit mode is exited
Plug 'thirtythreeforty/lessspace.vim'

" Status bar mods
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'

" Theme
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'chriskempson/base16-vim'

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Tree
Plug 'tpope/vim-vinegar'

" Comments
Plug 'tpope/vim-commentary'

" Git
Plug 'jreybert/vimagit'
Plug 'f-person/git-blame.nvim'

" Window Management
Plug 'spolu/dwm.vim'

" Haskell
Plug 'neovimhaskell/haskell-vim'

" Ocaml
Plug 'ocaml/vim-ocaml'

" Ruby
Plug 'vim-ruby/vim-ruby'

" Hop
Plug 'delphinus/hop.nvim'

" TOML
Plug 'cespare/vim-toml'

" Elixir
" Also :CocInstall coc-elixir
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'elixir-editors/vim-elixir'

" Zen
Plug 'folke/zen-mode.nvim'

" Notes
Plug 'vimwiki/vimwiki'

" Sugar over shell commands
Plug 'tpope/vim-eunuch'

" Surround
Plug 'tpope/vim-surround'

call plug#end()

syntax on

" For plugins to load correctly
filetype plugin indent on

let mapleader = ","

"Clipboard
set clipboard=unnamedplus

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Mouse
set mouse=a

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬

" Color scheme (terminal)
" set t_Co=256
set termguicolors
colorscheme solarized8
set background=light
let g:gruvbox_contrast_dark='medium'

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Files
map <silent> <leader>ff <cmd>:Files<cr>
map <silent> <leader>f/ <cmd>:Rg<cr>
map <silent> <leader>fr <cmd>:Buffers<cr>

" Git
map <silent> <leader>gs <cmd>:GitFiles?<cr>
map <silent> <leader>gc <cmd>:Commits<cr>
map <silent> <leader>gbc <cmd>:BCommits<cr>


" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2


" Magit
nnoremap <silent> <leader>m :Magit<CR>


" Windows
nnoremap <silent> <leader>wn :call DWM_New()<CR>
nnoremap <silent> <leader>wr :call DWM_Rotate(1)<CR>
nnoremap <silent> <leader>w<tab> <C-W>w
nnoremap <silent> <leader>wf :call DWM_Focus()<CR>
nnoremap <silent> <leader>w/ <cmd>:Windows<CR>
nnoremap <silent> <leader>wz <cmd>:ZenMode<CR>

" Hop
nnoremap gw :HopWord<cr>
nnoremap gl :HopLine<cr>
nnoremap gs :HopPattern<cr>


" Last Buffer
nnoremap <leader><tab> :e#<cr>

" Mappings

nnoremap <leader><leader> <cmd>:Maps<CR>

" Vimwiki

let wiki = {}
let wiki.path = '~/vimwiki/'
let wiki.nested_syntaxes = {'bash': 'bash', 'haskell': 'haskell', 'rust': 'rust'}
let g:vimwiki_list = [wiki]


