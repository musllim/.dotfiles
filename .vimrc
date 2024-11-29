" Basic Settings
set nocompatible              " Use Vim settings rather than Vi settings
filetype plugin indent on     " Enable file type detection and plugins
syntax enable                 " Enable syntax highlighting
set encoding=utf-8           " Use UTF-8 encoding
set number                   " Show line numbers
set relativenumber          " Show relative line numbers
set hidden                  " Allow switching buffers without saving
set smartindent             " Smart auto-indenting
set expandtab               " Use spaces instead of tabs
set tabstop=4              " Number of spaces for a tab
set shiftwidth=4           " Number of spaces for auto-indent
set softtabstop=4         " Number of spaces for a tab in insert mode
set mouse=a               " Enable mouse support
set clipboard=unnamed     " Use system clipboard
set cursorline           " Highlight current line
set wildmenu             " Better command-line completion
set showmatch           " Show matching brackets
set incsearch          " Incremental search
set hlsearch          " Highlight search results
set ignorecase       " Case insensitive search
set smartcase       " Case sensitive if search contains uppercase

" Status Line Configuration
" set laststatus=2   " Always show status line
" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)

" Built-in File Explorer Enhancement
let g:netrw_banner = 0        " Remove banner
let g:netrw_liststyle = 3     " Tree view
let g:netrw_browse_split = 4   " Open in previous window
let g:netrw_altv = 1          " Split to the right
let g:netrw_winsize = 10 " Set width to 25%

" Custom Key Mappings
" Leader key
let mapleader = ","

" Toggle file explorer
nnoremap <leader>e :Lexplore<CR>

" Tab navigation
nnoremap <C-t> :tabnew<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-p> :!vim $(fzf --preview="bat --color=always {}")<CR>

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Quick save
nnoremap <leader>w :w<CR>

" Quick quit
nnoremap <leader>q :q<CR>

" Buffer navigation
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bd :bdelete<CR>

" Remove search highlighting
nnoremap <leader><space> :nohlsearch<CR>

" Better indent/unindent
vnoremap < <gv
vnoremap > >gv

" Auto Commands
" Remember last position
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Automatically create directories before save if they don't exist
augroup Mkdir
    autocmd!
    autocmd BufWritePre *
        \ if !isdirectory(expand("<afile>:p:h")) |
        \   call mkdir(expand("<afile>:p:h"), "p") |
        \ endif
augroup END

" File type specific settings
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType javascript setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType html setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType css setlocal expandtab shiftwidth=2 softtabstop=2

" Colors and Theme
set background=dark
" Uncomment the following if you want to use a specific colorscheme
" colorscheme desert

" Split Settings
set splitbelow              " Open new splits below
set splitright             " Open new splits right

" Backup Settings
set nobackup              " No backup files
set nowritebackup        " No backup files during editing
set noswapfile          " No swap files

" Search Settings
set path+=**           " Search down into subfolders
