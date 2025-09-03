call plug#begin('~/.vim/plugged')

Plug 'sainnhe/sonokai'

call plug#end()

set runtimepath^=~/.config/vim
set runtimepath+=~/.config/vim/after

" Colors
if has('termguicolors')
    set termguicolors
endif
highlight Normal guibg=NONE ctermbg=NONE

let g:sonokai_style='shusia'
let g:sonokai_better_performance=1
let g:sonokai_transparent_background=2
colorscheme sonokai


filetype indent plugin on
syntax on

set number
set relativenumber

" Identation
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

" Wrapping
set wrap
set linebreak

set incsearch
set autoread
set nocompatible
set scrollfocus
set encoding=utf-8
set fileformat=unix
set cmdheight=1
set backspace=2
set mouse=a
set colorcolumn=101,121

" GVIM
if has('gui_running')
    set guifont=FiraMono\ Nerd\ Font\ 10
    set guioptions-=T " Remove toolbar
    set guioptions-=r " Remove right scrollbar
    set guioptions-=L " Remove left scrollbar
    set guioptions-=m " Remove menu bar
    set guicursor=a:blinkon0 " Disable blinking cursor for all modes
endif

let mapleader=" "

" Shift + u to redo
nnoremap U <C-r> 

" Closer Del
inoremap <C-l> <Del>

" Easy begin and end of line
nnoremap L $
nnoremap H ^

" Scrolling
nnoremap <C-j> 12<C-e>
nnoremap <C-k> 12<C-y>

" Copy to system clipboard
vnoremap <leader>sy "+y
nnoremap <leader>sp "+p

let factor=5
nnoremap <silent> <Up>    :execute 'resize +' . factor<CR>
nnoremap <silent> <Down>  :execute 'resize -' . factor<CR>
nnoremap <silent> <Left>  :execute 'vertical resize +' . factor<CR>
nnoremap <silent> <Right> :execute 'vertical resize -' . factor<CR>
