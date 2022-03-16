if exists('b:loaded_myplugin')
    finish
endif
let b:ale_fixers = { 'yaml': ['yamlfix', 'prettier'] }
