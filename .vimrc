"Vundlle Start
"防止进入vi兼容模式
set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须
"set encoding=utf-8 "mac 英文系统下，终端中文乱码
set t_Co=256 " tmux 下色彩有问题
" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'
" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
"Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 默认来自 'vim-scripts'
"Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
"Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
"Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
"Plugin 'ascenator/L9', {'name': 'newL9'}
" You Complete Me 自动补全
Plugin 'Valloric/YouCompleteMe'
"树形目录
"Plugin 'nerdtree'
Plugin 'scrooloose/nerdtree'
"函数、变量列表
Plugin 'taglist.vim'
"go语言
"Plugin 'fatih/vim-go'
"集成git
"Plugin 'tpope/vim-fugitive'
"配色
Plugin 'altercation/vim-colors-solarized'
"Plugin 'git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex'
"latex 预览
"Plugin 'xuhdev/vim-latex-live-preview'
"Plugin 'vim-latex/vim-latex'
"markdown 语法高亮
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
"插件 ale，异步语法检查
Plugin 'w0rp/ale'
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
"Vundle End
"显示行号
set number
"检测文件的类型
filetype on 
"记录历史的行数
set history=1000 
"背景使用夜晚模式
"color blue
"设置主题
set background=dark
colorscheme solarized
"语法高亮度显示
syntax on 
"vim使用自动对齐，也就是把当前行的对起格式应用到下一行；
set autoindent
"依据上面的对起格式，智能的选择对齐方式
set smartindent
"设置tab键为4个空格
set tabstop=4
"第二行设置当行之间交错时使用4个空格
set shiftwidth=4
"设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showmatch
"去除vim的GUI版本中的toolbar
set guioptions=T
"当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
set vb t_vb=
"在编辑过程中，在右下角显示光标位置的状态行
set ruler
"关闭高亮显示所有匹配项
set nohls
"即时查看搜索匹配结果
set incsearch
"忽略大小写查找
set ignorecase
"将Tab展开成空格
"set expandtab
"仅在Python文件中将Tab展开成空格"
autocmd FileType python set expandtab
"在屏幕右下角显示正在输入的命令
set showcmd
"开启拼写检查
set spell 
"修复macOS，删除键无法向前删除问题
set backspace=indent,eol,start
"启用缩进折叠
set foldmethod=indent
"高亮光标所在列
set cursorcolumn
"高亮光标所在行
set cursorline
"修改一个文件后，自动进行备份，备份的文件名为原文件名加“~“后缀
if has("vms") 
    set nobackup
else
    set backup
endif
" tagList 配置start
"启动vim后自动打开taglist窗口
let Tlist_Auto_Open = 0
"不同时显示多个文件的tag，仅显示一个
let Tlist_Show_One_File = 1
"taglist为最后一个窗口时，退出vim
let Tlist_Exit_OnlyWindow = 1
"taglist窗口显示在右侧，缺省为左侧
let Tlist_Use_Right_Window =1
"设置taglist窗口大小
let Tlist_WinHeight = 100
let Tlist_WinWidth = 25
"tagList 配置 end
"latex start 
"autocmd Filetype tex setl updatetime=1
"let g:livepreview_previewer = 'open -a Preview'
let g:livepreview_previewer = 'open -a Skim'
"latex end
"
"YCM
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_python_binary_path = 'python3'
"let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
"YCM end
