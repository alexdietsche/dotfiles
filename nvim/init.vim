" No VI compatibility
set nocompatible

" Help force plugins to load correctly
filetype off

" Turn syntax highlighting on
syntax on

" Plugins vim-plug
call plug#begin('~/.config/nvim/plugged')

" List of plugins
Plug 'sheerun/vim-polyglot'                             " syntax highlighting
" Plug 'vim-syntastic/syntastic'                          " syntax checking plugin using external checker (eg flake8) and displays error
Plug 'neoclide/coc.nvim'                                " conquer of completion
" Plug 'dense-analysis/ale'                               " asynchronous linting engine plugin
" Plug 'maximbaz/lightline-ale'                           " provides ALE indications in lightline
Plug 'nvie/vim-flake8'                                  " static syntax checker and PEP8 style checker
" Plug 'davidhalter/jedi-vim'                           " code completion based on jedi
Plug 'puremourning/vimspector'                          " multi language graphical debugger for vim
Plug 'itchyny/lightline.vim'                            " light status line
Plug 'preservim/nerdtree'                               " file system explorer
Plug 'tpope/vim-fugitive'                               " git wrapper
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'                                 " fuzzy finder'
Plug 'stsewd/fzf-checkout.vim'                          " fzf to manage branches and tags'
Plug 'airblade/vim-rooter'                              " sets git top directory as root
Plug 'tpope/vim-commentary'                             " comment lines and sections
Plug 'jiangmiao/auto-pairs'                             " insert or delete brackts, parents and quotes in pair
Plug 'Yggdroot/indentLine'                              " display indentation
Plug 'joshdick/onedark.vim'                             " color scheme

" List ends here. Plugins become visible to Vim after this call
call plug#end()


" Color scheme
colorscheme onedark

" lightline
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

" tabs navigations
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

" NERDTree
nmap <C-N> : NERDTreeToggle<CR>

" git
nnoremap <leader>gb :GBranches<CR>
nnoremap <leader>gs :G<CR>

" fzf
" TODO pop up not working
" let g:fzf_layout = { 'window': { 'width' : 0.8, 'height' : 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
map <C-f> <Esc><Esc>:Files!<CR>
inoremap <C-f> <Esc><Esc>:BLines!<CR>

" vim-rooter
let g:rooter_silent_chdir = 1   " no output when changing dir

" CoC
let g:coc_global_extensions = ['coc-json', 'coc-python']
source $HOME/.config/nvim/plug-config/coc.vim

" vimspector
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools']
let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do :VimspectorShowOutput


" copy current buffer
nmap <leader>y ggVG"+y


" compile and run cpp program
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++11 -Wall % -o %:r && ./%:r <CR>

" run python script
" autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <C-F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
