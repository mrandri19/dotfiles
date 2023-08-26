" Width of tab character
set tabstop     =4
" Fine tunes the amount of white space to be added
set softtabstop =4
" Determines the amount of whitespace to add in normal mode
set shiftwidth  =4
" When this option is enabled, vi will use spaces instead of tabs
set expandtab

" Enable line numbers
set number

" Enable mouse support
set mouse=a

" Enable package manager
call pathogen#infect()

" Enable syntax highlighting on file enter
syntax on
filetype plugin indent on
set autoindent

" Enable copy pasting when in visual block mode
set clipboard=unnamed
"
" Set the leader key to space
let mapleader = "\<Space>"

" Toggle NERDTree with space + t
nnoremap <leader>t :NERDTreeToggle<CR>

