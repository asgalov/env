set nocompatible
filetype on
filetype plugin on

"python settings
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
autocmd FileType python set omnifunc=pythoncomplete#Complete


if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
    colorscheme codeschool
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
  endif
endif
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
set nu
set runtimepath+=$HOME/vimfiles/plugin
filetype plugin indent on
syntax on
"autocmd FileType python nnoremap <buffer> <F6> :exec '!python' shellescape(@%, 1)<cr>
autocmd FileType python nnoremap <buffer> <F6> :exec '!python' @%<cr>
autocmd FileType gnuplot nnoremap <buffer> <F6> :exec '!gnuplot' @%<cr>
autocmd FileType c nnoremap <buffer> <F6> :w <CR> :!gcc % -o %< && %< <CR>
"autocmd FileType tex nnoremap <buffer> <F6> :exec '!pdflatex' shellescape(@%, 1)<cr>
autocmd FileType tex colorscheme github
autocmd FileType tex set spell

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

:imap jj <Esc>
