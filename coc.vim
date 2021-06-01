"" FUNCTIONS ###################################################################
" for K show_docs
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" for <Tab> trigger completion
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


"" CONFIG ######################################################################

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=500

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Highlight the symbol and its references when holding the cursor.
if has("gui_running")
  autocmd CursorHold * silent call CocActionAsync('highlight')
endif

" <CR> to confirm completion
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" <Tab> to trigger completion
inoremap <silent><expr> <TAB>
   \ pumvisible() ? "\<C-n>" :
   \ <SID>check_back_space() ? "\<TAB>" :
   \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : \<C-h>"

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

"" MAPS ########################################################################

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Apply AutoFix to problem on the current line.
"nnoremap <leader>qf <Plug>(coc-fix-current)
nnoremap <leader>f <Plug>(coc-fix-current)

" Symbol renaming.
nnoremap <leader>rn <Plug>(coc-rename)
" CocRefactor
nnoremap <leader>rf <Plug>(coc-refactor)

" Show docs on current symbol
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Go Definition
nnoremap <silent> gd <Plug>(coc-definition)
" Go Type
nnoremap <silent> gy <Plug>(coc-type-definition)
" Go implementation
nnoremap <silent> gi <Plug>(coc-implementation)
" Go References
nnoremap <silent> gr <Plug>(coc-references)

" Show all diagnostics.
nnoremap <silent><nowait> <leader>d :<C-u>CocList diagnostics<cr> 

" Format the current buffer
nnoremap <leader>= <Plug>(coc-format)

" Coc Action to cursor position
nnoremap <c-space> <Plug>(coc-codeaction-cursor)
" Coc Action line
nnoremap <leader><space> <Plug>(coc-codeaction-line)
" Coc Action selected
vnoremap <c-space> <Plug>(coc-codeaction-selected)

" Hide Popups
nnoremap <leader>h <Plug>(coc-float-hide)

" Code Lens
nnoremap <leader>c <Plug>(coc-codelens-action)
