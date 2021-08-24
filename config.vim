filetype indent plugin on

autocmd VimEnter * call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 0)
nnoremap <F11> <Esc>:call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 0)<CR>

"" VIM Configs
" set number
" set relativenumber
set signcolumn=yes
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
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
set guifont=Consolas:h13:cANSI:qDRAFT
colorscheme base16-bright
"colorscheme slate

"" COLOR SCHEMES
"colorscheme base16-black-metal-bathory
"colorscheme base16-black-metal-mayhem
"colorscheme base16-chalk
"colorscheme base16-default-dark
"colorscheme base16-harmonic-dark
"colorscheme base16-horizon-dark
"colorscheme base16-ia-dark
"colorscheme base16-materia
"colorscheme base16-material
"colorscheme base16-tomorrow-night-eighties
"colorscheme base16-seti
"colorscheme base16-phd

"autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
