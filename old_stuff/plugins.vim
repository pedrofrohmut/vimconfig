call plug#begin('~/vimfiles/plugged') " Plug BEGIN

" JavaScript Support
Plug 'pangloss/vim-javascript'

" TypeScript Syntax
Plug 'leafgarland/typescript-vim'

" JSX Support
Plug 'maxmellon/vim-jsx-pretty'

" C# Support - Omnisharp
Plug 'OmniSharp/omnisharp-vim'

" Elixir Syntax Highlight/Indentation
Plug 'elixir-editors/vim-elixir'

" Kotlin syntax highlight
Plug 'udalov/kotlin-vim'

" Surrounder for Simple Stuff
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Vim Sneak - The missing motion
Plug 'justinmk/vim-sneak'

" Commenter
Plug 'tpope/vim-commentary'

" COC - Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Emmet - HTML JSX snippets
Plug 'mattn/emmet-vim'

" NERDTree - File Tree Manager and Viewer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" CtrlP - Quick open files
Plug 'ctrlpvim/ctrlp.vim'

" Lots of good Colorschemes for Vim
Plug 'chriskempson/base16-vim'

call plug#end()  " Plug END
