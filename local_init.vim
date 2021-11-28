au User Ncm2PopupOpen set completeopt=noinsert,menuone,noselect
au User Ncm2PopupClose set completeopt=menuone

let g:smoothie_enabled = 1
let g:smoothie_experimental_mappings = 1
silent! map <unique> gg         <Plug>(Smoothie_gg)
silent! map <unique> G          <Plug>(Smoothie_G)
command! ClearCache :!docker-compose exec --user www-data -T php php bin/console cache:clear
command! DeleteFile :call delete(expand('%')) | bdelete!
command! EditConfigInitVim :e ~/.config/nvim/init.vim
command! EditConfigLocalBundles :e ~/.config/nvim/local_bundles.vim
command! EditConfigLocalVim :e ~/.config/nvim/local_init.vim
command! ElasticaPopulate :!docker-compose exec --user www-data -T php php bin/console fos:elastica:populate
command! FixPermissions :!docker-compose exec -T php chown www-data:www-data -R var/
command! GAmmend :Git commit --amend --verbose
command! GenerateRoutes :!docker-compose exec --user www-data -T php php bin/console fos:js-routing:dump --format=json --target=public/js/fos_js_routes.json
command! GimmePermission :!doas chown $USER:$USER '%'
command! JsonPrettify :%!jq '.'
command! JsonUglify :%!jq --compact-output '.'
command! MakeItFast :!xset r rate 200 40
command! PgFormat :%!pg_format -B -g -L -b -e -
command! PhpactorRemoveUnusedClasses :!php-cs-fixer fix '%' --rules=no_unused_imports
command! RelatorioGerar :!docker-compose exec --user www-data -T php php bin/console relatorio:gerar
command! Reload :so ~/.config/nvim/init.vim
command! ReviseCode :Git diff develop HEAD
let g:neovide_cursor_vfx_mode = "railgun"

set background=dark
colorscheme iceberg
let g:airline_theme='jellybeans'

let we_are_on_git_flow=system('git rev-parse --abbrev-ref HEAD | grep feature | wc -l')
if we_are_on_git_flow
    let current_branch = system('git rev-parse --abbrev-ref HEAD | sed "s/\//\-/g" | tr -d "\n" | tr "[:upper:]" "[:lower:]"')
    autocmd VimEnter * execute 'SessionOpen' current_branch
    autocmd VimEnter * execute 'filetype detect'
endif

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#ignore_bufadd_pat = 'defx|gundo|nerd_tree|startify|tagbar|undotree|vimfiler'
set exrc
set secure

" Dbext plugin
let g:dbext_default_profile = 'brd2'
let g:dbext_default_profile_apigca = $DBEXT_DEFAULT_PROFILE_APIGCA
let g:dbext_default_profile_brd2 = $DBEXT_DEFAULT_PROFILE_BRD2
augroup apigca
    au!
    " Automatically choose the correct dbext profile
    autocmd BufRead /home/cezar-campos/Desktop/APIGoogleConsoleAdmin/* DBSetOption profile=apigca
augroup end

" Não sei o que isso faz, mas ele deixa o vim mais bonito
set termguicolors
set cul
set guicursor=i-ci-ve:ver25,n-v-c-sm:ver25
