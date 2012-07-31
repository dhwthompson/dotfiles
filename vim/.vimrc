call pathogen#infect()

filetype on
filetype plugin indent on

set hlsearch

set tabstop=4
set shiftwidth=4
set expandtab

map <F2> :NERDTreeToggle<CR>

highlight ExtraWhitespace ctermbg=red guibg=DarkRed
match ExtraWhitespace /\s\+$/
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

highlight OverLength ctermbg=red ctermfg=white guibg=#FFCCCC
match OverLength /\%81v.\+/

