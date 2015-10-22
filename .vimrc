" -------------- good resources --------------
" Vundle      ---- https://github.com/gmarik/Vundle.vim
" NERDTree    ---- https://github.com/scrooloose/nerdtree
" python-mode ---- https://github.com/klen/python-mode
" powerline   ---- https://github.com/Lokaltog/powerline
" taglists    ---- http://www.vim.org/scripts/script.php?script_id=273
" powerline   ---- http://blog.geek.be/vim-powerline-quicky/
" [py-ide]    ---- http://unlogic.co.uk/2013/02/08/vim-as-a-python-ide/

" ------------- general ----------------------
set nocompatible              " be iMproved, required
filetype off                  " required
set ts=4
set nobackup
set nowritebackup
set cursorcolumn
set cursorline
" set noswapfile
" set wrapscan
set pastetoggle=<F3>

" https://github.com/rapid7/metasploit-framework/wiki/Style-Tips
if !exists("au_loaded")
    let au_loaded = 1
    augroup rb
        au FileType ruby set shiftwidth=2 tabstop=2 softtabstop=2 textwidth=78
        au FileType ruby set expandtab
        au FileType ruby hi BogusWhitespace ctermbg=darkgreen guibg=darkgreen
        au FileType ruby match BogusWhitespace /\s\+$\|^\t\+ \+\|^ \+\t\+/
    augroup END
endif

" code indent
"set fdm=indent
"

" --------------------------------------------
"Highlight excess line length
augroup vimrc_autocmds
    autocmd!
" highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
augroup END

" ---------------- Vundle -------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ---------------- molokai ------------------
Plugin 'tomasr/molokai'
let g:molokai_original = 1
let g:rehash256 = 1

" ------------- colorscheme ------------------
" colorscheme torte
colorscheme slate

" ---------------- NERDTree -----------------
" https://github.com/scrooloose/nerdtree
"autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
Plugin 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

" ---------------- python-mode --------------
Plugin 'klen/python-mode'
" K    show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show docmentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b    Set, unset breakpoint (g:pymode_breakpoint enabled)
"[[           Jump on previous class or function (normal, visual, operatormodes)
" ]]           Jump on next class or function (normal, visual, operator modes)
"[M           Jump on previous class or method (normal, visual, operatormodes)
" ]M           Jump on next class or method (normal, visual, operator modes)
"
" let g:pymode_rope = 1
let g:pymode_rope = 0
"
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker ="pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
"
" Supportvirtualenv
let g:pymode_virtualenv = 1
"
"Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
"
"syntax highlighting
syntax on
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors =g:pymode_syntax_all
let g:pymode_syntax_space_errors =g:pymode_syntax_all
"
" Don't autofold code
let g:pymode_folding = 0


" --------------- Powerline -----------------
"Plugin 'Lokaltog/powerline', {'rtp', 'powerline/bindings/vim/'}
"if has('gui_running')
"    let s:uname == system("uname")
"    if s:uname == "Darwin\n"
"        set guifont=Monaco\ for\ Powerline
"    endif
"endif
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set guifont=Mono\ for\ Powerline
set laststatus=2
set encoding=utf-8
set t_Co=256
"set background=dark



" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" ------------- ctrlp -----------------------
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" -------------- vim-markdown --------------
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

let g:vim_markdown_folding_disabled = 1

" -------------- powerline -> airline -------
Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" ---------------nerdcommenter--------------
Plugin 'scrooloose/nerdcommenter'
" <leader>+c+space ---- \ + c + space

" ----------------- taglist -----------------
Plugin 'vim-scripts/taglist.vim'
let Tlist_Auto_Open=1
let Tlist_Show_One_FIle=1
let Tlist_WinWidth=40
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Ctags_Cmd="/usr/bin/ctags"
set autochdir
nnoremap <F12> :TlistToggle<CR>
" Please install ctags 
" https://github.com/VundleVim/Vundle.vim/issues/152

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

