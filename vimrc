" plugin stuff

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

" default overrides

set showmode        " always show what mode you're in
set showcmd         " show partial command as typing
syntax on			" turns syntax highlighting on
set encoding=utf-8	" set encoding to utf-8
set modelines=0		" to avoid security issues with modelines
set number 			" turn on line numbers`
set hlsearch 		" turn on hightlighted searching
set tabstop=4		" set tabs to 4 char width and make them spaces
set shiftwidth=4
set softtabstop=4
set expandtab
set spell spelllang=en_us	    " turn on spellchecking by default
set backspace=indent,eol,start  " saner backspace
set ruler           " shows current position in buffer
set relativenumber  " relative line numbering
" set undofile        " saves undo information between sessions
set hidden          " hide buffers when they are abandoned
set showmatch       " show matching brackets
set ignorecase      " do case insensitive matching
set smartcase       " do smart case matching
set incsearch       " incremental search
set ttyfast         " indicates a fast terminal connection
set wrap            " wrap long lines of text
set textwidth=80    " sets the line length for wrapping
set linebreak       " breaks lines for wrapping at specific chars
" set colorcolumn=81  " set a colored column at position to identify long lines

" key remappings

" remap Ctrl-arrows to move between Buffers
nnoremap <C-up> <C-w><up>
nnoremap <C-down> <C-w><down>
nnoremap <C-left> <C-w><left>
nnoremap <C-right> <C-w><right>
" remap >tab> to match bracket pairs
nnoremap <tab> %
vnoremap <tab> %
" map F8 to toggle Tagbar
nmap <F8> :TagbarToggle<CR>	
" allow using '.' with visual mode
vnoremap . :norm.<CR>
" remap /<space> to clear out highlighted text after search
nnoremap <leader><space> :noh<cr>
" change to use perl/python style regexp
nnoremap / /\v
vnoremap / /\v
" maps <Ctrl-s> to :update
" make sure to diable tty flow control by default
" add 'stty -ixon' to .bashrc
nnoremap <C-s> :update<CR>
