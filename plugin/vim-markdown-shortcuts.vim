" Shortcuts for Markdown documents edited in vim
" Author: Yi ZHOU
" Date: 12-Nov-2014

" Set Header class
function Header0()
    let curLine = getline(".")
    let repLine = substitute(curLine, "^\\\#\\{0,}\\(.*\\)", "\\1", "")
    call setline(".", repLine)
endfunction

function Header1()
    let curLine = getline(".")
    let repLine = substitute(curLine, "^\\\#\\{0,}\\(.*\\)", "\#\\1", "")
    call setline(".", repLine)
endfunction

function Header2()
    let curLine = getline(".")
    let repLine = substitute(curLine, "^\\\#\\{0,}\\(.*\\)", "\#\#\\1", "")
    call setline(".", repLine)
endfunction

function Header3()
    let curLine = getline(".")
    let repLine = substitute(curLine, "^\\\#\\{0,}\\(.*\\)", "\#\#\#\\1", "")
    call setline(".", repLine)
endfunction

function Header4()
    let curLine = getline(".")
    let repLine = substitute(curLine, "^\\\#\\{0,}\\(.*\\)", "\#\#\#\#\\1", "")
    call setline(".", repLine)
endfunction

function Header5()
    let curLine = getline(".")
    let repLine = substitute(curLine, "^\\\#\\{0,}\\(.*\\)", "\#\#\#\#\#\\1", "")
    call setline(".", repLine)
endfunction

function Header6()
    let curLine = getline(".")
    let repLine = substitute(curLine, "^\\\#\\{0,}\\(.*\\)", "\#\#\#\#\#\#\\1", "")
    call setline(".", repLine)
endfunction

function Header7()
    let curLine = getline(".")
    let repLine = substitute(curLine, "^\\\#\\{0,}\\(.*\\)", "\#\#\#\#\#\#\#\\1", "")
    call setline(".", repLine)
endfunction

" Strong
function Strong()
    let curLine = getline(".")
    let repLine = substitute(curLine, "\\(.*\\)", "\*\*\\1\*\*", "")
    call setline(".", repLine)
endfunction

" Emphasize
function Emph()
    let curLine = getline(".")
    let repLine = substitute(curLine, "\\(.*\\)", "\*\\1\*", "")
    call setline(".", repLine)
endfunction

" Default Keyboard Mapping
map \h0 :call Header0()<CR>
map \h1 :call Header1()<CR>
map \h2 :call Header2()<CR>
map \h3 :call Header3()<CR>
map \h4 :call Header4()<CR>
map \h5 :call Header5()<CR>
map \h6 :call Header6()<CR>
map \h7 :call Header7()<CR>

map \st :call Strong()<CR>
map \em :call Emph()<CR>
"command -nargs=0  Foo call s:Header1()

