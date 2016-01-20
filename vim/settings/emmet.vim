" Allow jsx in javascript
let g:jsx_ext_required = 1

" Use all modes of emmet
let g:user_emmet_mode='a'

" Map the tab key to emmet
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
