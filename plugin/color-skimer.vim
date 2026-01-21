" Prevent load multiple times
if exists('g:loaded_color_skimer')
  finish
endif

command! ColorSkimerToggle lua require('color-skimer').toggle()

let g:loaded_color_skimer = 1
