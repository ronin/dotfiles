" --------------------
" Plugins
" --------------------

execute pathogen#infect()

" --------------------
" General
" --------------------

set nocompatible
set history=500
set undolevels=1000
set encoding=utf8
set ffs=unix,dos,mac

filetype plugin on
filetype indent on

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

set autoread
set autochdir

set nobackup
set nowritebackup
set noswapfile

set list listchars=tab:»·,trail:·,nbsp:·
set tabpagemax=50

set hidden
set foldcolumn=1

" --------------------
" GUI
" --------------------

set relativenumber
set numberwidth=5

set noerrorbells
set visualbell
set t_vb=
set tm=500

set ruler
set textwidth=80
set colorcolumn=+1
set showcmd

set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

set lazyredraw

set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

set cmdheight=2
set complete-=i

set splitbelow
set splitright

set display+=lastline

set gfn=Hack:h14,Source\ Code\ Pro:h15,Menlo:h15

" --------------------
"  Text formatting
" --------------------

set formatoptions-=t
set nojoinspaces

set backspace=indent,eol,start
set whichwrap+=<,>,h,l
set nowrap
set showmatch
set nrformats-=octal

syntax enable

" --------------------
" Indentation
" --------------------

set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set tabstop=2
set shiftround

" --------------------
" Auto-Completion
" --------------------

set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" --------------------
" Scrolling
" --------------------

set scrolloff=1
set sidescrolloff=5
set sidescroll=1

" --------------------
" Searching
" --------------------

set hlsearch
set smartcase
set ignorecase
set incsearch

" --------------------
" Functions
" --------------------

" Returns true if paste mode is enabled
function! HasPaste()
  if &paste
    return 'PASTE MODE '
  endif
  return ''
endfunction

" --------------------
" Mappings
" --------------------

let mapleader=","

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <leader>e :Explore<cr>

nnoremap j gj
nnoremap k gk

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
