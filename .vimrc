" this file is extremely incomplete.

set guifont=Inconsolata:h14

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
