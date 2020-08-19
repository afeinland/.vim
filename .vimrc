"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Setup/Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "
set t_Co=256 " Terminal uses 256 colors
set laststatus=2 " Always display status bar
set ruler " Show line/column in status bar

""Colorscheme Info""
syntax on "turn on syntax highlighting.
colorscheme gruvbox "sets colorscheme from ~/.vim/colors.
set background=dark

let g:rehash256=1 "access to dark version (idk if this works).
hi Comment      ctermfg=59






set hlsearch "highlight search terms


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


" Move to beginning and end of line
noremap H 0
noremap L $



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
" Copy word under cursor (yank inner word)
noremap <leader>c yiw
" Paste yanked word over current word under cursor
noremap <leader>p viw"0p
