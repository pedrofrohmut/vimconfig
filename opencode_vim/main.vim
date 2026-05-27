call plug#begin('~/.vim/plugged')

  Plug 'sainnhe/sonokai'
  Plug 'morhetz/gruvbox'

  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'preservim/nerdtree'
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/goyo.vim'

call plug#end()

set autoread
set colorcolumn=81,121
set cursorline
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
set laststatus=2
set noshowmode
set mouse=a

highlight MatchParen ctermfg=red ctermbg=NONE guifg=red guibg=NONE
highlight ExtraWhitespace ctermbg=lightgrey guibg=lightgrey
highlight TabChar ctermbg=lightblue guibg=darkblue

set background=dark
if has('terguicolor')
    set termguicolors
endif
" hi Normal guibg=NONE ctermbg=NONE
" hi Comment guifg=#5588aa ctermfg=67

" Autocmd for goyo, so it can restore the colors properly
function! s:tweak_color_scheme()
    highlight Normal guibg=NONE ctermbg=NONE
    highlight Comment   ctermfg=67
    highlight String    ctermfg=120
    highlight Statement ctermfg=248
    " highlight Statement ctermfg=204 " Nice red
endfunction
autocmd! ColorScheme quiet call s:tweak_color_scheme()

colorscheme quiet

command Reload source $HOME/.vimrc

" let g:sonokai_style = 'shusia'
" let g:sonokai_transparent_background = 1
" colorscheme sonokai

let g:lightline = { "colorscheme": "quiet", "active": { "left": [["paste"], ["readonly", "filename", "modified"]] } }

" Keybinds
let mapleader = " "

nnoremap <Space><Space> =
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
"nnoremap <Esc> :nohlsearch<CR>:set cmdheight=1<CR>:echo ""<CR>
nnoremap gb :b#<CR>
nnoremap <C-Right> zz

nnoremap R <Nop>
nnoremap Q <Nop>
nnoremap s <Nop>
nnoremap S <Nop>
nnoremap <C-f> <Nop>
nnoremap <C-b> <Nop>

" Nerd tree
let g:NERDTreeWinSize = 48

nnoremap <leader>tt :NERDTreeToggle<CR>

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

" Goyo
let g:goyo_height = 999
let g:goyo_width = 140
nnoremap <leader>gg :Goyo<CR>

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
