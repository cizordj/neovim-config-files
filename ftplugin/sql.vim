if exists('b:loaded_myplugin')
  finish
endif

setl formatprg="/usr/bin/pg_format -B -g -L -b -e -"

let b:loaded_myplugin = 1
