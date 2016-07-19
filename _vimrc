" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,gb2312
set fileencodings+=big5,euc-jp,euc-kr,latin1
let &termencoding=&encoding
set encoding=utf-8
language messages en_US
syntax on

" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" behave mswin


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim7.1在windows下的编码设置。By Huadong.Liu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set encoding=utf-8
" set fileencodings=utf-8,chinese,latin-1
" if has("win32")
" set fileencoding=chinese
" else
" set fileencoding=utf-8
" endif
" "解决菜单乱码
" source $VIMRUNTIME/delmenu.vim
" source $VIMRUNTIME/menu.vim
" "解决consle输出乱码
" language messages zh_CN.utf-8

" map <F6> :execute "!cd" expand("%:h")<CR>


" 修改leader键
let mapleader = ','
let g:mapleader = ','


"General seting 
set nocompatible
filetype on 
set foldmethod=marker
set linebreak
set wildmenu
"set selection=inclusive
"set selectmode=mouse,key

"set completeopt=longest,menu
set wildmenu                           " show a navigable menu for tab completion"
set wildmode=longest,list,full        "navigable can expand to a full menu for
set wildignore=*.o,*~,*.pyc,*.class

set number
set ruler
syntax on
"禁用鼠标点击，但可以利用鼠标复制代码
set mouse-=a
set mousehide               " Hide the mouse cursor while typing

filetype plugin indent on
filetype plugin on "支持插件

if has("autocmd")

filetype plugin indent on
autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab

endif
"　　” 对于其它情况，使用4个空格宽度的TA
set tabstop=4 ""“ TAB的宽度被设置为4个空格。
"　　” 但仍然是\t. 只是vim把它解释成4个空格宽度，用别的编辑器还是\t符号
"　　“ Vim will interpret it to be having
"　　” a width of 4.
set shiftwidth=4 ""“ 缩进使用4个空格的宽度。
set softtabstop=4 "" 设置tab所占的列数，当输入tab时，设为4个空格的宽度。
set expandtab "   扩展tab为空格。



""在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
set showmode

" 隐藏gvim菜单
set guioptions-=m
" 窗口启动时自动最大化
au GUIEnter * simalt ~x 
" 隐藏gvim工具栏
set guioptions-=T
"隐藏右侧状态栏
set guioptions-=r
set guioptions-=L

" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7



set autoindent "每行缩进与上一行一致
set smartindent "自动在enter后缩进两个空格
set cindent
"set background=dark
"set expandtab
"set smarttab
"set shiftwidth=2
"set softtabstop=2
"set tabstop=2
"set wildignore=*.pyc
"set ignorecase
set smartcase
set hlsearch
set incsearch
set shiftround
set history=1000
set noswapfile
set nobackup
set number
set linespace=3

" 相对行号      行号变成相对，可以用 nj  nk   进行跳转 5j   5k 上下跳5行
set relativenumber number
au FocusLost * :set norelativenumber number
au FocusGained * :set relativenumber
" 插入模式下用绝对行号, 普通模式下用相对
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

set nobackup
" 关闭交换文件
set noswapfile
"匹配文件时候忽视这些
set wildignore=*.swp,*.bak,*.pyc,*.class,.svn
" set cursorcolumn!
" set cuc!
" set cursorline!          " 突出显示当前行
"设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制
"""好处：误删什么的，如果以前屏幕打开，可以找回
set t_ti= t_te=

" No annoying sound on errors
" 去掉输入错误的提示声音
set title                " change the terminal's title
set novisualbell         " don't beep
set noerrorbells         " don't beep
set t_vb=
set tm=500
" Remember info about open buffers on close"

"分别指1000个标记信息，保存缓冲区列表，500冒号命令，1000输入历史命令
set viminfo='1000,%,:500,@1000

" For regular expressions turn magic on
set magic
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


"some usful map
imap kj <Esc>
nmap e 2<C-e>
nmap t 2<C-y>
nmap <up> 3<C-y>
nmap <down> 3<C-e>
nmap <leader>y "*yy
vmap <leader>y "*yy
nmap <leader>p "*p
" nmap <F5> :source $VIM/_vimrc<CR>
"Smart way to move between windows 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
imap <C-j> <down>
imap <C-k> <up>

"执行其他代码
autocmd FileType python nnoremap <buffer> <F2> :w<CR>:!python % <CR>
autocmd FileType javascript nnoremap <buffer> <F2> :w<CR>:!python % <CR>

"windows max and so on
"最大化
nmap <leader>sx <ESC>:simalt ~x<CR>
"还原
nmap <leader>sr <ESC>:simalt ~r<CR>
"最小化
nmap <leader>sn <ESC>:simalt ~n<CR>
" Go to home and end using capitalized directions
noremap H ^
noremap L $
" noremap <c-e> f
" noremap <C-y> g
"
"设置标签
noremap <leader>n :tabnew<CR>
" noremap <leader>1 :tabnext<CR>
noremap <leader>a :tabnext<CR> 
noremap <leader>x :tabprevious<CR> 

"Map ; to : and save a million keystrokes
" ex mode commands made easy 用于快速进入命令行
nnoremap ; :


" 命令行模式增强，ctrl - a到行首， -e 到行尾
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" 去掉搜索高亮
noremap <silent><leader>/ :nohls<CR>
" --------tab/buffer相关

"Use arrow key to change buffer"
" TODO: 如何跳转到确定的buffer?
" :b1 :b2   :bf :bl
nnoremap [b :bprevious<cr>
nnoremap ]b :bnext<cr>
noremap <left> :bp<CR>
noremap <right> :bn<CR>
" select all
map <Leader>sa ggVG"
" 滚动Speed up scrolling of the viewport slightly
nnoremap <C-e> 4<C-e>
nnoremap <C-y> 4<C-y>
" remap U to <C-r> for easier redo
nnoremap U <C-r>


" 设置字体大小
set guifont=Lucida_Console:h11



" vundle插件
set nocompatible
filetype off

"set rtp+=$home/.vim/bundle/Vundle.vim
set rtp+=$home/vimfiles/bundle/Vundle.vim
"set rtp+=$VIM/.vim/bundle/Vundle.vim

call vundle#begin('$home/vimfiles/bundle/')
" 插件安装写在这里
Plugin 'VundleVim/Vundle.vim'

"主题 solarized
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
"代码缩进标识插件
Plugin 'Yggdroot/indentLine'
"更高效的移动 [,, + w/fx]
Bundle 'Lokaltog/vim-easymotion'
" 状态栏增强展示
Plugin 'bling/vim-airline'
"目录导航
Plugin 'scrooloose/nerdtree'
" just one nerdtree in tabs!
Bundle 'jistr/vim-nerdtree-tabs' 
" 文件搜索
Bundle 'ctrlpvim/ctrlp.vim'
" Plugin 'd11wtq/ctrlp_bdelete.vim' 

" Plugin 'pielgrzym/ctrlp-sessions'
" ctrp配套tags
Plugin 'ivalkeen/vim-ctrlp-tjump'
" 快速注释
Bundle 'scrooloose/nerdcommenter'
"自动配对各种括号
Bundle 'jiangmiao/auto-pairs'
" 括号等的快捷添加和删除
Plugin 'tpope/vim-surround'
" 标签导航
Bundle 'majutsushi/tagbar'


"session
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

" Plugin 'shougo/vimproc.vim'
" Plugin 'shougo/unite.vim'
" Plugin 'shougo/unite-session'

" Plugin 'brookhong/cscope.vim'

" 自动补全
Plugin 'ervandew/supertab'
Plugin 'shougo/neocomplete.vim'
" 调试
Plugin 'joonty/vdebug'

call vundle#end()

filetype plugin indent on

" 加载插件配置
source D:/vim/.vimrc.bundles

" colorscheme molokai
colorscheme solarized

" cd f:\haitou
