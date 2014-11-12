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

" Keyboard Mapping
map \h0 :call Header0()<CR>
map \h1 :call Header1()<CR>
"command -nargs=0  Foo call s:Header1()

