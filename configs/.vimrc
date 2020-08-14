set nocompatible
set backspace=2
set ruler
syntax off
set nonu
set wrap

" save, quit without save
nnoremap <C-x> :q!<CR>
nnoremap <C-o> :w<CR>


" toggle line number
nnoremap <S-l> :set invnu<CR>
" toggle line wrap
nnoremap <S-w> :set invwrap<CR>
" toggle syntax
nnoremap <S-s>
             \ : if exists("syntax_on") <BAR>
             \    syntax off <BAR>
             \ else <BAR>  
             \    syntax enable <BAR>
             \ endif<CR>
" buffer

set laststatus=2