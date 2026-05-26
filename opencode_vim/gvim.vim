" Gvim config

" Remove menu bar, toolbar, scrollbars
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=e

" Hide tab line when only one tab
set showtabline=0

" Colorscheme (same as main.vim)
let g:sonokai_style = 'shusia'
let g:sonokai_transparent_background = 0
colorscheme sonokai

" Font (Linux GTK format)
set guifont=FiraMono\ Nerd\ Font\ 10
