" Plugins
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/syntastic'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'
Plugin 'https://github.com/vim-airline/vim-airline.git'
Plugin 'https://github.com/jnurmine/Zenburn.git'
Plugin 'https://github.com/elixir-lang/vim-elixir.git'

call vundle#end()            " required
filetype plugin indent on    " required

" Colors
set t_AB="^[[48;5;%dm"
set t_Co=256
colors zenburn

" Prefs
set number
syntax enable
autocmd FileType ruby setlocal ts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sw=2 expandtab
autocmd FileType yaml setlocal ai ts=2 sw=2 et
