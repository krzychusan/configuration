"""""""""""""""""""""""""""
" Default settings
"""""""""""""""""""""""""""

set history=10000

filetype plugin on
filetype indent on

set autoread
set nocompatible
set showmatch
set wildmenu

let mapleader = ","
let g:maplader = ","

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros 

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell

set t_vb=
set tm=500

set nu
syntax on

set encoding=utf8
set fileencoding=utf8
set ffs=unix,dos,mac "Default file types


set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines

"set textwidth=80
set showcmd             " display incomplete commands
set ttyfast             " smoother changes

" Always hide the statusline
set laststatus=2

set pastetoggle=<F2>

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace


"""""""""""""""""""""""""""
" Colors
"""""""""""""""""""""""""""

set gfn="Anonymous Pro 11"
set guifont="Anonymous Pro 11"
set shell=/bin/zsh
set t_Co=256
set background=dark
if has("gui_running")
  set guioptions-=T
  "colorscheme wombat256
  "colorscheme inkpot
  colorscheme darkspectrum
else
  "colorscheme vividchalk
  "colorscheme distinguished
  "colorscheme twilight
  "colorscheme wombat256
  "colorscheme wombat256mod
  "colorscheme darkspectrum
  colorscheme inkpot
  "colorscheme desert256
endif


"""""""""""""""""""""""""""'
" Configuration keys
"""""""""""""""""""""""""""

" Fast saving
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" show the registers from things cut/yanked
nmap <leader>r :registers<CR>

" Map space to / (search) and c-space to ? (backgwards search)
map <silent> <leader><space> :noh<cr>

" You don't need to keep Shift. Saves typing and avoid typos
nnoremap ; :


