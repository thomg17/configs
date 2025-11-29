set relativenumber
set number
set colorcolumn=89
set numberwidth=1
set background=dark
set termguicolors
set cursorline

call plug#begin('~/.vim/plugged')
" Status Line 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fuzzy finder
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Editing
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'zivyangll/git-blame.vim'

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'sainnhe/sonokai'

" File/Buffer Explorer
Plug 'preservim/nerdtree'
"Plug 'jlanzarotta/bufexplorer'
call plug#end()

" Remapping
let mapleader = " "
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fg :Rg<Space>
nnoremap <leader>s : <C-u>call gitblame#echo()<CR>

" Removing a crutch
noremap <UP> ""
noremap! <UP> <ESC>
noremap <DOWN> ""
noremap! <DOWN> <ESC>
noremap <LEFT> ""
noremap! <LEFT> <ESC>
noremap <RIGHT> ""
noremap! <RIGHT> <ESC>

" Color Scheme Setting
let g:sonokai_style = 'shusia'
let g:sonokai_better_performance = 1
colorscheme sonokai

" Line Num & Col Num
highlight LineNr guifg=#808080 
highlight CursorLine cterm=None guibg=#454545
highlight CursorLineNr guifg=#000000 guibg=#ffffff

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set laststatus=2
set noshowmode
silent! source $VIMRUNTIME/defaults.vim
