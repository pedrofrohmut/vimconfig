" TypeScript VIM
let g:typescript_indent_disable = 0
autocmd FileType typescript set filetype=typescript " For Syntax HighLight
autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
" Tsuquyomi
"autocmd FileType typescript setlocal completeopt-=menu " On/Off popup menu
"let g:tsuquyomi_completion_detail = 0 " Method signature popup
