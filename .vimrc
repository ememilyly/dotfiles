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
set modelines=2

set ruler

" Close all other buffers
map <leader>c :%bd\|e#<cr>

" Create new tab and open cwd
nnoremap <silent> gn :tabnew\|e.<cr>

call plug#begin()

Plug 'rafi/awesome-vim-colorschemes'
Plug 'rodjek/vim-puppet'
Plug 'davidhalter/jedi-vim'
Plug 'pprovost/vim-ps1'
Plug 'ervandew/supertab'
Plug 'dense-analysis/ale'
let g:ale_fixers = ['black']
" Python
" pip install flake8 black
" Puppet
" gem install puppet-lint

call plug#end()

" colorscheme after plug
" Don't change my bg colour >:(
autocmd ColorScheme * highlight Normal ctermbg=None
colorscheme onehalfdark
