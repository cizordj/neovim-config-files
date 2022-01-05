if exists('b:loaded_myplugin') | finish | endif

call ncm2#enable_for_buffer()
set shiftwidth=4 tabstop=4
" php
" Phpactor plugin
" Include use statement
nmap <Leader>u :call phpactor#UseAdd()<CR>
" Invoke the context menu
nmap <Leader>mm :call phpactor#ContextMenu()<CR>
" Invoke the navigation menu
nmap <Leader>nn :call phpactor#Navigate()<CR>
" Goto definition of class or class member under the cursor
nmap <Leader>oo :call phpactor#GotoDefinition()<CR>
nmap <Leader>oh :call phpactor#GotoDefinition('hsplit')<CR>
nmap <Leader>ov :call phpactor#GotoDefinition('vsplit')<CR>
nmap <Leader>ot :call phpactor#GotoDefinition('tabnew')<CR>
" Show brief information about the symbol under the cursor
nmap <Leader>K :call phpactor#Hover()<CR>
" Transform the classes in the current file
nmap <Leader>tt :call phpactor#Transform()<CR>
" Generate a new class (replacing the current file)
nmap <Leader>cc :call phpactor#ClassNew()<CR>
" Extract expression (normal mode)
nmap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>
" Extract expression from selection
vmap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>
" Extract method from selection
vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>

lua << EOF
require'lspconfig'.phpactor.setup{}
EOF
setlocal omnifunc=v:lua.vim.lsp.omnifunc
let b:ale_fixers = ['php_cs_fixer']
let b:ale_php_phpmd_ruleset = 'cleancode,controversial,design,naming,unusedcode'
let b:loaded_myplugin = 1
