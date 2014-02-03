""".vimrc"""



set t_Co=256 "terminal uses 256 colors



""Colorscheme Info""
syntax on "turn on syntax highlighting.
colorscheme molokai "sets colorscheme from ~/.vim/colors.
let g:rehash256=1 "access to dark version (idk if this works).
hi Comment      ctermfg=59


""Indentation/Tab""
set smartindent
set tabstop=4 "how many columns (spaces) a tab accounts for.
set expandtab "changed tab to appropriate number of spaces.
set shiftwidth=4
set softtabstop=4



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Line numbering
" Some options can only be checked with exists('+option'); I'm not sure why
set number
if exists('+relativenumber')
      set rnu
endif
autocmd FocusGained * :set relativenumber
autocmd FocusLost * :set number


" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Move to beginning and end of line
map H 0
map L $

" Resize window 
map + +
map _ -
map = <C-w>> 
map - <C-w><

"no line wrap.
set nowrap

""save and restore folds when a file is closed and reopened""
autocmd BufWinLeave *.* mkview
autocmd BufWinENter *.* silent loadview


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Miscellaneous Key Mapping/Macros
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




