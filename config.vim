filetype plugin on

filetype indent plugin on

set pythonthreedll=python37.dll
if has('python3')
  silent! python3 1
endif

"run the command immediately when starting vim
autocmd VimEnter * call libcallnr("gvimfullscreen.dll", "ToggleFullScreen",0)
" activate/deactivate full screen with function key <F11>  
inoremap <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>


" VIM
set number
set relativenumber

set wrap
set linebreak

set incsearch

set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2

set backspace=2
set mouse=a

set encoding=utf-8
set fileformat=unix

set colorcolumn=81,121 " Color colums

set t_Co=256
"colorscheme base16-harmonic-dark
colorscheme base16-seti

set nocompatible

set autoread " auto reload files on Vim when they change on disk

"set guifont=Consolas:h12:cANSI:qDRAFT
set guifont=Droid_Sans_Mono_Slashed_for_Pow:h11:cANSI:qANTIALIASED
