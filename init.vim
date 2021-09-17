"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc

"兼容设置
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

"设置鼠标
set mouse=a
set encoding=utf-8
"兼容编辑器颜色
let &t_ut=''

"设置leader键 这里是空格
let mapleader=" "
" 开启语法高亮
syntax on
"设置行号
set number
set norelativenumber
"光标下划线
set cursorline
"超长行，会自动换行
set wrap
"显示输入的命令
set showcmd
"显示原始菜单eg: color <tab>键
set wildmenu

"高亮搜索文案
set hlsearch
"定义取消高亮搜索文案
exec "nohlsearch"
"搜索立即高亮
set incsearch
"忽略大小写
set ignorecase
"自动大小写识别
set smartcase

"定义快捷键 sl右分屏 sh左 sj上 sk 下分屏
noremap <LEADER><CR> :nohlsearch<CR>
noremap sl :set splitright<CR>:vsplit<CR> 
noremap sh :set nosplitright<CR>:vsplit<CR> 
noremap sj :set nosplitbelow<CR>:split<CR> 
noremap sk :set splitbelow<CR>:split<CR> 

"定义切换分屏快捷键 lhjk  右左上下
noremap <LEADER>l <C-w>l
noremap <LEADER>h <C-w>h
noremap <LEADER>j <C-w>j
noremap <LEADER>k <C-w>k

"快速选行
noremap J 5j
noremap K 5k

"映射快捷键 s设置空，ctrl + s设置为保存，Q设置为退出，R设置为刷新MYVIMRC
map s <nop>
map <C-s> :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>



"在 调用 call plug#begin('~/.config/nvim/plugged') 之前 设置plug_url_format即可
let g:plug_url_format='https://git::@hub.fastgit.org/%s.git'
"使用plugged来管理插件
call plug#begin('$HOME/.config/nvim/plugged')
"添加目录树：nerdtree"
Plug 'scrooloose/nerdtree'
"语法检查和语义错误
Plug 'dense-analysis/ale'
if (!exists('g:vscode'))
"快速查找，还未找到方案
Plug 'easymotion/vim-easymotion'
else
"vscode  neovim 推荐使用
"Plug 'asvetliakov/vim-easymotion'
Plug 'thorneLew/vscode-vim-easymotion'
endif
"airline插件
Plug 'morhetz/gruvbox'
call plug#end()

"键位冲突修改 使用 <Leader> + s 触发
map <Leader> <Plug>(easymotion-prefix)


"gruvbox - start
let g:gruvbox_italic=1
color gruvbox
set background=dark
"gruvbox - end


"nerdtree config
map tt :NERDTreeToggle<CR> 
