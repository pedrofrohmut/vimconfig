call plug#begin('~/.vim/plugged')

  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'preservim/nerdtree'
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/goyo.vim'
  Plug 'mattn/emmet-vim'
  Plug 'pangloss/vim-javascript'
  Plug 'MaxMEllon/vim-jsx-pretty'

call plug#end()

" Enable plugins and load plugin for the detected file type.
filetype plugin on

set autoread
set colorcolumn=81,121
set cursorline
set cursorlineopt=number
set expandtab
set fileformats=unix,dos
set hlsearch
set incsearch
set number
set relativenumber
set shiftwidth=4
set smartcase
set tabstop=4
set updatetime=1000
set wrapscan
set noshowmode
set mouse=a
set splitbelow
set splitright

" Enable wildmenu for better visual completion
set wildmenu
" Set completion mode to list all matches and choose
set wildmode=list:full
" Make completion case-insensitive
" set wildignorecase
" Ignore common backup and version control files
set wildignore+=*.swp,*.bak
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*

" Enable fuzzy matching for completion

" Auto complete config
set shortmess+=c
set completeopt+=menuone
set completeopt+=fuzzy
set completeopt+=noselect

" Complete file path (relative also works)
inoremap <C-f> <C-O>:lcd %:p:h<CR><C-X><C-F>

" Set cursor by mode
let &t_SI.="\e[6 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[2 q"

highlight MatchParen ctermfg=red ctermbg=NONE guifg=red guibg=NONE
highlight ExtraWhitespace ctermbg=lightgrey guibg=lightgrey
highlight TabChar ctermbg=lightblue guibg=darkblue
set background=dark
if has('terguicolor')
    set termguicolors
endif
" Autocmd for goyo, so it can restore the colors properly
function! s:tweak_color_scheme()
    highlight Normal guibg=NONE ctermbg=NONE
    highlight Comment   ctermfg=67
    highlight String    ctermfg=120
    highlight CursorLineNr ctermbg=NONE ctermfg=11
    " highlight Statement ctermfg=248
    " highlight Statement ctermfg=204 " Nice red
endfunction
autocmd! ColorScheme quiet call s:tweak_color_scheme()
colorscheme quiet



" Keybinds
let mapleader = " "

nnoremap R <Nop>
nnoremap Q <Nop>
nnoremap s <Nop>
nnoremap S <Nop>
xnoremap S <Nop>

nnoremap <C-f> <Nop>
nnoremap <C-b> <Nop>
nnoremap <Space><Space> =
xnoremap <Space><Space> =
inoremap <C-l> <Del>
nnoremap <CR> i<CR><Esc>
nnoremap U <C-r>
nnoremap H ^
nnoremap L $
xnoremap H ^
xnoremap L $
nnoremap <C-k> 12<C-y>
nnoremap <C-j> 12<C-e>
vnoremap <leader>sy "+y
nnoremap <leader>sp "+p
nnoremap <Up> :resize +5<CR>
nnoremap <Down> :resize -5<CR>
nnoremap <Left> :vertical resize +5<CR>
nnoremap <Right> :vertical resize -5<CR>
nnoremap <leader>hh :nohlsearch<CR>:set cmdheight=1<CR>:echo ""<CR>
nnoremap <Esc> :nohlsearch<CR>:set cmdheight=1<CR>:echo ""<CR>
nnoremap gb :b#<CR>
nnoremap <C-Right> zz
xnoremap S s
nnoremap <leader>fe :Explore<CR>
" nnoremap <leader>xx :terminal<CR>

" Reuse Terminal Instance
let g:terminal_bufnr = -1

function! OpenOrSwitchToTerminal()
    if g:terminal_bufnr != -1 && bufexists(g:terminal_bufnr)
        execute 'bo sbuf' g:terminal_bufnr
    else
        " bo new | terminal
        terminal
        let g:terminal_bufnr = bufnr('%')
        setlocal bufhidden=hide
    endif
endfunction

nnoremap <leader>xx :call OpenOrSwitchToTerminal()<CR>

" Hide terminal on win leave
augroup TerminalAutoClose
    autocmd!
    autocmd WinLeave * if &buftype == 'terminal' && winnr('$') > 1 | close | endif
augroup END

" Nerd tree
let g:NERDTreeWinSize = 50

nnoremap <leader>tt :NERDTreeRefreshRoot<CR>:NERDTreeToggle<CR>

augroup NERDTreeAutoRefresh
    autocmd!
    autocmd BufEnter NERD_tree_* if &filetype ==# 'nerdtree' | NERDTreeRefreshRoot | endif
    autocmd FocusGained * if &filetype ==# 'nerdtree' | NERDTreeRefreshRoot | endif
augroup END

" Git Gutter
let g:gitgutter_map_keys = 0

nnoremap ]g <Plug>(GitGutterNextHunk)
nnoremap [g <Plug>(GitGutterPrevHunk)
nnoremap <leader>hp <Plug>(GitGutterPreviewHunk)
command GitStage <Plug>(GitGutterStageHunk)

" Fzf
command! -bang -nargs=? -complete=dir FilesNoPreview
  \ call fzf#vim#files(<q-args>, {}, <bang>0)
command! -bang -nargs=? -complete=buffer BuffersNoPreview
  \ call fzf#vim#buffers(<q-args>, {}, <bang>0)

nnoremap <C-q> :FilesNoPreview<CR>
nnoremap <C-b> :BuffersNoPreview<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :Rg<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fh :Helptags<CR>
nnoremap <leader>fk :Maps<CR>

" Fzf insert mode completion
" inoremap <C-x><C-k> <plug>(fzf-complete-word)
" inoremap <C-x><C-l> <plug>(fzf-complete-line)
" inoremap <C-x><C-f> <plug>(fzf-complete-path)
" inoremap <C-f> <plug>(fzf-complete-path)

" Goyo
let g:goyo_height = 999
let g:goyo_width = 120
nnoremap <leader>gg :Goyo<CR>

" Emmet
let g:user_emmet_mode = "iv"
let g:user_emmet_settings = {
\   'typescriptreact': { 'extends': 'jsx' },
\   'javascript.jsx': { 'extends': 'jsx' },
\}
inoremap <C-k> <Plug>(emmet-expand-abbr)
xnoremap <C-k> <Plug>(emmet-expand-abbr)

augroup CursorLine
  autocmd!
  autocmd WinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup END

augroup HighlightWhitespace
  autocmd!
  autocmd BufWinEnter * call matchadd('ExtraWhitespace', '\s\+$')
  autocmd BufWinEnter * call matchadd('TabChar', '\t')
  autocmd BufWritePre * :%s/\s\+$//e
augroup END

augroup IndentTwoSpaces
  autocmd!
  autocmd FileType javascript,typescript,typescriptreact,javascriptreact,html,xml setlocal shiftwidth=2 tabstop=2
augroup END

augroup DisableAutoComment
  autocmd!
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END

function! s:AutoMkdir()
    let dir = expand('%:p:h')
    if !isdirectory(dir)
        call mkdir(dir, 'p')
        echo "Created directory: " . dir
    endif
endfunction

autocmd BufWritePre * call s:AutoMkdir()
