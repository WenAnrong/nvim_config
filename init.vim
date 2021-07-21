set nocompatible    "禁用 Vi 兼容模式
" 当文件在外部被修改，自动更新该文件
set autoread
syntax on
filetype on

" 设置undo backup目录
silent !mkdir -p ~/.config/nvim/tmp/backup
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.

"显示最后一行的状态
set ruler
set rulerformat=%15(%c%V\ %p%%%)

"把tab转成空格
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

" 控制台响铃
" 出错时，不要发出响声
set noerrorbells
"出错时，发出视觉提示，通常是屏幕闪烁
set novisualbell
set t_vb= "close visual bell

"垂直滚动时，光标距离顶部/底部的位置（单位：行）
set scrolloff=5
"水平滚动时，光标距离行首或行尾的位置（单位：字符）。该配置在不折行时比较有用。
set sidescrolloff=15

" 记录上次光标位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set showcmd    " 状态栏显示目前所执行的指令
syntax on   " 语法高亮
set number      " 显示行号
set relativenumber    "  把当前所在行的行号向前突出
set wildmenu    "  让vim命令可用Tab补全
set t_ut=  " 防止vim背景颜色错误
set backspace=2    "能使用backspace回删
set cmdheight=2    "设置命令行的高度
set autochdir    " 自动切换到文件当前目录
set noimdisable    " 离开 Insert 模式时自动切换至英文输入法

" -----------------------------------------------------------------------------
"  < 搜索配置 > --- Begin
" -----------------------------------------------------------------------------
"在查找时忽略大小写
set ignorecase
"在查找时忽略大小写
set ignorecase
"如果搜索模式包含大写字符，不使用 'ignorecase' 选项，只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用
set smartcase
"在输入要搜索的文字时，实时匹配
set incsearch
"显示匹配的括号
set showmatch
"高亮搜索
set hlsearch
" -----------------------------------------------------------------------------
"  < 搜索配置 > --- End
" -----------------------------------------------------------------------------


" -----------------------------------------------------------------------------
"  < 编码配置 >
" -----------------------------------------------------------------------------
" 注：使用utf-8格式后，软件与程序源码、文件路径不能有中文，否则报错
set encoding=utf8                                    "设置vim内部编码，默认不更改
set fileencoding=utf-8                                "设置当前文件编码，可以更改，如：gbk（同cp936）
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1     "设置支持打开的文件的编码

" 文件格式，默认 ffs=dos,unix
set fileformat=unix                                   "设置新（当前）文件的<EOL>格式，可以更改，如：dos（windows系统常用）
set fileformats=unix,dos,mac                          "给出文件的<EOL>格式类型
" -----------------------------------------------------------------------------
"  < 编码配置 > --- End
" -----------------------------------------------------------------------------


" -----------------------------------------------------------------------------
"  < 折叠配置 >
" -----------------------------------------------------------------------------
" 设置默认折叠方式为缩进
" manual	手工定义折叠
" indent	更多的缩进表示更高级别的折叠
" expr	用表达式来定义折叠
" syntax	用语法高亮来定义折叠
" diff	对没有更改的文本进行折叠
" marker	对文中的标志折叠
set foldmethod=indent
" 每次打开文件时关闭折叠
set foldlevelstart=99
" -----------------------------------------------------------------------------
"  < 折叠配置 > --- End
" -----------------------------------------------------------------------------


" -----------------------------------------------------------------------------
"  < 其他配置 >
" -----------------------------------------------------------------------------
" 基本配置
source $HOME/.config/nvim/cfgs/plug-cfg.vim
source $HOME/.config/nvim/cfgs/keybinding.vim

" 主题配置
source $HOME/.config/nvim/cfgs/theme-cfg.vim

" 一键运行
source $HOME/.config/nvim/cfgs/compileRun.vim

" 插件配置
source $HOME/.config/nvim/cfgs/plug-cfg/airline-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/bookmarks-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/bullets-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/coc-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/coc-extensions.vim
source $HOME/.config/nvim/cfgs/plug-cfg/easymotion-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/floaterm-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/fzf-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/indentline-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/markdown-preview-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/markdown-snippets.vim
source $HOME/.config/nvim/cfgs/plug-cfg/nerdcommenter-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/vim-gutentags-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/vim-javascript-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/vim-startify-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/vim-translator.vim
source $HOME/.config/nvim/cfgs/plug-cfg/vimwiki-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/xtabline-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/python-venv.vim
" -----------------------------------------------------------------------------
"  < 其他配置 > --- End
" -----------------------------------------------------------------------------
