" No VI compatibility
set nocompatible

" Help force plugins to load correctly
filetype off

" Turn syntax highlighting on
"set t_Co=256                " enable 256 colors
syntax on


" Plugins vim-plug
call plug#begin('~/.vim/plugged')

" List of plugins
Plug 'sheerun/vim-polyglot'                             " syntax highlighting
Plug 'davidhalter/jedi-vim'                             " code completion based on jedi
Plug 'itchyny/lightline.vim'                            " light status line
Plug 'preservim/nerdtree'                               " file system explorer
Plug 'tpope/vim-fugitive'                               " git wrapper
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'                                 " fuzzy finder'
Plug 'stsewd/fzf-checkout.vim'                          " fzf to manage branches and tags'
Plug 'airblade/vim-rooter'                              " sets git top directory as root 
Plug 'tpope/vim-commentary'                             " comment lines and sections
Plug 'jiangmiao/auto-pairs'                             " insert or delete brackts, parents and quotes in pair

" List ends here. Plugins become visible to Vim after this call
call plug#end()


" Color scheme
colorscheme onedark

"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
let g:lightline = {
    \ 'colorscheme': 'onedark',
    \}



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

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NERDTree
nmap <C-N> : NERDTreeToggle<CR>

" git
nnoremap <leader>gb :GBranches<CR>
nnoremap <leader>gs :G<CR>

" fzf
let $FZF_DEFAULT_OPTS='--reverse'
map <C-f> <Esc><Esc>:Files!<CR>
inoremap <C-f> <Esc><Esc>:BLines!<CR>

" vim-rooter
let g:rooter_silent_chdir = 1   " no output when changing dir

" copy current buffer
nmap <leader>y ggVG"+y 


" compile and run cpp program
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++11 -Wall % -o %:r && ./%:r <CR>

" run python script
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
