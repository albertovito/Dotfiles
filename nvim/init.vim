:let g:startify_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Recent']            },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:Hexokinase_highlighters = ['backgroundfull']
"let g:airline_theme = 'catppuccin_mocha'
:colorscheme codedark

" Set global clipboard
set clipboard+=unnamedplus

" disable backwards compatibility with vi
set nocompatible

" Icons suport
set encoding=UTF-8

" Copy-Paste out vim
vnoremap <C-S-c> "+y
map <C-S-v> "+p


" enable filetype plugins and indent
filetype plugin indent on

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

" adds line numbers
set number

" Enable mouse support
set mouse=a

" Always show current position
set ruler

" Enable syntax highlighting
syntax enable
set termguicolors

" Always show the status line
set laststatus=2
set noshowmode

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Different cursor in insert mode
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" Cursorlie 
set cursorline
hi CursorLine gui=bold guibg=none 
hi clear LineNr
hi CursorLineNr gui=bold guibg=none guifg=#ffffff


" Map auto complete of (, ", ', [,<
inoremap <  <><esc>i
inoremap (  ()<esc>i
inoremap [  []<esc>i
inoremap {  {}<esc>i
inoremap "  ""<esc>i

" Compile
nnoremap <F5> :!gcc % -o %< && ./%< && rm %< <CR>

call plug#begin()

Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/mhinz/vim-startify'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'nvim-tree/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'tomasiser/vim-code-dark'

call plug#end()

"NerdTree schortcut
nnoremap <C-A-f> :NERDTreeFocus<CR>
nnoremap <C-f> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

