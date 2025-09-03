" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1

let g:ctrlp_root_markers = ['pom.xml', 'yarn.lock', 'package.json', '**.sln']

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules\|_build\|.elixir_ls\|deps\|.\.git\|.\.next\|target\|.cache\|.\.dist\|dist\|bin\|obj\|venv\|android\|ios\',
  \ 'file': '\v\.(exe|so|dll|swp|swo)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
