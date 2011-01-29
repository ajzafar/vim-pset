function! pset#pset(...)
    " Store things
    let orig_pos = getpos('.')
    let orig_mark = getpos("'m")

    " Open environment
    put! = \"\\begin{probset}\n\n\"
    " Create mark for indentation
    mark m

    " Place problems
    for problem in a:000
        put = '\prob{' . problem . \"}\n\n\"
    endfor

    " End text
    put = '\end{probset}'
    " Move before end environment
    -1
    " Indent text
    'm,.>

    " Restore things
    call setpos("'m", orig_mark)
    call setpos('.', orig_pos)
endfunction
