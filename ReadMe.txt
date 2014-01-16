1 安装 git
2 安装 vim bundle, https://github.com/gmarik/vundle

下面以vim7.4版本为例，我安装的路径是“D:\Program Files (x86)\Vim”
3 需要在环境变量里面添加“VIM”变量，值设置为D:\Program Files (x86)\Vim

arimonnew.ttf 	是使用的字体文件，放到windows/fonts目录下
c.vim		放到D:\Program Files (x86)\Vim\vim74\syntax目录下覆盖旧文件，其中加入了函数高亮代码
sean.vim	是配色方案，放到D:\Program Files (x86)\Vim\vimfiles\colors目录下
_vimrc		vim配置方案，D:\Program Files (x86)\Vim，如果有其他的_vimrc,vimrc文件可以改个名字做备份。

cscope.exe ctags.exe curses2.dll regex2.dll 下载放到一个目录，例如 d:\1 目录下，然后要把 d:\1 目录加入到系统的path环境变量中。



windows下要注意，在vimrc(_vimrc)文件中的路径如果有空格会导致失败。解决办法是用环境变量来代替有空格的路径。
例如 set rtp+=$VIM/vimfiles/bundle/vundle/
环境变量VIM表示“D:\Program Files (x86)\Vim”

cscope用法，先进入代码根目录
linux下：
find . -name "*.h" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" > cscope.files
cscope -bkq -i cscope.files
windows下：
dir /s /b *.c *.h *.cpp *.s > cscope.files
cscope -bkq -i cscope.files
然后就可以进入vim中，使用:cs add cscope.out 命令链接生成的库
光标定位到某个函数后使用CTRL + SHIFT + _ + S （4个键）显示该函数的所有调用。
光标定位到某个include文件后使用CTRL + SHIFT + _ + F （4个键）跳转到该文件。
更多的命令可以在vim中输入:cs查看。
（以上快捷键在_vimrc文件中配置）

自动补全，按CTRL+N和CTRL+P可以弹出自动补全的窗口，如果窗口显示的慢，可以在vimrc文件中进行如下设置set complete=.,w,b,u,t   默认设置为set complete=.,w,b,u,t,i  i代表头文件，去掉会加快补全速度。
