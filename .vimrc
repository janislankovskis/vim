" options
set directory-=$HOME/tmp
set directory^=$HOME/tmp//
set backupdir-=$HOME/tmp
set backupdir^=$HOME/tmp//


:set number
syntax enable
colorscheme molokai
set cursorline

" indentation
set tabstop=4
set shiftwidth=4
set expandtab

:let mapleader = "-"


" plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-fugitive'

Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin indent on


" MOVING lines words en chars around and what not


" insert mode mappings
:imap <c-d> <esc>ddi " delete line
:imap <c-u> <esc>viwU<esc>i
:imap <c-a> <esc><c-y>,

:map <leader>r <esc>viwx<esc>i
:map <leader>i <esc>gg=G<CR>


" status line
set laststatus=2 " display always
set statusline+=%f
set statusline+=%y




" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" resize panes
:map <leader><Left> vertical resize -10
:map <leader><Right> vertical resize +10
:map <leader><Up> resize +10
:map <leader><Down> resize -10





