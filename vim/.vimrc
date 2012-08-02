call pathogen#infect()

filetype on
filetype plugin indent on

set hlsearch

set tabstop=4
set shiftwidth=4
set expandtab

map <F2> :NERDTreeToggle<CR>
imap <F3> #

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd FileType * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd Syntax * syn match ExtraWhitespace /\s\+$/ containedin=ALL

autocmd ColorScheme * highlight OverLength ctermbg=red ctermfg=white guibg=#FFCCCC
autocmd FileType * highlight OverLength ctermbg=red ctermfg=white guibg=#FFCCCC
autocmd Syntax * syn match OverLength /\%81v.\+/ containedin=ALL

