call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Spellcheck
map <F6> :setlocal spell! spelllang=en_us<CR>

" Relative line numbering
set number relativenumber

" Better tab completion
set wildmenu

" Open splits at the bottom and right
set splitbelow splitright

" Sets wraping at linebreak
set wrap lbr
" set nowrap

" Syntax highlighting
syntax on

" Highlight all search matches
set hlsearch

" Enable the mouse
set mouse=a

" Set the solarized theme
colorscheme solarized
set background=dark

set smartindent