let g:molokai_original = 1
let g:rehash256 = 1

" syntastic config
let g:syntastic_python_checkers=['pyflakes', 'pep8'] " 使用pyflakes,速度比pylint快
let g:syntastic_python_pep8_args='--ignore=E501,E225,E124,E712'"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_auto_jump = 0
let g:syntastic_loc_list_height = 5

function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic_error location panel
        Errors
    endif
endfunction
nnoremap <Leader>s :call ToggleErrors()<cr>

" ,en ,ep to jump between errors
function! <SID>LocationPrevious()
try
    lprev
catch /^Vim\%((\a\+)\)\=:E553/
    llast
endtry
endfunction

function! <SID>LocationNext()
try
    lnext
catch /^Vim\%((\a\+)\)\=:E553/
    lfirst
endtry
endfunction

nnoremap <silent> <Plug>LocationPrevious    :<C-u>exe 'call <SID>LocationPrevious()'<CR>
nnoremap <silent> <Plug>LocationNext        :<C-u>exe 'call <SID>LocationNext()'<CR>
nmap <silent> <Leader>ep    <Plug>LocationPrevious
nmap <silent> <Leader>en    <Plug>LocationNext
" 修改高亮的背景色, 适应主题
highlight SyntasticErrorSign guifg=white guibg=black

let g:NERDSpaceDelims=1
let g:NERDAltDelims_python = 1

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" easyalign {{{
    vmap <Leader>a <Plug>(EasyAlign)
    nmap <Leader>a <Plug>(EasyAlign)
    if !exists('g:easy_align_delimiters')
        let g:easy_align_delimiters = {}
    endif
    let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String']  }
    " Default:
    " If a delimiter is in a highlight group whose name matches any of the followings, it will be ignored.
    let g:easy_align_ignore_groups = ['Comment', 'String']
" }}}

" ultisnips {{{
    let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/snippets/'
    map <leader>us :UltiSnipsEdit<CR>
" }}}
