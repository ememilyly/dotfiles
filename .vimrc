" Line numbers
"set number
"set relativenumber

" Syntax highlighting
syntax on

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab
filetype indent plugin on

" Per file settings
set modeline

set ruler

" Close all other buffers
map <leader>c :%bd\|e#<cr>

"call pathogen#infect()

call plug#begin()

Plug 'davidhalter/jedi-vim'

Plug 'ervandew/supertab'

Plug 'dense-analysis/ale'
let g:ale_fixers = ['black']
" Python
" pip install flake8 black
" Puppet
" gem install puppet-lint

Plug 'pprovost/vim-ps1'

call plug#end()
