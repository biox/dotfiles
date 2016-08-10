set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/syntastic'
Plugin 'https://github.com/altercation/vim-colors-solarized.git'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme solarized
set number
