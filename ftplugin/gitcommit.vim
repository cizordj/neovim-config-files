if exists('b:loaded_myplugin')
  finish
endif

let g:smoothie_enabled = 0
set tabstop=2 shiftwidth=2
let we_are_on_git_flow=system('git rev-parse --abbrev-ref HEAD | grep feature | wc -l')
if we_are_on_git_flow
    let it_was_executed_already = strlen(getline(1)) > 0
    if !it_was_executed_already
      norm gg4j5wywggI[]PA
    endif
endif

let b:loaded_myplugin = 1
