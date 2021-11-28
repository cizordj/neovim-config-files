if exists('b:loaded_myplugin')
  finish
endif
call ncm2#enable_for_buffer()
let b:loaded_myplugin = 1
