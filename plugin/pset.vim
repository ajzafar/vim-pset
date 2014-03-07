" Pset:    Defines Pset command for answering problem sets in LaTeX
" Author:  Adnan Zafar <adnanjzafarNOSPAM@gmail.com>
" GitHub:  http://github.com/ajzafar/vim-pset
" License: This file is placed in the public domain.

" Basic set up {{{
if exists('g:loaded_pset') || &cp
    finish
endif
let g:loaded_pset = 1

let s:save_cpo = &cpo
set cpo&vim
" }}}

if !exists(":Pset")
    command -nargs=+ Pset call pset#pset(<f-args>)
endif

" Taken from NERD Commenter
" Given a var name and a value, set the var to the value if it doesn't exist
function s:InitVariable(var, value)
    if !exists(a:var)
        exec 'let ' . a:var . ' = ' . "'" . a:value . "'"
        return 1
    endif
    return 0
endfunction

call s:InitVariable('g:pset_begin', '')
call s:InitVariable('g:pset_end', '')
call s:InitVariable('g:pset_problem', "\\begin{prob}[\r]\n  \n\\end{prob}")

" Basic set up {{{
let &cpo = s:save_cpo
" }}}
