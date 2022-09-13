"""""""""
" A.L.E "
"""""""""
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'

" syntastic ignores
let g:syntastic_ignore_files = ['\.py$']

"mark syntax errors with :signs
" let g:syntastic_enable_signs=1

"automatically jump to the error when saving the file
" let g:syntastic_auto_jump=0

"don't show the error list automatically
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"don't care about warnings
" let g:syntastic_quiet_messages = {'level': 'warnings'}
"setting for eslint
let g:syntastic_javascript_checkers = ['eslint']

" Use local yarn eslint command
" NOTE: You need to run vim from the dir with the eslintrc file
let g:syntastic_javascript_eslint_exe = 'yarn eslint'

" Disable global eslintrc file, as that's not a thing anymore
" let g:syntastic_javascript_eslint_args = /"--no-eslintrc --config ~/.eslintrc/"

" enable to debug syntastic
" let g:syntastic_debug = 33

" Set es6 filetype for js files
au BufNewFile,BufRead *.es6 set filetype=javascript

" I have no idea why this is not working, as it used to
" be a part of syntastic code but was apparently removed
" This will make syntastic find the correct ruby specified by mri
function! s:FindRubyExec()
    if executable("rvm")
        return system("rvm tools identifier")
    endif

    return "ruby"
endfunction

if !exists("g:syntastic_ruby_exec")
    let g:syntastic_ruby_exec = s:FindRubyExec()
endif
