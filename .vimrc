call plug#begin()
" Plugins go here
Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'

" Consider coc for autocomplete
" Consider fugitive for git integration
call plug#end()

filetype plugin indent on
highlight LineNr ctermfg=grey
set nowrap
set nu
set showmatch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
syntax on

" Disable automatic comment insertion on new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

