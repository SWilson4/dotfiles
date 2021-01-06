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
Plug 'joshdick/onedark.vim'
" improved syntax highlighting
Plug 'sheerun/vim-polyglot'
" filetree
Plug 'preservim/nerdtree'
" status line
Plug 'vim-airline/vim-airline'
" git in status line
Plug 'tpope/vim-fugitive'
" LaTeX complilation and preview
Plug 'lervag/vimtex', {'for': 'tex'}
" definition jumping
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" nerdtree configuration

" open nerdtree automatically except on git commit messages
autocmd vimenter * if &filetype !=# 'gitcommit' | NERDTree | wincmd p | endif
" close nerdtree if it is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" onedark.vim configuration

" custom afremov colours
" comment_grey: comments (duh)
" menu_grey: drop-down auto-complete background
" gutter_fg_grey: line numbers
" cursor_grey: NERDTree root directory background
" visual_grey: visual selection background
" special_grey: characters like ~ at end of file (using same as line numbers)
" vertsplit: NERDTree divider (using same as line numbers)
let g:onedark_color_overrides = {
            \ "black": { "gui": "#090c11", "cterm": "0", "cterm16": "0" },
            \ "white": { "gui": "#f1efca", "cterm": "0", "cterm16": "0" },
            \ "comment_grey": { "gui": "#8286a9", "cterm": "0", "cterm16": "0" },
            \ "menu_grey": { "gui": "#334f4a", "cterm": "0", "cterm16": "0" },
            \ "gutter_fg_grey": { "gui": "#9daea2", "cterm": "0", "cterm16": "0" },
            \ "cursor_grey": { "gui": "#1e525c", "cterm": "0", "cterm16": "0" },
            \ "visual_grey": { "gui": "#334f4a", "cterm": "0", "cterm16": "0" },
            \ "special_grey": { "gui": "#9daea2", "cterm": "0", "cterm16": "0" },
            \ "vertsplit": { "gui": "#9daea2", "cterm": "0", "cterm16": "0" },
            \ "yellow": { "gui": "#f4d510", "cterm": "0", "cterm16": "0" },
            \ "dark_yellow": { "gui": "#f57f07", "cterm": "0", "cterm16": "0" },
            \ "cyan": { "gui": "#60c1f0", "cterm": "0", "cterm16": "0" },
            \ "blue": { "gui": "#146fc4", "cterm": "0", "cterm16": "0" },
            \ "purple": { "gui": "#e75483", "cterm": "0", "cterm16": "0" },
            \ "green": { "gui": "#206d22", "cterm": "0", "cterm16": "0" },
            \ "red": { "gui": "#f62c05", "cterm": "0", "cterm16": "0" },
            \ "dark_red": { "gui": "#931309", "cterm": "0", "cterm16": "0" }
            \}

syntax on
colorscheme onedark

" vim-airline configuration

" use gruvbox colour scheme
let g:airline_theme='onedark'
" nice arrows
let g:airline_powerline_fonts = 1
" tabline
let g:airline#extensions#tabline#enabled = 1

" coc.nvim configuration
nmap <silent> <Leader>d <Plug>(coc-definition)
nmap <silent> <Leader>t <Plug>(coc-type-definition)

" custom commands

" see colour of text under cursor
command! FG echo synIDattr(synIDtrans(synID(line("."), col("."), 1)), "fg")
" reindent entire file
map <Leader>i gg=G<C-o>
