set nocompatible
filetype off

call plug#begin('~/.local/share/nvim/plugged')


" CocInstall coc-rust-analyzer
" To enable rust support

" Telescope
" brew install ripgrep
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

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

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Tree
Plug 'tpope/vim-vinegar'

" Comments
Plug 'tpope/vim-commentary'

" Git
Plug 'jreybert/vimagit'

" Window Management
Plug 'spolu/dwm.vim'

" Haskell
Plug 'neovimhaskell/haskell-vim'

" Ocaml
Plug 'ocaml/vim-ocaml'

" Ruby
Plug 'vim-ruby/vim-ruby'

" Zen
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'

" Hop
Plug 'delphinus/hop.nvim'

" TOML
Plug 'cespare/vim-toml'

" Elixir
" Also :CocInstall coc-elixir
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'elixir-editors/vim-elixir'

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

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

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
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
" set t_Co=256
set termguicolors
set background=dark
colorscheme solarized8_flat
let g:gruvbox_contrast_dark='medium'

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Telescope
map <silent> <leader>ff <cmd>Telescope find_files<cr>
map <silent> <leader>fs <cmd>Telescope live_grep<cr>


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
nnoremap <silent> <leader>gs :Magit<CR>

" Commits
nnoremap <silent> <leader>gh <cmd>Telescope git_commits<cr>
nnoremap <silent> <leader>gb <cmd>Telescope git_bcommits<cr>

" Windows
nnoremap <silent> <leader>wc :call DWM_New()<CR>
nnoremap <silent> <leader>wr :call DWM_Rotate(1)<CR>
nnoremap <silent> <leader>wn <C-W>w
nnoremap <silent> <leader>wf :call DWM_Focus()<CR>

" Hop
nnoremap <leader>hw :HopWord<cr>
nnoremap <leader>hl :HopLine<cr>
nnoremap <leader>s :HopPattern<cr>


" Last Buffer
nnoremap <leader><tab> :e#<cr>
