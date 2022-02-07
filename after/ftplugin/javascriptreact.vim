if exists('b:loaded_myplugin')
  finish
endif

call ncm2#enable_for_buffer()
let b:ale_fixers = ['prettier', 'eslint']
let b:ale_completion_enabled = 1
nmap <Leader>u :ALEImport<CR>
nmap <Leader>oo :ALEGoToDefinition<CR>
nmap <Leader>pp :Prettier<CR>
set omnifunc=ale#completion#OmniFunc
let g:ale_completion_autoimport = 1
let g:airline#extensions#ale#enabled = 1
if executable('tsc') && executable('tsserver') && executable('typescript-language-server')
lua << EOF
require'lspconfig'.tsserver.setup{}
EOF
endif

UltiSnipsAddFiletypes javascript.javascriptreact.html
let b:loaded_myplugin = 1
