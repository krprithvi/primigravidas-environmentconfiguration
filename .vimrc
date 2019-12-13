set nocompatible " be improved, So no compatibility with vi - if .vimrc exists then by default it is non compatible mode, required

syntax on " reverse of filetype off i think
filetype plugin indent on " Switch on file type detection

" Get back faster into command mode
inoremap jk <ESC>

" Let there be light (:nohls for the deluminator)
set hlsearch " Highlight the words

" Theme of terminal
set background=dark

" Use p in normal mode to toggle paste mode - otherwise screws up indentation
nnoremap q :set invpaste paste?<CR>

" Convert tabs to spaces 
set tabstop=4 " Show existing tabs with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set noexpandtab " On pressing tab, insert 4 spaces

" Set current line to bold
" Second line important for this to work. This will remove the underline
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" Use s to insert a character and get out of insert mode
nnoremap s :exec "normal i".nr2char(getchar())."\e"<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" If you want line numbers, uncomment the following line
set number
" set relativenumber

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full
