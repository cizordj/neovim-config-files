if exists('b:loaded_myplugin')
  finish
endif

setlocal commentstring={#\ %s

let b:loaded_myplugin = 1
