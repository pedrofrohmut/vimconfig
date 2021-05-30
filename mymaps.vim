" LEADER
let mapleader="\<Space>"
nnoremap <Space> <Nop>
map <Space> <Leader>

" Closer Del
inoremap <C-L> <Del>

" Better Backspace
inoremap <C-BS> <C-w>

" Insert Line in Normal_Mode
nnoremap <S-Enter> O<Esc>j
nnoremap <C-Enter> o<Esc>k
nnoremap <Enter> i<CR><Esc>

" Utils
nnoremap <F8> <Esc>:set fileformat=unix<CR>
nnoremap <F7> <Esc>:ALEFix prettier<CR>
nnoremap <F6> <Esc>:w<CR>

" Closing Characters on enter (CR)
inoremap (<CR> (<CR>)<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap {<CR> {<CR>}<Esc>ko
inoremap ({<CR> ({<CR>})<Esc>ko
inoremap `<CR> `<CR>`<Esc>ko<Tab>
inoremap (`<CR> (``)<Esc>hi<CR><Esc>ko<Tab>

" Scroll-up
nnoremap <Up> <C-Y>
nnoremap <S-Up> <C-U>
nnoremap <C-UP> <C-B>

" Scroll-down
nnoremap <Down> <C-E>
nnoremap <S-Down> <C-D>
nnoremap <C-Down> <C-F>

" Buffers and Tabs
nnoremap <c-h> gT
nnoremap <c-l> gt
nnoremap <c-j> <Esc>:bprevious<CR>
nnoremap <c-k> <Esc>:bnext<CR>

