" This file is for global settings. Filetype-specific settings can be found in
" $HOME/.config/nvim/after/ftplugin/.

" line numbers on
set number

" tabs appear as 4 spaces
set tabstop=4
" indents are 4 spaces
set shiftwidth=4
" expand tabs to spaces; override for specific filetypes if necessary
set expandtab

" full colour
set termguicolors

" specific filetype settings
filetype plugin indent on

call plug#begin()
" colour scheme
Plug 'gruvbox-community/gruvbox'
" filetree
Plug 'preservim/nerdtree'
" status line
Plug 'vim-airline/vim-airline'
" git in status line
Plug 'tpope/vim-fugitive'
" LaTeX complilation and preview
Plug 'lervag/vimtex', {'for': 'tex'}
call plug#end()

" nerdtree configuration

" open nerdtree automatically except on git commit messages
autocmd vimenter * if &filetype !=# 'gitcommit' | NERDTree | wincmd p | endif
" close nerdtree if it is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" gruvbox configuration
colorscheme gruvbox
set background=dark

" vim-airline configuration

" use gruvbox colour scheme
let g:airline_theme='gruvbox'
" nice arrows
let g:airline_powerline_fonts = 1
" tabline
let g:airline#extensions#tabline#enabled = 1
