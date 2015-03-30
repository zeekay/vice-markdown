call vice#Extend({
    \ 'addons': [
        \ 'github:zeekay/vim-instant-markdown',
        \ 'github:plasticboy/vim-markdown',
        \ 'github:jtratner/vim-flavored-markdown',
    \],
\ })

au BufNewFile,BufRead *.apib                        setl filetype=markdown
au BufNewFile,BufRead *.{md,mkd,mkdn,mark*}         setl filetype=markdown

au FileType markdown set textwidth=80
let g:markdown_include_jekyll_support = 1
let g:markdown_enable_folding = 0
let g:markdown_enable_mappings = 1
let g:markdown_enable_insert_mode_mappings = 1
let g:markdown_enable_insert_mode_leader_mappings = 0
let g:markdown_enable_spell_checking = 0
let g:vim_markdown_folding_disabled = 1
