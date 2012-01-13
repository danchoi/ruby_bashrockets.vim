echo "loaded bashrockets"

function! s:hashrockets() range
  let lnum = a:firstline
  while lnum <= a:lastline
    let line = getline(lnum)
    let newline = substitute(getline('.'), '\(\w\+\):', ':\1 =>', 'g')
    call setline(lnum, newline)
    let lnum += 1
  endwhile
endfunction

function! s:bashrockets() range
  let lnum = a:firstline
  while lnum <= a:lastline
    let line = getline(lnum)
    let newline = substitute(getline('.'), ':\(\w\+\)\s*=>', '\1:', 'g')
    call setline(lnum, newline)
    let lnum += 1
  endwhile
endfunction
command! -range Bashrockets call s:bashrockets()
command! -range Hashrockets call s:hashrockets()
