" 基本按键
map W :w<CR>
map Q :wq<CR>
map tq :q!<CR>
map te :terminal<CR>

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

" ----------------------
" ====== markdown-preview
" ----------------------
nmap <silent> <F7> <Plug>MarkdownPreview
imap <silent> <F7> <Plug>MarkdownPreview
nmap <silent> <F8> <Plug>StopMarkdownPreview
imap <silent> <F8> <Plug>StopMarkdownPreview

" ----------------------
" ====== vim-markdown-toc
" ----------------------
" 生成 GFM 链接风格的 Table of Contents
map mf :GenTocGFM<CR>
" 生成 Redcarpet 链接风格的 Table of Contents
map mg :GenTocRedcarpet<CR>

" ----------------------
" ====== vim-translator
" ----------------------
" 在窗口中显示翻译
nmap <silent> <Leader>w <Plug>TranslateW
" 将文字翻译后替换
nmap <silent> <Leader>r <Plug>TranslateR
" 翻译剪贴板中的文字
nmap <silent> <Leader>x <Plug>TranslateX

" ----------------------
" ====== NERDTree
" ----------------------
map tt :NERDTreeToggle<CR>

" ----------------------
" ====== suda.vim
" ----------------------
" 在写没有权限的文件时，使用:sw可以调用root权限写入
cnoreabbrev sudowrite w suda://%
cnoreabbrev sw w suda://%


" ----------------------
" ====== floaterm <localleader>f
" ----------------------
" let g:floaterm_keymap_toggle = '<F1>'
" 打开floaterm窗口
let g:floaterm_keymap_toggle = '<Localleader>ff'
" 下一个floaterm窗口
let g:floaterm_keymap_next = '<Localleader>fn'
" 上一个floaterm窗口
let g:floaterm_keymap_prev = '<Localleader>fp'
" 创建一个新的floaterm窗口
let g:floaterm_keymap_new = '<Localleader>fc'
" 跳转到第一个floaterm窗口
let g:floaterm_keymap_first = '<Localleader>fa'
" 跳转到最后一个floaterm窗口
let g:floaterm_keymap_last = '<Localleader>fe'
" 隐藏和显示完全可以使用<leader>ff来操作
" 隐藏floaterm
let g:floaterm_keymap_hide = '<Localleader>fh'
" 显示floaterm
let g:floaterm_keymap_show = '<Localleader>fs'
" 关闭floaterm当前窗口,并退出floaterm
let g:floaterm_keymap_kill = '<Localleader>fk'

" floaterm 打开ranger
nmap <Localleader>fr :FloatermNew ranger<CR>
" floaterm 打开 fzf
nmap <Localleader>fz :FloatermNew fzf<CR>
" floaterm 打开 lazygit
nmap <Localleader>fg :FloatermNew lazygit<CR>

" ------------------------------
" === Bookmarks/Buffers Operation <localleader>b <leader>b
" ------------------------------
"  在当前行添加或删除书签 bookmark toggle insert
nmap <localleader>bi <Plug>BookmarkToggle
" 在当前行添加书签说明 bookmark annotate
nmap <localleader>ba <Plug>BookmarkAnnotate
" 显示所有书签 list
nmap <localleader>bl <Plug>BookmarkShowAll
" 下一个书签 next
nmap <localleader>bn <Plug>BookmarkNext
" 上一个书签 previous
nmap <localleader>bp <Plug>BookmarkPrev
" 清除书签 好像和BookmarkClearAll是一样的效果 clean/clear
nmap <localleader>bc <Plug>BookmarkClear
" 清除所有书签 大写X
nmap <localleader>bC <Plug>BookmarkClearAll
" 将书签向上移动一行 up
nmap <localleader>bu <Plug>BookmarkMoveUp
" 将书签向下移动一行 down
nmap <localleader>bd <Plug>BookmarkMoveDown
"将书签移至任意一行 go
nmap <localLeader>bg <Plug>BookmarkMoveToLine
" 保存所有书签至一个文件:BookmarkSave <filePath>
" 从一个文件加载书签:BookmarkLoad <filePath>

" === Buffer Operation <leader>b
"
" 此处不加回车，调出buffer命令后，写buffer数字进行跳转 buffer search
nmap <leader>bN :XTabNextBuffer<space>
nmap <leader>bP :XTabPrevBuffer<space>
nmap <leader>bs <Plug>(XT-Select-Buffer)<space>
nmap <leader>bn :XTabNextBuffer<CR>
nmap <leader>bp :XTabPrevBuffer<CR>
nmap <leader>bm :XTabMode<CR>
" 查询所有buffer，然后选择加载
" nmap <leader>bl :XTabListBuffers<CR>
nmap <leader>bl :Buffers<CR>

" ------------------------------
" === Content Operation <leader>c
" ------------------------------
" 常规模式下输入 cS 清除行尾空格,同时取消高亮
nmap <localleader>cs :%s/\s\+$//g<CR>:noh<CR>
" 常规模式下输入 cM 清除行尾 ^M 符号,同时取消高亮
nmap <localleader>cm :%s/\r$//g<CR>:noh<CR>
" 取消高亮
nmap <localleader>ch :noh<CR>
" 删除空行
nmap <localleader>cl :g/^$/d<CR>:noh<CR>
" 删除行首空格
nmap <localleader>ca :%s/^\s*//g<CR>:noh<CR>
" 从当前字符换行
noremap <leader>cj i<CR><ESC>

" ------------------------------
" === easy-align
" ------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ------------------------------
" === visual.vim
" ------------------------------
map <localleader>v :Vista<CR>
