"""""""""""""""""
" Base settings "
"               "
"""""""""""""""""
syntax on
colorscheme torte

set title
set number
set autoindent
set showmatch
set showmode
set ruler

" tab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" space
set backspace=indent,eol,start
set lcs=tab:>.,trail:_,extends:¥
set list
highlight JpSpace cterm=underline ctermfg=lightblue guifg=#666666
au BufNewFile,BufRead,BufNew * match JpSpace /　/

" file
set nobackup
set noswapfile

" search
set smartcase
set wrapscan
set hlsearch

" popup
highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1

" Auto-completion of parentheses
" inoremap { {}<LEFT>
" inoremap [ []<LEFT>
" inoremap ( ()<LEFT>
" inoremap < <><LEFT>
" inoremap " ""<LEFT>
" inoremap ' ''<LEFT>
" vnoremap { "zdi^V{<C-R>z}<ESC>
" vnoremap [ "zdi^V[<C-R>z]<ESC>
" vnoremap ( "zdi^V(<C-R>z)<ESC>
" vnoremap " "zdi^V"<C-R>z^V"<ESC>
" vnoremap ' "zdi'<C-R>z'<ESC>

" Japanese Language
if has('multi_byte_ime') || has('xim')
highlight CursorIM guibg=Cyan guifg=NONE
endif

"""""""
" PHP "
"     "
"""""""
autocmd BufNewFile,BufRead *.ctp set filetype=php
let php_htmlInStrings=1

"""""""
" Perl "
"     "
"""""""
autocmd BufNewFile,BufRead *.t set filetype=perl

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-pathogen (https://github.com/tpope/vim-pathogen) "
"                                                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#runtime_append_all_bundles()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplcache (https://github.com/Shougo/neocomplcache) "
"                                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3

" Expand keyword with snippet
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)

" Close popup
inoremap <expr><CR>    neocomplcache#smart_close_popup() . "\<CR>"
inoremap <expr><Up>    neocomplcache#smart_close_popup() . "\<Up>"
inoremap <expr><Down>  neocomplcache#smart_close_popup() . "\<Down>"
inoremap <expr><LEFT>  neocomplcache#smart_close_popup() . "\<LEFT>"
inoremap <expr><RIGHT> neocomplcache#smart_close_popup() . "\<RIGHT>"

" Select keyword
inoremap <expr><TAB>   pumvisible() ? "\<C-n>" : "\<TAB>"

"" Setting the Dictionary
"let g:neocomplcache_dictionary_filetype_lists = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ 'scheme' : $HOME.'/.gosh_completions'
"    \ }

"" Define keyword.
"if !exists('g:neocomplcache_keyword_patterns')
"let g:neocomplcache_keyword_patterns = {}
"endif
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

"" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"" Enable heavy omni completion.
" if !exists('g:neocomplcache_omni_patterns')
" let g:neocomplcache_omni_patterns = {}
" endif

"" autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
" let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
" let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
" let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
