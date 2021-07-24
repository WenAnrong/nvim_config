call plug#begin('~/.config/nvim/plugins')

" dracula 配色主题
" https://draculatheme.com/vim
Plug 'dracula/vim', { 'as': 'dracula' }

" Pretty Dress
Plug 'ajmwagar/vim-deus'
Plug 'morhetz/gruvbox'

" 虚拟环境
Plug 'jmcantrell/vim-virtualenv',{'on': [ 'VirtualEnvActivate', 'VirtualEnvDeactivate', 'VirtualEnvList' ], 'for' : ['python', 'vim-plug']}

"状态栏airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mg979/vim-xtabline'

"图标
Plug 'ryanoasis/vim-devicons'

" vim的dart支持
Plug 'dart-lang/dart-vim-plugin'

" easymotion
Plug 'easymotion/vim-easymotion'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"符号对齐
Plug 'junegunn/vim-easy-align'

" 可视化缩进线
Plug 'Yggdroot/indentLine'

" 注释插件
Plug 'scrooloose/nerdcommenter'

" 浮动窗口
Plug 'voldikss/vim-floaterm'

" 括号高亮
Plug 'luochen1990/rainbow'

" 单词包裹
" ysiw' 将光标所在字符串(一个单词)进行包裹
" 如果需要包裹多个单词，需要先按v或V进入可视模式选择字符，然后输入大写S，再输入包裹符号
" ds' 清除''
" cs'" 单引号替换成双引号（其他符号同理）
Plug 'tpope/vim-surround'   " 如果使用 . 重复surround的操作需要安装vim-repeat插件进行配合
Plug 'tpope/vim-repeat'

" markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" 为 Markdown 生成 TOC 的 Vim 插件
Plug 'mzlogin/vim-markdown-toc', {'for':['gitignore','markdown','vim-plug'],'on':['GenTocGFM', 'GenTocGitLab', 'GenTocMarked', 'GenTocModeline', 'GenTocRedcarpet']}
" markdown table
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
" 文档编号整理，自动编号
Plug 'dkarter/bullets.vim', {'for' : ['markdown', 'text', 'gitcommit', 'scratch', 'vim-plug']}

" vimwiki
Plug 'vimwiki/vimwiki'

" 书签
Plug 'MattesGroeger/vim-bookmarks'

" 内置终端配置
Plug 'skywind3000/vim-terminal-help'

" fzf Plug
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plug vim-visual-multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" 翻译
Plug 'voldikss/vim-translator'

" sudo write root file
Plug 'lambdalisue/suda.vim'

" 启动页面
Plug 'mhinz/vim-startify'

Plug 'ludovicchabant/vim-gutentags'

Plug 'mattn/calendar-vim'

Plug 'pangloss/vim-javascript'

call plug#end()
