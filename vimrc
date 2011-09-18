call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on
set softtabstop=2 
set shiftwidth=2
set tabstop=2
set expandtab
set number
set background=dark
set laststatus=2 
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
colorscheme solarized
filetype on
filetype plugin on
