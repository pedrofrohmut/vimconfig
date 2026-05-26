call plug#begin('~/.vim/plugged')

  Plug 'sainnhe/sonokai'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'preservim/nerdtree'
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-gitgutter'

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
set formatoptions-=ro
set laststatus=2
set noshowmode

command Reload source $HOME/.vimrc

let g:sonokai_style = 'shusia'
let g:sonokai_transparent_background = 1
colorscheme sonokai

highlight MatchParen ctermfg=red ctermbg=NONE guifg=red guibg=NONE
highlight ExtraWhitespace ctermbg=lightgrey guibg=lightgrey
highlight TabChar ctermbg=lightblue guibg=lightblue

let g:gitgutter_map_keys = 0

let g:lightline = { "colorscheme": "sonokai", "active": { "left": [["paste"], ["readonly", "filename", "modified"]] } }

" Keybinds
let mapleader = " "

inoremap <C-l> <Del>
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
nnoremap <leader>hh :nohlsearch<CR>:echo ""<CR>

nnoremap gb :b#<CR>
nnoremap <C-Right> zz

" Nerd tree
let g:NERDTreeWinSize = 48

nnoremap <leader>tt :NERDTreeToggle<CR>

" Git Gutter
nnoremap ]g <Plug>(GitGutterNextHunk)
nnoremap [g <Plug>(GitGutterPrevHunk)
nnoremap <leader>hp <Plug>(GitGutterPreviewHunk)

" Fzf
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :Rg<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fh :Helptags<CR>
nnoremap <leader>fk :Maps<CR>

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
