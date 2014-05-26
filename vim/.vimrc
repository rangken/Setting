set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/Lokaltog/vim-powerline.git' 
Plugin 'tpope/vim-fugitive' " git wrapper
Plugin 'Lokaltog/vim-easymotion' " 
Plugin 'Valloric/YouCompleteMe' " auto complete
Plugin 'scrooloose/syntastic' "
Plugin 'bling/vim-airline'
Bundle 'jistr/vim-nerdtree-tabs'
call vundle#end()            " required
filetype plugin indent on    " required


" JAEYOUNG VIM SETTING
execute pathogen#infect()
set autoindent " 자동으로 들여쓰기를 한다.
set cindent " C 프로그래밍을 할때 자동으로 들여쓰기를 한다.
set smartindent " 좀더 똑똑한 들여쓰기를 위한 옵션이다.
set wrap " 자동으로 를 삽입하여 다음 줄로 넘어간다.
set nowrapscan " 검색할 때 문서의 끝에서 다시 처음으로 돌아가지 않는다.
set nobackup " 백업 파일을 만들지 않는다.
set ruler " 화면 우측 하단에 현재 커서의 위치(줄,칸)를 보여준다.
set tabstop=4 " Tab을 눌렀을 때 8칸 대신 4칸 이동하도록 한다.
set softtabstop=4
set shiftwidth=4 " 자동 들여쓰기를 할때 4칸 들여쓰도록 한다.
set expandtab
set nohlsearch
set hidden
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

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
" let g:nerdtree_tabs_open_on_console_startup = 1

" F2 MAP TOGGLE"
map <leader>nt <plug>NERDTreeTabsToggle<CR>

" Easy Motion
let mapleader = ","
map <Leader> <Plug>(easymotion-prefix)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-bd-tl)
let g:EasyMotion_smartcase = 1
