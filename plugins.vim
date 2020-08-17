call plug#begin('~/vimfiles/plugged') " Plug BEGIN

" JavaScript Support
Plug 'pangloss/vim-javascript'

" JSX Support
Plug 'mxw/vim-jsx', { 'for': ['jsx', 'javascript.jsx'] }

" React Snippets (Python 3 and ultisnips Required)
"Plug 'epilande/vim-react-snippets'

" Ultisnips (Required for React Snippets)
"Plug 'sirver/ultisnips'

" VueJS Support -> Test: Replaced for coc-vetur
Plug 'posva/vim-vue' 

" Svelte Syntax Highlight
Plug 'leafOfTree/vim-svelte-plugin'

" TypeScript Syntax Highlight
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'

" TypeScript Indentation
Plug 'jason0x43/vim-js-indent'

" TypeScript Server & Completion
Plug 'Quramy/tsuquyomi'

" C# Support - Omnisharp
Plug 'OmniSharp/omnisharp-vim'

" Surrounder for Simple Stuff
Plug 'tpope/vim-surround'

" Commenter
Plug 'tpope/vim-commentary'

" COC - Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Emmet - HTML JSX snippets
Plug 'mattn/emmet-vim'

" NERDTree - File Tree Manager and Viewer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Linter & Formatter
Plug 'w0rp/ale'

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" CtrlP - Quick open files
Plug 'ctrlpvim/ctrlp.vim'

" Vim Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Lots of good Colorschemes for Vim
Plug 'chriskempson/base16-vim'

call plug#end()  " Plug END
