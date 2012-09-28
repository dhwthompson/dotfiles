call pathogen#infect()

filetype on
filetype plugin indent on

set hidden

set hlsearch
syntax on

set tabstop=4
set shiftwidth=4
set expandtab

map <F2> :NERDTreeToggle<CR>
imap <F3> #

let mapleader = ","
map <Leader>f :CommandTFlush<CR>
let g:CommandTMaxHeight = 10

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd FileType * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd BufEnter * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd Syntax * syn match ExtraWhitespace /\s\+$/ containedin=ALL

set colorcolumn=+1
autocmd BufEnter * highlight ColorColumn guibg=#FFDDDD

" Ditch the toolbar
if has("gui_running")
  set guioptions=egmrt
endif
