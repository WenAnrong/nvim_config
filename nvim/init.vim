" 编码设置
let g:airline_powerline_fonts = 1   " 字体设置
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030

" 启用插件
set nocompatible
filetype on
filetype plugin indent on

" Tab转空格
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" 记录上次光标位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 分屏设置
" 向右分屏并把光标移动向右边
map td :set splitright<CR>:vsplit<CR>
" 向右分屏并把光标移动向左边
map ta :set nosplitright<CR>:vsplit<CR>
" 向下分屏并把光标移动向上边
map ts :set nosplitbelow<CR>:split<CR>
" 向下分屏并把光标移动向下边
map tw :set splitbelow<CR>:split<CR>

" 替换方向键为调节分屏大小
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" 按键映射
map W :w<CR>
map Q :wq<CR>
map tq :q!<CR>
map te :terminal<CR>

" 其他的一些配置 
syntax on   " 语法高亮
set number      " 显示行号
set relativenumber    "  把当前所在行的行号向前突出
set wildmenu    "  让vim命令可用Tab补全
set hlsearch      " 变输入搜索词边高亮
set incsearch      " 光标自动跳转到搜索结果上
set t_ut=  " 防止vim背景颜色错误

" 插件
call plug#begin('~/.vim/plugged')

" vim中文文档
Plug 'yianwillis/vimcdoc'

" Web和markdown
Plug 'mattn/emmet-vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" coc.nvim代码补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim的dart支持
Plug 'dart-lang/dart-vim-plugin'

" NERDTree文件树
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" 修改启动界面
Plug 'mhinz/vim-startify'

" 状态栏、主题美化
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 增加代码缩进线
Plug 'yggdroot/indentline'

" 快速注释
Plug 'scrooloose/nerdcommenter'

" 代码显示颜色
Plug 'gko/vim-coloresque'

" 彩色括号
Plug 'luochen1990/rainbow'

" 配色
Plug 'crusoexia/vim-monokai'

" 展示当前文件的一些函数
Plug 'majutsushi/tagbar'

" 翻译
Plug 'voldikss/vim-translator'

call plug#end()



" =========
" emmet-vim
" =========
" 只在html/css文件中生效
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall



" =========
" vim-markdown
" =========
let g:vim_markdown_math = 1



" =========
" markdown-preview
" =========
nmap <silent> <F7> <Plug>MarkdownPreview
imap <silent> <F7> <Plug>MarkdownPreview
nmap <silent> <F8> <Plug>StopMarkdownPreview
imap <silent> <F8> <Plug>StopMarkdownPreview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browser = ''
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }
let g:mkdp_markdown_css = '~/something/My-Typora-Themes/zj.css'
let g:mkdp_highlight_css = '~/something/My-Typora-Themes/zj.css'
let g:mkdp_port = ''
source ~/.config/nvim/md-snippets.vim


" =========
" vim-translator
" =========
" 在窗口中显示翻译
nmap <silent> <Leader>w <Plug>TranslateW
" 将文字替换为翻译
nmap <silent> <Leader>r <Plug>TranslateR
" 翻译剪贴板中的文字
nmap <silent> <Leader>x <Plug>TranslateX



" =========
" vim-monokai
" =========
colo monokai



" =========
" tagbar
" =========
let g:tagbar_width=30
" 将tagbar的开关按键设置为 F4
nnoremap <silent> <F5> :TagbarToggle<CR>



" =========
" NERDTree
" =========
map tt :NERDTreeToggle<CR>



" =========
" vim-airline
" =========
" 关闭状态显示空白符号计数
 let g:airline#extensions#whitespace#enabled = 0
 let g:airline#extensions#whitespace#symbol = '!'
" 设置状态栏
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'desertink'  " 主题
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
       \ '0': '0 ',
       \ '1': '1 ',
       \ '2': '2 ',
       \ '3': '3 ',
       \ '4': '4 ',
       \ '5': '5 ',
       \ '6': '6 ',
       \ '7': '7 ',
       \ '8': '8 ',
       \ '9': '9 '
       \}
" 设置切换tab的快捷键 <\> + <i> 切换到第i个 tab
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
" 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
nmap <leader>- <Plug>AirlineSelectPrevTab
" 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
nmap <leader>+ <Plug>AirlineSelectNextTab
" 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
nmap <leader>q :bp<cr>:bd #<cr>

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'



" =========
" nerdcommenter
" =========
" 默认在注释分隔符后添加空格
let g:NERDSpaceDelims = 1
" python 自动的会多加一个空格
au FileType python let g:NERDSpaceDelims = 0
 
" 对美化的多行注释使用紧凑语法
let g:NERDCompactSexyComs = 1
 
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
 
" 将语言设置为默认使用其备用分隔符
let g:NERDAltDelims_java = 1
 
" 自定义格式
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
 
" 允许注释和反转空行（注释区域时很有用）
let g:NERDCommentEmptyLines = 1
 
" 取消注释
let g:NERDTrimTrailingWhitespace = 1
 
" 启用 NERDCommenterToggle 以检查所有选定的行是否已注释
let g:NERDToggleCheckAllLines = 1



" =========
" indentline
" =========
let g:indentLine_char='┆'
let g:indentLine_enabled = 1



" =========
" rainbow
" =========
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}



" =========
" coc.nvim
" =========
" coc 插件
let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-vimlsp',
            \ 'coc-tsserver',
            \ 'coc-python',
            \ 'coc-java',
            \ 'coc-html',
            \ 'coc-css',
            \ 'coc-pairs',
            \ 'coc-snippets',
            \ 'coc-xml',
            \ 'coc-markdownlint',
            \ 'coc-explorer',
            \ 'coc-marketplace',
            \ 'coc-flutter-tools']

set hidden
set updatetime=100
set shortmess+=c

let g:coc_snippet_next = '<c-n>'
let g:coc_snippet_prev = '<c-p>'

if has("nvim-0.5.0") || has("patch-8.1.1564")
  " 将SignColumn和Number列合并到一个
  set signcolumn=number
else
  set signcolumn=yes
endif

" 让Tab键可以补全
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Ctrl+o 调出自动补全
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" 用回车键确认补全
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" 用 `[g` and `]g` 来查找上一个或下一个代码报错
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" 跳转到函数
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" 让同类词高亮
autocmd CursorHold * silent call CocActionAsync('highlight')

" 变量重命名
nmap <leader>rn <Plug>(coc-rename)

" 代码格式化
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" 代码折叠
 augroup mygroup
   autocmd!
   " Setup formatexpr specified filetype(s).
   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
   " Update signature help on jump placeholder.
   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
 augroup end

" 类似与vscode中对代码进行右键
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" 映射函数和类文本对象
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" 使用 CTRL-S 选择选择范围
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" 使用 `:Format` 命令来格式化当前缓冲区
command! -nargs=0 Format :call CocAction('format')

" 使用 `:Fold` 命令折叠当前缓冲区
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" 使用 `:OR` 命令用于组织当前缓冲区的导入
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" 添加 (Neo)Vim 的原生状态行支持
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" 显示所以诊断
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" 管理扩展功能
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" 显示命令
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" 查找当前文档的符号
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" 搜索工作区符号
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" 为下一个项目做默认操作
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" 为上一个项目做默认操作
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" 恢复最新的coc列表
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>



" 背景透明
hi Normal ctermfg=252 ctermbg=none
