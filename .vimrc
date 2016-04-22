filetype plugin indent on

set tabstop=4  " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab " On pressing tab, insert 4 spaces
set autoindent
set t_Co=256
colorscheme lucius

set nu "set line numbers
set runtimepath+=$HOME/vimfiles/plugin
syntax on
autocmd FileType python nnoremap <buffer> <F6> :exec '!python' @%<cr>
autocmd FileType gnuplot nnoremap <buffer> <F6> :exec '!gnuplot' @%<cr>
autocmd FileType c nnoremap <buffer> <F5> :w <CR> :!gcc % -o %< <CR>
autocmd FileType c nnoremap <buffer> <F6> :w <CR> :!gcc % -o %< && %< <CR>
autocmd FileType tex colorscheme github
autocmd FileType tex set spell

:imap jj <Esc>
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
