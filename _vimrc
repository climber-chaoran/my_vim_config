"定义快捷键的前缀，即<Leader>
let mapleader=";"

" 禁止光标闪烁
set gcr=a:block-blinkon0

"显示隐藏文件
let NERDTreeShowHidden=1

set nocompatible               " be iMproved
filetype off                   " required!
:set winaltkeys=menu
"cd d:/work
cd D:\work\git\qihoosandbox\QihooNativeModules\jni
au GUIEnter * simalt ~x 
set complete=.,w,b,u,t

set rtp+=$VIM/vimfiles/bundle/vundle/
"set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
" ...
Bundle 'cespare/vim-golang'
Bundle 'The-NERD-tree'
Bundle 'minibufexpl.vim'
Bundle 'Tagbar'
Bundle 'Valloric/YouCompleteMe'
Bundle 'EasyMotion'
Bundle 'https://github.com/scrooloose/syntastic.git'

" C++ Source Code
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr

"set foldmethod=indent

" entering uppercase characters.
set smartcase
" using mouse
set mouse=a
" modify the large pasted text
set paste

"-encode set begin-
"set fileencodings=utf-8,gb2312,gbk,gb18030
"set termencoding=utf-8
"set fileformats=unix
"set encoding=prc
"set encoding=cp936
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
"multi-encoding setting
if has("multi_byte")
"set bomb
set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,latin1
"CJK environment detection and corresponding setting
if v:lang =~ "^zh_CN"
"Use cp936 to support GBK, euc-cn == gb2312
set encoding=cp936
set termencoding=cp936
set fileencoding=cp936
elseif v:lang =~ "^zh_TW"
"cp950, big5 or euc-tw
"Are they equal to each other?
set encoding=big5
set termencoding=big5
set fileencoding=big5
elseif v:lang =~ "^ko"
"Copied from someone's dotfile, untested
set encoding=euc-kr
set termencoding=euc-kr
set fileencoding=euc-kr
elseif v:lang =~ "^ja_JP"
"Copied from someone's dotfile, untested
set encoding=euc-jp
set termencoding=euc-jp
set fileencoding=euc-jp
endif
"Detect UTF-8 locale, and replace CJK setting if needed
if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
endif
else
echoerr "Sorry, this version of (g)vim was not compiled with multi_byte"
endif
"-encode set end --------------------------------
"-font set begin -
"set guifont=Courier_New:h9
"set guifontwide=STXihei:h9
"set guifont=Serif\ 9
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
"set guifont=Verdana:h9
"-font set end----------------------------
"set guifont=Inconsolata:h12
set guifont=Arial_monospaced_for_SAP:h9:cANSI

nmap <F5> :NERDTree<CR>    "for NERDTree plugin 
nmap <F4> :hi Search ctermbg=20<CR>

"for tagbar
nmap <F8> :TagbarToggle<CR>

"for tag files
set tags=tags;
"set autochdir

"for omnicppcomplete plugin
"inoremap <expr> <CR>       pumvisible()?"\<C-Y>":"\<CR>"
"inoremap <expr> <C-J>      pumvisible()?"\<Down>":"\<C-X><C-O>"
"inoremap <expr> <C-K>      pumvisible()?"\<Up>\<C-P>\<C-N>":"\<C-K>"

"---------------------------------------------------------
filetype plugin on      "打开文件类型插件
set nocompatible        "设置不兼容vi, 只使用增强模式
set backspace=indent,eol,start   "设置可以删除行首空格,断行, 进入Insert模式之前的位置
set autoindent          "新行使用设置自动缩进,使用上一行的缩进方式
set cindent             "设置c程序自动缩进
set smartindent         "设置智能缩进

set history=50          "设置命令历史列表的长度
set showcmd             "在右下角显示一个完整的命令已经完成的部分
set ruler               "总是在窗口的右下角显示行列信息
set nowrap              "不要自动折行
set whichwrap=b,s,<,>,[,] "设置光标能在行首和行尾之间自由移动

set tabstop=4           "设置TAB显示宽度
set shiftwidth=4        "设置缩进增量
set expandtab           "将TAB替换为空格
set number              "显示行号
set laststatus=2        "显示状态和命令行
set fileformats=unix,dos  "设置让VIM识别不同的换行符,mac
set showmatch           "设置在输入括号时显示配对的括号

set ignorecase          "设置TAG查找忽略大小写
set colorcolumn=80      "在80个字符处设置锚线
set cursorline          "高亮当前行


"要显示效好的配色,需要在X windows的控制台下, 并且设置set term=xterm-256color
set t_Co=256
"colorscheme desert           "设定配色方案,合适的有darkblue, elflord,evening,koehler,slate,desert
colorscheme sean
"if( &t_Co > 1 )  "判断是否支持彩色显示
	syntax on                      "打开语法加亮
	set hlsearch                   "高亮最后一次搜索的文本
"endif

filetype plugin indent on "打开自动识别文件类型,使用文件类型plugin脚本,使用缩进定义文件

set path+=**          "使路径包含当前目录下的所有子目录


"以下为一些命令使用笔记
"--------------------------------------------
"set filetype=c       "设置当前的文件类型,不给=号可以看当前的文件类型
"set path+=apath    "设定vim自动打开头文件的搜索路径, 
"find filename      "查找在path路径中一个文件
"set fileformat=unix "转换当前文件为unix格式,还有dos,mac
"iabbrev <tag> <text> "设置长文本的缩写,只要输入tag在按空格就行了
"



"-------------------------------------------------------------------
"clang for c++
let g:clang_auto_select=1 
let g:clang_complete_auto=0 
let g:clang_complete_copen=1 
let g:clang_hl_errors=1 
let g:clang_periodic_quickfix=0 
let g:clang_snippets=1 
let g:clang_snippets_engine="clang_complete" 
let g:clang_conceal_snippets=1 
let g:clang_exec="clang" 
let g:clang_user_options="" 
let g:clang_auto_user_options="path, .clang_complete" 
let g:clang_use_library=1 
let g:clang_library_path="/usr/lib/" 
let g:clang_sort_algo="priority" 
let g:clang_complete_macros=1 
let g:clang_complete_patterns=0 

"------------------------------------------------------------------
"vim for go
"set rtp+=$GOROOT/misc/vim
"filetype plugin indent on
"syntax on
"

let g:DoxygenToolkit_briefTag_pre="@Synopsis  " 
let g:DoxygenToolkit_paramTag_pre="@Param " 
let g:DoxygenToolkit_returnTag="@Returns   " 
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_authorName="lichangkun" 
let g:DoxygenToolkit_licenseTag="lichangkun"

"-------------------------
set guioptions-=m " Remove menubar
set guioptions-=T " Remove toolbar
set guioptions-=r " remove v_scroll bar
set guioptions-=R " remove v_scroll bar
set guioptions-=L " remove v_scroll bar
set guioptions-=l " remove v_scroll bar

"go tagbar list function and variable in gofiles
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"状态栏同时显示了所在的行列，总的行列，所在的百分比等等
set laststatus=2 " always show the status line 
"set statusline=(%02n)%t%m%r%h%w\[%{&ff}:%{&enc}:%Y]\[line=%04l/%04L\ col=%03c/%03{col(\"$\")-1}][%p%%]  

let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1
let g:tagbar_width = 20 
"cd D:\work

if has("cscope")
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add "cscope.out"
    endif
    set csverb
endif

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

map <M-j> 20j
map <M-k> 20k
nmap <C-m> 20j
nmap <C-n> 20k

let g:EasyMotion_leader_key = ';' 

" 保存工作session
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
map<leader>ss :mksession! my.vim<cr> :wviminfo!my.viminfo<cr>
map<leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>

" YouCompleteMe 功能
" 补全功能在注释、字符串中同样有效
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=1
" 语法关键字补全            
let g:ycm_seed_identifiers_with_syntax=1
" 修改对C函数的补全快捷键，默认是CTRL + space
let g:ycm_key_invoke_completion = '<M-;>'
" 设置转到定义处的快捷键
nmap <M-f> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>

" 在插入模式下 ALT + p = CTRL + p
" imap <M-p> <C-p>
" imap <M-n> <C-n>

" 在插入模式下 ALT + j = 先按ESE键在按a键
imap <M-j> <ESC>ja
imap <M-k> <ESC>ka
imap <M-h> <ESC>ha
imap <M-l> <ESC>la
imap <M-o> <ESC>Oa

"设置快捷键将选中文本块复制至系统剪贴板
vnoremap<Leader>y "+y
"设置快捷键将系统剪贴板内容粘贴至vim
nmap<Leader>p "+p

"开启实时搜索功能
set incsearch
"搜索时大小写不敏感
set ignorecase

"vim自身命令行模式智能补全
set wildmenu

"全屏开/关快捷键
map<silent> <F11> :call ToggleFullscreen()<CR>
"启动vim时自动全屏
"autocmdVimEnter * call ToggleFullscreen()

"*.cpp和*.h间切换
nmap<Leader>ch :A<CR>
"子窗口中显示*.cpp或*.h
nmap<Leader>sch :AS<CR>

"跳转到定义处
"nmap<Leader>gd <C-]>

"库信息参考
"启用:Man命令查看各类man信息
source$VIMRUNTIME/ftplugin/man.vim
"定义:Man命令查看各类man信息的快捷键
nmap<Leader>man :Man 3 <cword><CR>

"设置快捷键实现一键编译及运行
nmap<Leader>m :!rm -rf main<CR>:wa<CR>:make<CR><CR>:cw<CR>
nmap<Leader>g :!rm -rfmain<CR>:wa<CR>:make<CR><CR>:cw<CR>:!./main<CR>

"使用Grep.vim插件在工程内全局查找，设置快捷键。快捷键速记法：searchin project
nnoremap<Leader>sp :Grep -ir<CR><CR><CR>
"使用Grep.vim插件在工程内全局查找，设置快捷键。快捷键速记法：searchin buffer
nnoremap<Leader>sb :GrepBuffer -ir<CR><CR>
