set relativenumber
set colorcolumn=89
highlight LineNr ctermfg=grey

set cursorline
"highlight CursorLine cterm=None ctermbg=darkgray 

set cursorlineopt=number
highlight CursorLineNr ctermfg=black ctermbg=white

call plug#begin('~/.vim/plugged')
" Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:airline_powerline_fonts = 1
set laststatus=2
set noshowmode
