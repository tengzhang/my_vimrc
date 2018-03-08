" install bundles
source ~/.vimrc.bundles

" ensure ftdetect et al work by including this after the bundle stuff
filetype plugin indent on
" 检测文件类型
filetype on
" 针对不同的文件类型采用不同的缩进格式
filetype indent on
" 允许插件
filetype plugin on
" 启动自动补全
filetype plugin indent on

" source common conf
source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/plugins_config.vim
source ~/.vim/vimrcs/extended.vim
source ~/.vim/vimrcs/my_plug_config.vim

set pastetoggle=<F5>
au InsertLeave * set nopaste
"设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制
""好处：误删什么的，如果以前屏幕打开，可以找回
set t_ti= t_te=
let g:snips_author = 'zhangteng'
let g:neocomplete#enable_at_startup = 1
let g:PHP_SYNTAX_CHECK_BIN = '/home/work/lamp/php5/bin/php'

" viminfo
set viminfo+=n/home/zhangteng/.viminfo
:rviminfo!  /home/zhangteng/.viminfo
:wviminfo!  /home/zhangteng/.viminfo
set fencs=utf-8,GB18030,ucs-bom,default,latin1
set number
set background=dark
colorscheme molokai
let g:indentLine_color_term = 239
let g:indentLine_char = '|'


" 为自动提示的弹出框提示 配色
:highlight PmenuSet ctermfg=White ctermbg=DarkBlue
:highlight Pmenu ctermfg=Black ctermbg=White

set cursorline

highlight colorcolumn ctermbg=239
set colorcolumn=80
" let &colorcolumn=join(range(81,999),",")

set ts=4
set expandtab
:%retab!
set nocompatible
