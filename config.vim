filetype plugin on
"filetype indent plugin on

"set pythonthreedll=python36.dll
if has('python3')
  silent! python3 1
endif


"" Run the command immediately when starting vim
autocmd VimEnter * call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 0)
"" Activate/deactivate full screen with function key <F11>  
nnoremap <F11> <Esc>:call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 0)<CR>


"" File format to linux
autocmd VimEnter * if (!&modifiable || &readonly) | set fileformat=unix | endif


"" VIM Configs
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

set scrollfocus

set encoding=utf-8
set fileformat=unix

set colorcolumn=81,121 " Color colums

set t_Co=256

" COLOR SCHEMES
"colorscheme base16-black-metal-bathory
"colorscheme base16-black-metal-mayhem
"colorscheme base16-chalk
"colorscheme base16-default-dark
colorscheme base16-harmonic-dark
"colorscheme base16-horizon-dark
"colorscheme base16-ia-dark
"colorscheme base16-materia
"colorscheme base16-material
"colorscheme base16-tomorrow-night-eighties
"colorscheme base16-seti
"colorscheme base16-phd

set nocompatible

set autoread " auto reload files on Vim when they change on disk

"set guifont=Consolas:h12:cANSI:qDRAFT " BEST but no support for vim-airline
set guifont=Droid_Sans_Mono_Slashed_for_Pow:h11:cANSI:qANTIALIASED

set cmdheight=1


" TypeScript VIM
let g:typescript_indent_disable = 0
autocmd FileType typescript set filetype=typescript " For Syntax HighLight
autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript


" JavaScript VIM
autocmd VimEnter javascript.json set filetype=json " For Syntax HighLight on comments
