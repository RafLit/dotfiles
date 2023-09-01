set encoding=utf-8
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set expandtab
set ai
set undofile
let udir=expand("~/.vim/undo")
if !isdirectory(udir)
  call mkdir(udir, "p")
endif
let &undodir=udir
set undolevels=1000
set undoreload=10000

set number



set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'preservim/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
call vundle#end()
filetype plugin indent on

" Open nerdtree by default
"""function MirrorNerdTreeIfOneWindow()
"""  if winnr("$") < 2
"""    NERDTreeMirror
"""
"""    " hack to move the focus from the NERDTree to the main window
"""    wincmd p
"""    wincmd l
"""  endif
"""endfunction
"""
"""autocmd GuiEnter * silent NERDTree
"""autocmd VimEnter * silent NERDTree
"""autocmd TabEnter * silent exe MirrorNerdTreeIfOneWindow()

