" Vim color file

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "default"

hi Comment ctermfg=Blue term=NONE cterm=NONE gui=NONE
hi Special ctermfg=Magenta term=NONE cterm=NONE gui=NONE
hi Statement term=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=Magenta term=NONE cterm=NONE gui=NONE
hi Type term=NONE cterm=NONE gui=NONE
hi Underlined term=NONE cterm=NONE gui=NONE
hi Constant ctermfg=Red term=NONE cterm=NONE gui=NONE

