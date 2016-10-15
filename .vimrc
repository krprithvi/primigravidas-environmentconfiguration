set nocompatible " be improved, So no compatibility with vi - if .vimrc exists then by default it is non compatible mode, required
filetype off     " Switch off filetype detection until after vundle initialization - Issues with vundle ?, required

" YCM Configuration
let g:ycm_global_ycm_extra_conf = '/home/prithvi/.ycm_extra_conf.py'


set rtp+=~/.vim/bundle/Vundle.vim " Add runtime path to include Vundle
call vundle#begin() " Intialize vundle

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required

Plugin 'Valloric/YouCompleteMe' " Auto completion (Install C/C++ separately)
Plugin 'tpope/vim-surround' " Shortcut to changing/adding/removing enclosing characters

call vundle#end() " End vundle

syntax on " reverse of filetype off i think
filetype plugin indent on " Switch on file type detection

set background=dark
colorscheme ir_black

" Convert tabs to spaces 
set tabstop=4 " Show existing tabs with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab " On pressing tab, insert 4 spaces

" Set current line to bold
" Second line important for this to work. This will remove the underline
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" Change autocomplete dropdown colors
highlight Pmenu ctermfg=208 ctermbg=0
highlight LineNr ctermfg=208 guibg=Grey40

" Use s to insert a character and get out of insert mode
nnoremap s :exec "normal i".nr2char(getchar())."\e"<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" Remap ^ and $ start and end of line to more convenient shortcuts
map H ^
map L $

" Let there be light
"set hlsearch " Highlight the words
"nnoremap <silent> <C-l> :nohl<CR><C-l>

set incsearch " Incremental search

" If you want line numbers, uncomment the following line
" set number
" set relativenumber

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full
