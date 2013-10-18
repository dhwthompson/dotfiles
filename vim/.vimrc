call pathogen#infect()

filetype on
filetype plugin indent on

set hidden

set nohlsearch
syntax on

set tabstop=2
set shiftwidth=2
set expandtab

set splitbelow
set splitright

map <F2> :NERDTreeToggle<CR>
imap <F3> #
imap § #

let mapleader = ","
let g:CommandTMaxHeight = 10

map <Leader>t :CtrlP<CR>
map <Leader>a :Ack! 
map <Leader>A :Ack! --all 
map <Leader>n :set number!<CR>

let NERDTreeIgnore=['\.pyc$']
set wildignore+=*/tmp/*

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd FileType * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd BufEnter * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd Syntax * syn match ExtraWhitespace /\s\+$/ containedin=ALL

set colorcolumn=+1
autocmd BufEnter * highlight ColorColumn guibg=#FFDDDD
