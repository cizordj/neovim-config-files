if exists('b:loaded_myplugin')
  finish
endif

let b:ale_fixers = ['jq']

let b:loaded_myplugin = 1
