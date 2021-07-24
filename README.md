# 我的neovim配置文件

此配置文件借鉴了[zunpeng/neovim](https://github.com/zunpeng/neovim) 和 [theniceboy](https://github.com/theniceboy/nvim/)


<!-- vim-markdown-toc GFM -->

* [安装](#安装)
* [简介](#简介)
    * [配置文件目录](#配置文件目录)
* [快捷键介绍](#快捷键介绍)
    * [基本快捷键](#基本快捷键)
        * [正常模式 (Normal-mode)](#正常模式-normal-mode)
    * [插件中的快捷键](#插件中的快捷键)
        * [vim-translator](#vim-translator)
        * [suda.vim](#sudavim)
        * [vim-terminal-help](#vim-terminal-help)
        * [vim-floaterm](#vim-floaterm)
        * [markdown-preview](#markdown-preview)
        * [vim-markdown-toc](#vim-markdown-toc)
        * [vim-bookmarks](#vim-bookmarks)
        * [vim-easy-align](#vim-easy-align)
        * [coc.nvim](#cocnvim)
        * [nerdcommenter](#nerdcommenter)
        * [fzf](#fzf)
        * [vim-surround](#vim-surround)

<!-- vim-markdown-toc -->

## 安装
直接输入以下命令将配置文件拷贝并复制到neovim文件夹中
```shell
git clone https://github.com/WenAnrong/nvim_config.git
cp -r ./nvim_config/* ~/.config/nvim/
```

在使用此配置前，请确保机子内有：
```
环境：
python3
cpp
ctags
java
flutter
gcc
nodejs
yarn
npm
pip
fzf
ranger

pip3安装：
sudo pip3 install pynvim
sudo pip3 install pylint
sudo pip3 install jedi

npm安装：
sudo npm install -g neovim
sudo npm install -g typescript
```

## 简介
支持的代码补全（使用coc.nvim）：java、html、css、javaScript、python、markdown、dart、flutter、vimlsp、xml、josn、sql等
golang、c、c++的补全不支持，请自行添加

### 配置文件目录
- init.vim：neovim的主要配置文件
- coc-settings.json：coc.nvim 补全框架的配置文件
- autoload：vim-plug 的文件（不要动就行了）
- cfgs：主要的配置文件目录
    - plug-cfg：neovim插件的配置文件目录
    - compileRun.vim：一键运行代码
    - keybinding.vim：自定义的快捷键
    - plug-cfg.vim：neovim的插件配置
    - theme-cfg.vim：主题配置

## 快捷键介绍

### 基本快捷键
#### 正常模式 (Normal-mode)
| 快捷键         | 作用                               |
|----------------|------------------------------------|
| \<Leader>+d    | 向右分屏并把光标移动向右边         |
| \<Leader>+a    | 向右分屏并把光标移动向左边         |
| \<Leader>s     | 向下分屏并把光标移动向上边         |
| \<Leader>w     | 向下分屏并把光标移动向下边         |
| 方向键         | 调节分屏大小（不能用于移动光标了） |
| \<Leader> + cs | 清除行尾空格,同时取消高亮          |
| \<Leader> + cm | 清除行尾 ^M 符号,同时取消高亮      |
| \<Leader> + ch | 取消高亮                           |
| \<Leader> + cl | 删除空行                           |
| \<Leader> + ca | 删除行首空格                       |
| \<Leader> + cj | 从当前字符换行                     |
| Alt+r          | 一键运行代码                       |

---

### 插件中的快捷键
上标<sup>n</sup>表示能在Normal-mode模式中使用；上标<sup>i</sup>表示能在Insert-mode模式中使用；上标<sup>v</sup>表示能在visual-mode模式中使用；前面有 “:” 的表示在Command-mode模式使用

#### vim-translator

| 快捷键                       | 作用               |
| --------                     | --------           |
| \<Leader> + w <sup>(n)</sup> | 在窗口中显示翻译   |
| \<Leader> + r <sup>(n)</sup> | 将文字翻译后替换   |
| \<Leader> + x <sup>(n)</sup> | 翻译剪贴板中的文字 |

---

#### suda.vim

| 快捷键 | 作用           |
|--------|----------------|
| :sw    | 以root权限写入 |

---

#### vim-terminal-help
| 快捷键                         | 作用                      |
|--------------------------------|---------------------------|
| Alt + = <sup>(n)</sup>         | 在窗口下方分屏并打开终端  |
| ALT + SHIFT + h <sup>(n)</sup> | 将分屏移动至左边          |
| ALT+ SHIFT+ l <sup>(n)</sup>   | 将分屏移动至右边          |
| ALT+ SHIFT+ j <sup>(n)</sup>   | 将分屏移动至下边          |
| ALT+ SHIFT+ k <sup>(n)</sup>   | 将分屏移动至上边          |
| ALT+ SHIFT+ n <sup>(n)</sup>   | 移动到上一个窗口          |
| ALT+ - <sup>(n)</sup>          | 将vim复制的内容粘贴到终端 |
| ALT + q <sup>(n)</sup>         | 切换到终端正常模式        |

---

#### vim-floaterm

| 快捷键                        | 作用                                |
|-------------------------------|-------------------------------------|
| \<Leader> + ff <sup>(n)</sup> | 打开floaterm窗口                    |
| \<Leader> + fn <sup>(n)</sup> | 下一个floaterm窗口                  |
| \<Leader> + fp <sup>(n)</sup> | 上一个floaterm窗口                  |
| \<Leader> + fc <sup>(n)</sup> | 创建一个新的floaterm窗口            |
| \<Leader> + fa <sup>(n)</sup> | 跳转到第一个floaterm窗口            |
| \<Leader> + fe <sup>(n)</sup> | 跳转到最后一个floaterm窗口          |
| \<Leader> + fh <sup>(n)</sup> | 隐藏floaterm                        |
| \<Leader> + fs <sup>(n)</sup> | 显示floaterm                        |
| \<Leader> + fk <sup>(n)</sup> | 关闭floaterm当前窗口,并退出floaterm |
| \<Leader> + fr <sup>(n)</sup> | floaterm 打开ranger                 |
| \<Leader> + fz <sup>(n)</sup> | floaterm 打开 fzf                   |
| \<Leader> + fg <sup>(n)</sup> | floaterm 打开 lazygit               |

---

#### markdown-preview

| 快捷键              | 作用     |
|---------------------|----------|
| F7 <sup>(n/i)</sup> | 打开预览 |
| F8 <sup>(n/i)</sup> | 关闭预览 |

markdown片段，在Insert-mode模式中直接输入即可

| 快捷键  | 作用                                     |
|---------|------------------------------------------|
| ,1      | # H1                                     |
| ,2      | ## H2                                    |
| ,3      | ### H3                                   |
| ,4      | #### H4                                  |
| ,b      | 粗体文字(Bold text)                      |
| ,s      | 被划去的文字(sliced text)                |
| ,i      | 斜体文字(italic text)                    |
| ,d      | 代码块(code block)                       |
| ,c      | 大的 代码块(big block of code)           |
| ,m      | - [ ] 清单(check mark)                   |
| ,p      | 图片(picture)                            |
| ,a      | 链接(link)                               |
| ,n      | ---                                      |
| ,l      | --------                                 |
| ,t[1-9] | 创建一行1-9列的表格                      |
| ,f      | 去往下一个 <++> (占位符)                 |
| ,w      | 去往下一个 <++> (占位符) 并帮你按下Enter |

---

#### vim-markdown-toc

| 快捷键           | 作用                                        |
|------------------|---------------------------------------------|
| mf <sup>(n)</sup> | 生成 GFM 链接风格的 Table of Contents       |
| mg <sup>(n)</sup> | 生成 Redcarpet 链接风格的 Table of Contents |

---

#### vim-bookmarks

| 快捷键                      | 作用                   |
|-----------------------------|------------------------|
| \<Leader>+bi <sup>(n)</sup> | 在当前行添加或删除书签 |
| \<Leader>+ba <sup>(n)</sup> | 在当前行添加书签说明   |
| \<Leader>+bl <sup>(n)</sup> | 显示所有书签           |
| \<Leader>+bn <sup>(n)</sup> | 下一个书签             |
| \<Leader>+bp <sup>(n)</sup> | 上一个书签             |
| \<Leader>+bc <sup>(n)</sup> | 清除书签               |
| \<Leader>+bC <sup>(n)</sup> | 清除所有书签           |
| \<Leader>+bu <sup>(n)</sup> | 将书签向上移动一行     |
| \<Leader>+bd <sup>(n)</sup> | 将书签向下移动一行     |
| \<Leader>+bg <sup>(n)</sup> | 将书签移至任意一行     |

---

#### vim-easy-align

| 快捷键          | 作用           |
|-----------------|----------------|
| ga <sup>(v)</sup> | 启动easy-align |

---

#### coc.nvim

请看[coc.nvim](https://github.com/neoclide/coc.nvim)

| 快捷键                       | 作用                             |
| --------                     | ------                           |
| \<Ctrl>+n                    | 代码补全时跳转到下一个提示词     |
| \<Ctrl>+p                    | 代码补全时跳转到上一个提示词     |
| \<Ctrl>+\<space>             | 强制弹出补全                     |
| [g <sup>(n)</sup>            | 跳转到上一个错误处               |
| ]g <sup>(n)</sup>            | 跳转到下一个错误处               |
| gd <sup>(n)</sup>            | 通过调用跳转到当前符号的定义     |
| gy  <sup>(n)</sup>           | 通过调用跳转到当前符号的类型定义 |
| gi  <sup>(n)</sup>           | 通过调用跳转到当前符号的实现     |
| gr <sup>(n)</sup>            | 通过调用跳转到当前符号的引用     |
| \<Leader>+h  <sup>(n)</sup>  | 在预览窗口中显示文档             |
| \<Leader>+rn <sup>(n)</sup>  | 变量重命名                       |
| \<Leader>+f  <sup>(n)</sup>  | 代码格式化                       |
| \<Leader>+a   <sup>(n)</sup> | 类似与vscode中对代码进行右键     |
| \<space>+a   <sup>(n)</sup>  | 显示诊断                         |
| tt    <sup>(n)</sup>         | 文件树                           |

---

#### nerdcommenter
| 快捷键                     | 作用                     |
| --------                   | ------                   |
| \<Leader>cc <sup>(n)</sup> | 注释光标所在行或所选区域 |
| \<Leader>cu <sup>(n)</sup> | 反注释（取消注释）       |

---

#### fzf

请看[fzf.vim](https://github.com/junegunn/fzf.vim)

---

#### vim-surround

请看[vim-surround](https://github.com/tpope/vim-surround)

