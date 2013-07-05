call pathogen#infect()

filetype on
filetype plugin indent on

set hidden

set nohlsearch
syntax on

set tabstop=4
set shiftwidth=4
set expandtab

set splitbelow
set splitright

map <F2> :NERDTreeToggle<CR>
imap <F3> #
imap § #

let mapleader = ","
map <Leader>f :CommandTFlush<CR>
let g:CommandTMaxHeight = 10

map <Leader>a :Ack! 
map <Leader>n :set number!<CR>

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd FileType * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd BufEnter * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd Syntax * syn match ExtraWhitespace /\s\+$/ containedin=ALL

set colorcolumn=+1
autocmd BufEnter * highlight ColorColumn guibg=#FFDDDD
