" line numbers on
set number

" tabs appear as spaces
set tabstop=4
" indents are 4 spaces
set shiftwidth=4
" expand tabs to spaces
set expandtab

" full colour
set termguicolors

call plug#begin()
" tex preview
Plug 'lervag/vimtex'
" colour scheme
Plug 'morhetz/gruvbox'
" filetree
Plug 'preservim/nerdtree'
" status line
Plug 'vim-airline/vim-airline'
call plug#end()

" vimtex configuration

" so that vimtex loads for LaTeX files
let g:tex_flavor = 'latex'

" nerdtree configuration

" open nerdtree automatically except on git commit messages
autocmd vimenter * if &filetype !=# 'gitcommit' | NERDTree | wincmd p | endif
" close nerdtree if it is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" gruvbox configuration
colorscheme gruvbox

" vim-airline configuration

" use gruvbox colour scheme
let g:airline_theme='gruvbox'
" nice arrows
let g:airline_powerline_fonts = 1
" tabline
let g:airline#extensions#tabline#enabled = 1
