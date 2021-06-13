let g:startify_padding_left = 20
" let g:startify_custom_header =
"         \ startify#fortune#cowsay('', '═','║','╔','╗','╝','╚')

let g:startify_custom_header = [
            \"                         __            __            __       __            ________           ",
            \"                         \\ \\          /  \\          / /      /  \\          |  ______\\          ",
            \"                          \\ \\        / /\\ \\        / /      / /\\ \\         | |     \\ \\         ",
            \"                           \\ \\      / /  \\ \\      / /      / /  \\ \\        | |_____/ /         ",
            \"                            \\ \\    / /    \\ \\    / /      / /____\\ \\       | |------/          ",
            \"                             \\ \\  / /      \\ \\  / /      / /------\\ \\      | |  \\ \\            ",
            \"                              \\ \\/ /        \\ \\/ /      / /        \\ \\     | |   \\ \\           ",
            \"                               \\__/          \\__/      /_/          \\_\\    |_|    \\_\\          "
            \]

" let g:startify_custom_footer =
"        \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

" hi StartifyBracket ctermfg=240
" hi StartifyFile    ctermfg=147
" hi StartifyFooter  ctermfg=240
" hi StartifyHeader  ctermfg=114
" hi StartifyNumber  ctermfg=215
" hi StartifyPath    ctermfg=245
" hi StartifySlash   ctermfg=240
" hi StartifySpecial ctermfg=240
"

" ------------------------------
" === 在页面显示devicons
" ------------------------------

function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
