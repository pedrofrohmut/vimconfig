" MY MAPS

" Closer Del
inoremap <C-L> <Del>

" Better Backspace
inoremap <C-BS> <C-w>

" Insert Space Before in Normal_Mode
"nnoremap <Space> i<Space><Esc>

" Insert Line in Normal_Mode
nnoremap <S-Enter> O<Esc>j
nnoremap <C-Enter> o<Esc>k
nnoremap <Enter> i<CR><Esc>

" Utils
inoremap <F8> <Esc>:set fileformat=unix<CR>
inoremap <F7> <Esc>:ALEFix prettier<CR>
inoremap <S-F7> <Esc>:ALEFix eslint<CR>
inoremap <F6> <Esc>:wa<CR>
nnoremap <F8> <Esc>:set fileformat=unix<CR>
nnoremap <F7> <Esc>:ALEFix prettier<CR>
nnoremap <S-F7> <Esc>:ALEFix eslint<CR>
nnoremap <F6> <Esc>:w<CR>

" Closing Characters on enter (CR)
inoremap (<CR> (<CR>)<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap {<CR> {<CR>}<Esc>ko
inoremap ({<CR> ({<CR>})<Esc>ko
inoremap `<CR> `<CR>`<Esc>ko<Tab>
inoremap (`<CR> (``)<Esc>hi<CR><Esc>ko<Tab>

" Move a Center
nnoremap gg ggzz

" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" Scroll-up
nnoremap <Up> <C-Y>
nnoremap <S-Up> <C-U>
nnoremap <C-UP> <C-B>

" Scroll-down
nnoremap <Down> <C-E>
nnoremap <S-Down> <C-D>
nnoremap <C-Down> <C-F>

" Buffer Nav
inoremap <Left> <Esc>:bprevious<CR>
nnoremap <Left> <Esc>:bprevious<CR>
inoremap <Right> <Esc>:bnext<CR>
nnoremap <Right> <Esc>:bnext<CR>
