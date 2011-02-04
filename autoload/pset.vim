function s:GetVar(var)
    if exists('b:' . a:var)
        return b:{a:var}
    else
        return g:{a:var}
    endif
endfunction

function pset#pset(...)
    " Store things
    let orig_pos = getpos('.')
    let orig_mark = getpos("'m")

    " Open environment
    silent put! = s:GetVar('pset_begin')
    silent put _
    " Create mark for indentation
    mark m

    " Place problems
    for problem in a:000
        silent put = substitute(s:GetVar('pset_problem'), '\r', problem, '')
        silent put _
    endfor

    " End text
    silent put = s:GetVar('pset_end')
    " Move before end environment
    -1
    " Indent text
    'm,.>

    " Restore things
    call setpos("'m", orig_mark)
    call setpos('.', orig_pos)
endfunction
