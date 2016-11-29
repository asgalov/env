filetype off
execute pathogen#infect()
filetype plugin on
filetype indent plugin on
syntax on
set nocompatible

"let g:pymode_rope = 0
"let g:jedi#auto_initialization = 0

set tabstop=4  " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab " On pressing tab, insert 4 spaces
set shiftwidth=4
set autoindent
set smartindent
set t_Co=256
colorscheme lucius

"use mouse if needed
set mouse=a

"highlight search as you type
set incsearch
set showmatch
set hlsearch

"use , key as leader key
nnoremap <Leader><space> :noh<cr>

nnoremap gf <C-z>

"use j and k to use screen lines instead of file lines
nnoremap j gj
nnoremap k gk

ca tn tabnew

"explore mode in new tab
ca e tabe %:h

"easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"easy page up and down
nnoremap <C-k> <C-b>
nnoremap <C-j> <C-f>

"type commands faster
nnoremap ; :

"open function definition in a new tab
"TODO switch to the same tab if the tab is already exists
map <C-B> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

set runtimepath+=$HOME/vimfiles/plugin
autocmd FileType python nnoremap <buffer> <F6> :w <CR> :exec '!python' @%<cr>
autocmd FileType gnuplot nnoremap <buffer> <F6> :exec '!gnuplot' @%<cr>
autocmd FileType c nnoremap <buffer> <F6> :w <CR> :!gcc % -o %< && %< <CR>
autocmd FileType tex set spell
autocmd FileType tex nnoremap <buffer> <F6> :w <CR> :exec '!pdflatex' @%<cr>

set nu "set line numbers
set showcmd
imap jj <Esc>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
