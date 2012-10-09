call pathogen#infect()
set nocompatible
syntax on

set softtabstop=4
set shiftwidth=4
set tabstop=4

set modelines=0
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
set expandtab
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

let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.git|\.hg|\.svn|\.settings|\.sass-cache|cache|log|.rsync_cache)$',
  \ 'file': '.un\~$\|.project$\|.buildpath$\|composer.phar$',
  \ }
let g:ctrlp_working_path_mode = 2
let g:ctrlp_follow_symlinks=1
let g:ctrlp_user_command = ['.git/', 'for i in %s/**/.git; do; a=${i:0:${#i}-4};b=`echo $a|sed -e "s/\//\\\\\\\\\//g"`;git --git-dir=$a/.git ls-files -oc --exclude-standard |sed -e "s/^/$b/"; done']
inoremap jj <Esc>
autocmd FileType less,sass,yml,css,html,php,twig autocmd BufWritePre <buffer> :%s/\s\+$//e
set grepprg=ack\ --ignore-dir\ cache\ --follow

" php related stuff
let php_noShortTags=1
set makeprg=php\ -ln\ %
set errorformat=%m\ in\ %f\ on\ line\ %l

cabbr <expr> %% expand('%:p:h')
set ignorecase
set smartcase
set incsearch
set autoindent
set cc=80

let g:dbgPavimPort = 9009
let g:dbgPavimBreakAtEntry = 0

let g:php_cs_fixer_path = "~/bin/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "all"                " which level ?
let g:php_cs_fixer_config = "default"           " configuration
let g:php_cs_fixer_php_path = "php"             " Path to PHP
let g:php_cs_fixer_fixers_list = ""             " List of fixers
let g:php_cs_fixer_enable_default_mapping = 1   " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                  " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                  " Return the output of command if 1, else an inline information.

" disable noob keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
