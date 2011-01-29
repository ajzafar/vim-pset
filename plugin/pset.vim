" Pset:    Defines Pset command for answering problem sets in LaTeX
" Author:  Adnan Zafar <adnanjzafarNOSPAM@gmail.com>
" GitHub:  http://github.com/ajzafar/vim-pset
" License: This file is placed in the public domain.

" Basic set up {{{
if (exists('g:loaded_pset') && g:loaded_pset) || &cp
    finish
endif
let g:loaded_pset = 1

let s:save_cpo = &cpo
set cpo&vim
" }}}

if !exists(":Pset")
    command -nargs=+ Pset call pset#pset(<f-args>)
endif

" Basic set up {{{
let &cpo = s:save_cpo
" }}}
