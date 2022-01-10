if exists('b:loaded_myplugin')
  finish
endif

let formatprg="/usr/bin/pg_format -B -g -L -b -e -"
let equalprg="/usr/bin/pg_format -B -g -L -b -e -"

let b:loaded_myplugin = 1
