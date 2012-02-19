call pathogen#infect()
syntax on
set softtabstop=2 
set shiftwidth=2
set tabstop=2
set expandtab
set number
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
set background=dark
set laststatus=2 
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
colorscheme solarized
filetype on
filetype plugin on
set wildmode=longest,list,full
set wildmenu
set wildignore+=*/.hg/*,*/.svn/*,*.so,*.swp,.project,.buildpath,*/.sass-cache/*,cache,log
let g:ctrlp_working_path_mode = 2
