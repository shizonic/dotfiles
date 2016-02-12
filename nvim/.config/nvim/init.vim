" theme
colorscheme gruvbox
set bg=dark
syntax on

" tabs and spaces
filetype indent on " load filetype-specific indent files
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4 
set expandtab " tabs are spaces

" gui options
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
set lazyredraw " redraw only when we need to

" search
set showmatch " highlight matching
set ignorecase " match upper and lowercase in search

" folds
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10  " 10 nested fold max
set foldmethod=indent " fold based on indent level

" extra
set backup
set backupdir=/tmp
set undofile
set undodir=~/.config/nvim/undo
set undolevels=1000
set clipboard+=unnamedplus

"splits and tabs
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'bling/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'morhetz/gruvbox'
Plug 'ervandew/supertab'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'chrisbra/Colorizer'

call plug#end()

" airline
let g:airline_theme = 'gruvbox'
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0