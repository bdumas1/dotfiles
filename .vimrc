syntax on
filetype plugin indent on

set background=dark

colorscheme solarized8

set title

set showcmd                         " Display incomplete commands

set number                          " Show line numbers
set ruler                           " Show cursor position

set incsearch                       " Highlight matches as you type
set hlsearch                        " Highlight matches
set ignorecase                      " set case insensitivity
set smartcase                       " unless there's a capital letter
set wrap                            " Turn on line wrapping
set scrolloff=3                     " Show 3 lines of context around the cursor

set visualbell                      " No beeping
set shortmess+=filmnrxoOtT          " abbrev. of messages (avoids 'hit enter')

set nobackup                        " Don't make a backup before overwriting a file
set nowritebackup                   " And again
set noswapfile                      " Use an SCM instead of swap files

set laststatus=2                    " Show the status line all the time

set copyindent                      " copy the previous indentation on autoindenting
set shiftround                      " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                       " set show matching parenthesis

set backspace=indent,eol,start      " http://vim.wikia.com/wiki/Backspace_and_delete_problems

set undolevels=1000                 " use many levels of undo

set lazyredraw                      " Make plugin smoother

" Tabs and indentation
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Copy
vnoremap <C-c> y

" Paste
nnoremap <C-v> p
inoremap <C-v> <ESC>pi

" Cut
vnoremap <C-x> x

" Copy/Paste/Undo
" Undo
nnoremap <C-z> <nop>
vnoremap <C-z> <nop>
inoremap <C-z> <nop>

nnoremap <C-z> u
vnoremap <C-z> u
inoremap <C-z> <C-O>u

" Make the view port scroll faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nnoremap <C-p> 3<C-p>

" Text selection
nmap <S-Up> V
nmap <S-Down> V
nmap <S-Left> v
nmap <S-Right> v
vmap <S-Up> k
vmap <S-Down> j
vmap <S-Left> h
vmap <S-Right> l

map <C-a> <esc>ggVG<CR>

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

"" Plugins

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'minimalist'
let g:airline_extensions = ['ctrlp', 'hunks', 'branch', 'whitespace']
set noshowmode