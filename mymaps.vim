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
nnoremap <F6> :w<CR>
nnoremap <F7> :ALEFix prettier<CR>
nnoremap <F8> :set fileformat=unix<CR>
nnoremap <F9> :ls<CR>:b

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
nnoremap <c-j> gt
nnoremap <c-k> <Esc>:bprevious<CR>
nnoremap <c-l> <Esc>:bnext<CR>

