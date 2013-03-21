" this file is extremely incomplete.

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

let g:snips_author="Adam Backstrom"

set nocompatible
    \ backspace=2 softtabstop=0 tabstop=4 shiftwidth=4
    \ smarttab expandtab autoindent nocindent smartindent
    \ ruler nowrap hidden showmatch matchtime=3 t_Co=256
    \ wrapscan incsearch ignorecase hlsearch smartcase
    \ updatecount=50 autoread showcmd foldlevelstart=1
    \ modeline modelines=5 number spr scrolljump=5 scrolloff=3
    \ laststatus=2

set nofoldenable
set foldmethod=indent
set foldnestmax=3

set encoding=utf8
set guifont=Inconsolata:h14

set pastetoggle=<F2>
" Go to insert mode when <ins> pressed in normal mode
nnoremap <silent> <F2> :setlocal paste!<CR>i
" Switch paste mode off whenever insert mode is left
autocmd InsertLeave <buffer> se nopaste

" Show large "menu" with auto completion options
set wildmenu
set wildmode=list:longest
set wildignore+=tmp,.git,*.png,*.jpg,output,tmp-*

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set colorcolumn=120

" make j/k sane when wrapping is on
nmap j gj
nmap k gk

nnoremap <silent> <C-n> :CtrlPBuffer<CR>
nnoremap <silent> <C-m> :CtrlP<CR>

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
let g:ctrlp_max_height = 30
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_max_files = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_switch_buffer = 0
