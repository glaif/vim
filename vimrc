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
set nospell
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
set laststatus=2    " show airline status bar all the time

" key remappings

" remap Ctrl-arrows to move between Buffers
nnoremap <C-up> <C-w><up>
nnoremap <C-down> <C-w><down>
nnoremap <C-left> <C-w><left>
nnoremap <C-right> <C-w><right>
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

nnoremap <tab> gt
vnoremap <tab> gt
nnoremap <S-tab> gT
vnoremap <S-tab> gT

let g:airline_theme='dark'

"always showthe tabline
set stal=2

" add numbering to the tabline
set tabline=%!MyTabLine()
function MyTabLine()
    let s = ''
    for i in range(tabpagenr('$'))
        " select the highlighting
        if i + 1 == tabpagenr()
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif

        " set the tab page number (for mouse clicks)
        let s .= '%' . (i + 1) . 'T'

        " the label is made by MyTabLabel()
        let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
    endfor

    " after the last tab fill with TabLineFill and reset tab page nr
    let s .= '%#TabLineFill#%T'

    " right-align the label to close the current tab page
    if tabpagenr('$') > 1
        let s .= '%=%#TabLine#%999Xclose'
    endif
    return s
endfunction

function MyTabLabel(n)
    let buflist = tabpagebuflist(a:n)
    let winnr = tabpagewinnr(a:n)
    " return bufname(buflist[winnr - 1])
    return buflist[winnr - 1] . ') ' . bufname(buflist[winnr - 1])
endfunction
