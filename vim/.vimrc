
set history=7000

filetype plugin on
filetype indent on

set autoread
set nocompatible 
set showmatch
set wildmenu


let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

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


set gfn="Anonymous Pro 11"
set guifont="Anonymous Pro 11"
set shell=/bin/bash
if has("gui_running")
  set guioptions-=T
  set t_Co=256
  set background=dark
  colorscheme wombat256mod
else
  "colorscheme wombat
  colorscheme softblue
  "colorscheme wombat256mod
  set background=dark
endif

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

set textwidth=80
set showcmd             " display incomplete commands
set ttyfast             " smoother changes

" show the registers from things cut/yanked
nmap <leader>r :registers<CR>



" Map space to / (search) and c-space to ? (backgwards search)
map <silent> <leader><space> :noh<cr>

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,300 bd!<cr>


" Use the arrows to something usefull
" map <right> :bn<cr>
" map <left> :bp<cr>

" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Specify the behavior when switching between buffers 
try
  set switchbuf=usetab
  set stal=2
catch
endtry

" Always hide the statusline
set laststatus=2

"  Do :help cope if you are unsure what cope is. It's super useful!
map <leader>cc :botright cope<cr>
map <leader>n :cn<cr>
map <leader>p :cp<cr>

set pastetoggle=<F2>
" Making it so ; works like : for commands. Saves typing and eliminates :W style typos due to lazy holding shift.
nnoremap ; :

" experimental
" set cursorline

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace

"clearing highlighted search
nmap <silent> <leader>/ :nohlsearch<CR>




  let g:fuf_modesDisable = []
  let g:fuf_mrufile_maxItem = 400
  let g:fuf_mrucmd_maxItem = 400
  nnoremap <silent> sj     :FufBuffer<CR>
  nnoremap <silent> sk     :FufFileWithCurrentBufferDir<CR>
  nnoremap <silent> sK     :FufFileWithFullCwd<CR>
  nnoremap <silent> s<C-k> :FufFile<CR>
  nnoremap <silent> sl     :FufCoverageFileChange<CR>
  nnoremap <silent> sL     :FufCoverageFileChange<CR>
  nnoremap <silent> s<C-l> :FufCoverageFileRegister<CR>
  nnoremap <silent> sd     :FufDirWithCurrentBufferDir<CR>
  nnoremap <silent> sD     :FufDirWithFullCwd<CR>
  nnoremap <silent> s<C-d> :FufDir<CR>
  nnoremap <silent> sn     :FufMruFile<CR>
  nnoremap <silent> sN     :FufMruFileInCwd<CR>
  nnoremap <silent> sm     :FufMruCmd<CR>
  nnoremap <silent> su     :FufBookmarkFile<CR>
  nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
  vnoremap <silent> s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
  nnoremap <silent> si     :FufBookmarkDir<CR>
  nnoremap <silent> s<C-i> :FufBookmarkDirAdd<CR>
  nnoremap <silent> st     :FufTag<CR>
  nnoremap <silent> sT     :FufTag!<CR>
  nnoremap <silent> s<C-]> :FufTagWithCursorWord!<CR>
  nnoremap <silent> s,     :FufBufferTag<CR>
  nnoremap <silent> s<     :FufBufferTag!<CR>
  vnoremap <silent> s,     :FufBufferTagWithSelectedText!<CR>
  vnoremap <silent> s<     :FufBufferTagWithSelectedText<CR>
  nnoremap <silent> s}     :FufBufferTagWithCursorWord!<CR>
  nnoremap <silent> s.     :FufBufferTagAll<CR>
  nnoremap <silent> s>     :FufBufferTagAll!<CR>
  vnoremap <silent> s.     :FufBufferTagAllWithSelectedText!<CR>
  vnoremap <silent> s>     :FufBufferTagAllWithSelectedText<CR>
  nnoremap <silent> s]     :FufBufferTagAllWithCursorWord!<CR>
  nnoremap <silent> sg     :FufTaggedFile<CR>
  nnoremap <silent> sG     :FufTaggedFile!<CR>
  nnoremap <silent> so     :FufJumpList<CR>
  nnoremap <silent> sp     :FufChangeList<CR>
  nnoremap <silent> sq     :FufQuickfix<CR>
  nnoremap <silent> sy     :FufLine<CR>
  nnoremap <silent> sh     :FufHelp<CR>
  nnoremap <silent> se     :FufEditDataFile<CR>
  nnoremap <silent> sr     :FufRenewCache<CR>





" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
set tags=~/.vim/stdtags,tags,.tags,../tags
" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
" set Ctrl+j in insert mode, like VS.Net
imap <C-j> <C-X><C-O>
" set completeopt as don't show menu and preview
set completeopt=menuone

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif


map <C-L> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
map <C-K> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

map <C-F> :TlistToggle <CR>
nnoremap <silent> <C-D> :bd <CR>

map <leader>t :NERDTreeToggle<CR>

set ofu=syntaxcomplete#Complete

noremap <C-left> :bprev<CR>
noremap <C-right> :bnext<CR>

"set mouse=a

let g:miniBufExplModSelTarget=1

" --------------------
" TagList
" --------------------
" F4: Switch on/off TagList
nnoremap <silent> <F4> :TlistToggle<CR>
"let Tlist_Show_One_File = 1 " Displaying tags for only one file~
let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_Use_Right_Window = 1 " split to the right side of the screen
let Tlist_Sort_Type = "order" " sort by order or name
let Tlist_Display_Prototype = 0 " do not show prototypes and not tags in the taglist window.
let Tlist_Compart_Format = 1 " Remove extra information and blank lines from the taglist window.
let Tlist_GainFocus_On_ToggleOpen = 1 " Jump to taglist window on open.
let Tlist_Display_Tag_Scope = 1 " Show tag scope next to the tag name.
let Tlist_Close_On_Select = 0 " Close the taglist window when a file or tag is selected.
let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.
let Tlist_WinWidth = 25
" let Tlist_Ctags_Cmd = 'ctags --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++'
" very slow, so I disable this
let Tlist_Process_File_Always = 1 " To use the :TlistShowTag and the :TlistShowPrototype commands without the taglist window and the taglist menu, you should set this variable to 1.
":TlistShowPrototype [filename] [linenumber]
