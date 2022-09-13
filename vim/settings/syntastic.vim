"""""""""
" A.L.E "
"""""""""
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'

let g:ale_fixers = {
\  'css': ['prettier'],
\  'html': ['prettier'],
\  'javascript': ['prettier', 'eslint'],
\  'markdown': ['prettier'],
\  'typescript': ['prettier', 'eslint'],
\}

let g:ale_linters = {
\  'css': ['prettier', 'eslint'],
\  'graphql': [],
\  'html': ['prettier', 'eslint'],
\  'javascript': ['prettier', 'eslint'],
\  'markdown': ['prettier', 'eslint'],
\}
