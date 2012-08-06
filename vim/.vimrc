call pathogen#infect()

filetype on
filetype plugin indent on

set hlsearch
syntax on

set tabstop=4
set shiftwidth=4
set expandtab

map <F2> :NERDTreeToggle<CR>
imap <F3> #

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd FileType * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd Syntax * syn match ExtraWhitespace /\s\+$/ containedin=ALL

set colorcolumn=+1
autocmd FileType * highlight ColorColumn guibg=#FFFFDD
