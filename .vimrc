" No VI compatibility
set nocompatible

" Help force plugins to load correctly
filetype off

" Turn syntax highlighting on
set t_Co=256                " enable 256 colors
syntax on


" Plugins vim-plug
call plug#begin('~/.vim/plugged')

" List of plugins
Plug 'itchyny/lightline.vim'                            " light status line
Plug 'tpope/vim-fugitive'                               " git wrapper
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'                                 " fuzzy finder
Plug 'stsewd/fzf-checkout.vim'                          " fzf to manage branches and tags

" List ends here. Plugins become visible to Vim after this call
call plug#end()


" Color scheme
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \}
colorscheme solarized


" For plugins to load correctly
filetype plugin indent on

" Turn off modelines
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=120
set formatoptions=tcqrn1
set tabstop=4               " tab width is 4 spaces	
set shiftwidth=4            " indent with 4 spaces
set expandtab               " expand tabs to spaces

" highlight matching braces
set showmatch

" Speed up scrolling
set ttyfast

" Set permanent statusline
set laststatus=2

" Searching
set hlsearch                " Highlight matching search patterns
set incsearch               " Enable incremental search
map <leader><space> :let @/=''<cr>

" Autocomplete braces and quotes
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" git
nnoremap <leader>gb :GBranches<CR>
nnoremap <leader>gs :G<CR>
"let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

" copy current buffer
nmap <leader>y ggVG"+y 


" compile cpp
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++11 -Wall % -o %:r && ./%:r <CR>
