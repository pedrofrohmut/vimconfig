" MY MAPS

" Closer Del
inoremap <C-L> <Del>
" Better Backspace
inoremap <C-BS> <C-w>
" Insert Space Before in Normal_Mode
nnoremap <Space> i<Space><Esc>
" Insert Line in Normal_Mode
nnoremap <S-Enter> O<Esc>j
nnoremap <C-Enter> o<Esc>k
nnoremap <Enter> i<CR><Esc>
" Utils
inoremap <F8> <Esc>:set fileformat=unix<CR>
inoremap <F7> <Esc>:ALEFix prettier<CR>
inoremap <F6> <Esc>:w<CR>
nnoremap <F8> <Esc>:set fileformat=unix<CR>
nnoremap <F7> <Esc>:ALEFix prettier<CR>
nnoremap <F6> <Esc>:w<CR>
" Closing Characters
inoremap (<CR> (<CR>)<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap {<CR> {<CR>}<Esc>ko
inoremap ({<CR> ({<CR>})<Esc>ko
" Move a Center
nnoremap gg ggzz
