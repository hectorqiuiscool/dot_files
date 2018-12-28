set encoding=utf-8
set fileencodings=utf-8,gbk
set fencs=utf-8,gbk
set langmenu=zh_CN.UTF-8
set helplang=cn

"set relativenumber

"set guifont=Source\ Code\ Pro\ for\ Powerline:h16
"set guifont=Monaco\ for\ Powerline:h16

set directory=~/.vim/swap,.

"colorscheme solarized
"let g:solarized_termcolors=256
"color solarized
"set background=dark
" 显示相对行号
set relativenumber

" max win size
"if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
"  set lines=999 columns=999
"endif

set nospell     " disable spell checking

set nofoldenable    " disable folding

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set smartindent

set pastetoggle=<F9>
