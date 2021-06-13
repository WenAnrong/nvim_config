" ------------------------------------------------------------------------------
" ====== 主题   -----------必须在plug配置之后
" ------------------------------------------------------------------------------

"""""""""""deus配置"""""""""""""
colorscheme deus
" 开启直色后，nvim背景不再透明
set t_Co=256
let g:deus_termcolors=256
" enable true colors support
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set background=dark
hi NonText ctermfg=gray guifg=grey10

" -----------------------------
" === base colors config
" -----------------------------
"
" 高亮当前列
set cursorcolumn
" 高亮当前行
set cursorline

" ------------------------------
" === Terminal Behaviors
" === 配置vim真色后，内置终端、floaterm、ranger等在vim内打开，颜色会失真，故做如下配置
" ------------------------------
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'
