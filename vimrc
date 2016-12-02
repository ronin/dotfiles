" --------------------
" General
" --------------------

set nocompatible

set history=500

filetype plugin on
filetype indent on

set encoding=utf8
set ffs=unix,dos,mac

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

set autoread
set autochdir

set nobackup
set nowritebackup
set noswapfile

set undolevels=1000


set list listchars=tab:»·,trail:·,nbsp:·
set tabpagemax=50

set hid
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

set ttimeout
set ttimeoutlen=100

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
