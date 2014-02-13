""".vimrc"""



set t_Co=256 "terminal uses 256 colors
set laststatus=2 " Always display status bar
let mapleader = ","


set hlsearch "highlight search terms

""Colorscheme Info""
syntax on "turn on syntax highlighting.
colorscheme molokai "sets colorscheme from ~/.vim/colors.
let g:rehash256=1 "access to dark version (idk if this works).
hi Comment      ctermfg=59





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Indentation/Tab""
set smartindent
set tabstop=4 "how many columns (spaces) a tab accounts for.
set expandtab "changed tab to appropriate number of spaces.
set shiftwidth=4
set softtabstop=4

" Line numbering
" Some options can only be checked with exists('+option'); I'm not sure why
set number
if exists('+relativenumber')
      set rnu
endif

autocmd FocusGained * :set relativenumber
autocmd FocusLost * :set number

" Smart way to move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" Move to beginning and end of line
noremap H 0
noremap L $

" Resize window 
noremap + +
noremap _ -
noremap = <C-w>> 
noremap - <C-w><

" Create and close splits like in Terminator
noremap <leader>o :sp
noremap <leader>e :vsp
noremap <leader>q :wq

" No line wrap.
set nowrap

" Save and restore folds when a file is closed and reopened
autocmd BufWinLeave *.* mkview
autocmd BufWinENter *.* silent loadview

" Always autosave everything
autocmd BufLeave,FocusLost * :wa

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Miscellaneous Key Mapping/Macros
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable visual mode when jumping to brackets
noremap % v%
" Folds cs100 header at top of file
noremap <leader>f ggzf15j


