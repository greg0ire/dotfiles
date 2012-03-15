call pathogen#infect()
syntax on
set softtabstop=4
set shiftwidth=4
set tabstop=4
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
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|\.project$\|\.buildpath$\|\.sass-cache$\|cache$\|log$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_follow_symlinks=1
inoremap jj <Esc>
autocmd FileType less,sass,yml,css,html,php,twig autocmd BufWritePre <buffer> :%s/\s\+$//e
set grepprg=ack-grep\ --ignore-dir\ cache
let php_noShortTags=1
set makeprg=php\ -ln\ %
set errorformat=%m\ in\ %f\ on\ line\ %l
