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

    " Open environment
    if !empty(s:GetVar('pset_begin'))
        silent put! = s:GetVar('pset_begin')
    endif

    " Place problems
    for problem in a:000
        silent put = substitute(s:GetVar('pset_problem'), '\r', problem, '')
        silent put _
    endfor

    " End text
    if !empty(s:GetVar('pset_begin'))
        silent put = s:GetVar('pset_end')
    endif

    " Restore things
    call setpos('.', orig_pos)
endfunction
