pretty-vim
==========

vim configuration for programming, ex: Python, PHP and so.

--------------------------------------------------------------------------
Vundle      ---- https://github.com/gmarik/Vundle.vim
NERDTree    ---- https://github.com/scrooloose/nerdtree
python-mode ---- https://github.com/klen/python-mode
powerline   ---- https://github.com/Lokaltog/powerline
taglist     ---- http://www.vim.org/scripts/script.php?script_id=273
powerline   ---- http://blog.geek.be/vim-powerline-quicky/
[py-ide]    ---- http://unlogic.co.uk/2013/02/08/vim-as-a-python-ide/ 

---------------------------------------------------------------------------

1. 安装常用VIM插件

   安装Vundle
   git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

   安装NERDTree
   git clone git://github.com/scrooloose/nerdtree.git  ~/.vim/bundle/nerdtree

   安装python-mode
   git clone git://github.com/klen/python-mode.git ~/.vim/bundle/python-mode

   安装powerline
   apt-get install python-pip git
   pip install git+git://github.com/Lokaltog/powerline
   wget --no-check-certificate https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf 
   wget --no-check-certificate https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
   mv PowerlineSymbols.otf /usr/share/fonts/
   mv 10-powerline-symbols.conf /etc/fonts/conf.d/
   fc-cache -vf


   taglist安装
   下载: http://www.vim.org/scripts/script.php?script_id=273
   unzip -x taglist_46.zip -d ~/.vim/

2. 配置VIM
   定义~/.vimrc 
