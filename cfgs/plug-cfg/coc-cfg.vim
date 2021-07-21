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

" Ctrl+space 调出自动补全
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
" 通过调用跳转到当前符号的定义
nmap <silent> gd <Plug>(coc-definition)
" 通过调用跳转到当前符号的类型定义
nmap <silent> gy <Plug>(coc-type-definition)
" 通过调用跳转到当前符号的实现
nmap <silent> gi <Plug>(coc-implementation)
" 通过调用跳转到当前符号的引用
nmap <silent> gr <Plug>(coc-references)

" 使用 K 在预览窗口中显示文档
nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>

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

" 显示当前工作空间的诊断
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

" 文件树
nnoremap tt :CocCommand explorer<CR>
