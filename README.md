### pretty-vim
=======================

#### Screenshot

![](https://github.com/all3g/pretty-vim/blob/master/vim_editor.png)  

#### Description

[**Vim**](https://en.wikipedia.org/wiki/Vim_%28text_editor%29), a contraction of \(Vi IMproved\) is a clone of Bill Joy's vi editor for Unix.  It was written by Bram Moolenaar based on source for a port of the Stevie editor to the Amiga and first released publicly in 1991. Vim is designed for use both from a command-line interface and as a standalone application in a graphical user interface. Vim is free and open source software and is released under a license that includes some charityware clauses, encouraging users who enjoy the software to consider donating to children in Uganda. The license is compatible with the [GNU General Public License](https://en.wikipedia.org/wiki/GNU_General_Public_License).

This editor is very useful for editing programs and other plain text files. All commands are given with normal keyboard characters, so those who can type with ten fingers can work very fast. Additionally, function keys can be defined by the user, and the mouse can be used.

Vim runs under Amiga DOS, MS-DOS, MS-Windows (95, 98, Me, NT, 2000, XP, Vista, 7), Atari MiNT, Macintosh, BeOS, VMS, RISC OS, OS/2 and almost all flavours of UNIX. Porting to other systems should not be very difficult.  

#### Documentation

The vim tutor is a one hour training course for beginners. Mostly it can be started as vimtutor. See :help tutor for more information.

The best is to use :help in Vim. If you don't have an executable yet, read runtime/doc/help.txt. It contains pointers to the other documentation files. The User Manual reads like a book and is recommended to learn to use Vim. See :help user-manual.


#### Installation

Vim can be a hackable editor, and custom vim configuration for programming, ex: Python, Ruby, PHP and so.  Plugins as follow: 

- [Vundle](https://github.com/gmarik/Vundle.vim)  
- [NERDTree](https://github.com/scrooloose/nerdtree)  
- [python-mode](https://github.com/klen/python-mode)  
- [powerline](https://github.com/Lokaltog/powerline)  
- [powerline](http://blog.geek.be/vim-powerline-quicky/)
- [molokai](http://github.com/tomasr/molokai)  
- [nerdcommenter](http://github.com/scrooloose/nerdcommenter)  
- [vim-airline](http://github.com/bling/vim-airline)  
- [vim-markdown](http://github.com/godlygeek/tabular)  
- [vim-markdown](http://github.com/plasticboy/vim-markdown)  


**Clone pretty-vim**

```
$ git clone https://github.com/all3g/pretty-vim ~/.vim  
```

**Set a new vimrc configutation file**

When we run vim command in terminator, it loads ~/.vimrc. **Pretty-vim** gives us a demo for python / ruby / php.

```
$ cp ~/.vim/vimrc ~/.vimrc  
```

**Powerline**

Powerline is a statusline plugin for vim, and provides statuslines and prompts for several other applications, including zsh, bash, tmux, IPython, Awesome and Qtile.

```
$ pip install git+git://github.com/Lokaltog/powerline  
$ wget --no-check-certificate https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf  
$ wget --no-check-certificate https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf  
$ mv PowerlineSymbols.otf /usr/share/fonts/  
$ mv 10-powerline-symbols.conf /etc/fonts/conf.d/  
$ fc-cache -vf  
```
