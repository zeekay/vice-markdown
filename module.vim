call vice#Extend({
    \ 'addons': [
        \ 'github:jszakmeister/markdown2ctags',
        \ 'github:chrisbra/NrrwRgn',
        \ 'github:vim-pandoc/vim-pandoc',
        \ 'github:vim-pandoc/vim-pandoc-after',
        \ 'github:vim-pandoc/vim-pandoc-syntax',
        \ 'github:dhruvasagar/vim-table-mode',
        \ 'github:zeekay/vim-instant-markdown',
    \],
\ })

au BufNewFile,BufRead *.apib setl filetype=pandoc
au FileType pandoc set textwidth=80

let g:pandoc#spell#enabled = 0
let g:pandoc#syntax#conceal#use = 0
let g:pandoc#modules#enabled = []
let g:pandoc#after#modules#enabled = ["nrrwrgn", "tablemode"]

" Add support for markdown files in tagbar.
let g:tagbar_type_pandoc = {
    \ 'ctagstype': 'pandoc',
    \ 'ctagsbin':  g:vice.addons_dir.'/markdown2ctags/markdown2ctags.py',
    \ 'ctagsargs': '-f - --sort=yes',
    \ 'kinds': [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro': '|',
    \ 'kind2scope': {
        \ 's': 'section',
    \ },
    \ 'sort': 0,
\ }

let g:nrrw_rgn_height = 30
