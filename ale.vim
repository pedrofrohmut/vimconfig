" ALE
let g:ale_completion_enabled = 0
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 0

let g:ale_fixers = {
\  'javascript': ['prettier', 'eslint'],
\  'javascript.jsx': ['prettier', 'eslint'],
\  'jsx': ['prettier', 'eslint'],
\  'json': ['prettier', 'eslint'],
\  'typescript': ['prettier', 'eslint'],
\  'typescript.jsx': ['prettier', 'eslint'],
\  'html': ['prettier'],
\  'css': ['prettier'],
\  'vue': ['prettier', 'eslint'],
\}

let g:ale_linters = {
\  'javascript': ['eslint'],
\  'typescript': ['tsserver', 'eslint'],
\  'javascript.jsx': ['eslint'],
\  'typescript.jsx': ['tsserver', 'eslint'],
\  'vue': ['eslint'],
\  'cs': ['OmniSharp']
\}
