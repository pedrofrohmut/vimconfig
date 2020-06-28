" Ale 
let g:ale_completion_enabled = 0
let g:ale_fixers = { 
\  'javascript': ['prettier', 'eslint'],
\  'javascript.jsx': ['prettier', 'eslint'],
\  'json': ['prettier', 'eslint'],
\  'jsx': ['prettier', 'eslint'],
\  'typescript': ['prettier', 'eslint'],
\  'css': ['prettier'],
\  'vue': ['prettier', 'eslint'],
\  'cs': ['prettier'],
\}
let g:ale_linters = { 
\  'javascript': ['eslint'],
\  'typescript': ['tsserver', 'eslint'],
\  'vue': ['eslint'],
\  'cs': ['OmniSharp']
\}
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
