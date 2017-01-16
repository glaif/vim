set nocompatible              " be iMproved, required by Vundle
filetype off                  " required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'

" All Plugins must be added before the following line
call vundle#end()            " required by Vundle
filetype plugin indent on    " required by Vundle
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put non-Plugin stuff after this line

syntax on			" turns syntax highlighting on
set encoding=utf-8		" set encoding to utf-8
set number 			" turn on line numbers`
set hlsearch 			" turn on hightlighted searching
set tabstop=4
set shiftwidth=4
set softtabstop=4
" map F8 to toggle Tagbar
nmap <F8> :TagbarToggle<CR>	
