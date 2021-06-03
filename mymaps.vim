" LEADER
let mapleader="\<Space>"
nnoremap <Space> <Nop>
map <Space> <Leader>

" Closer Del
inoremap <C-L> <Del>

" Better Backspace
inoremap <C-BS> <C-W>

" Insert Line in Normal_Mode or use Ctrl-M
nnoremap <S-Enter> O<Esc>j
nnoremap <C-Enter> o<Esc>k
nnoremap <Enter> i<CR><Esc>

" Utils
nnoremap <F7> :ALEFix prettier<CR>
nnoremap <F8> :set fileformat=unix<CR>
nnoremap <F9> :ls<CR>:b
nnoremap <F12> :source ~/.vimrc<CR>

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

"" ### BUFFERS ############################################################
nnoremap <C-B> :ls<CR>:b

"" ### TABS ###############################################################
" # New Tab
nnoremap <C-T><C-N> :tabnew<CR>
"
" # Close Tabs
nnoremap <C-T><C-T> :tabclose<CR>
nnoremap <C-T><C-O> :tabonly<CR>

" # Move Tabs - Left/Right
nnoremap <C-T><C-H> :-tabmove<CR>
nnoremap <C-T><C-L> :+tabmove<CR>

" # Go To - Next/Prev
nnoremap <C-L> :tabnext<CR>
nnoremap <C-H> :tabprevious<CR>

" # Go To - Tab Index
nnoremap <C-N> :tabs<CR>:tabnext
