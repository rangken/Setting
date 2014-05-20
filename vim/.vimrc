set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/Lokaltog/vim-powerline.git' 
call vundle#end()            " required
filetype plugin indent on    " required


" JAEYOUNG VIM SETTING
execute pathogen#infect()

set nu

" vim-colors-solarized (https://github.com/altercation/vim-colors-solarized)
syntax enable
set background=dark
colorscheme solarized

if has('gui_running')
    set background=light
else
    set background=dark
endif

" vim-powerline
language en_US.UTF-8
let g:Powerline_symbols = 'fancy'
set laststatus=2
