" -- Compability -- "
set encoding=utf-8  " always encode in utf
set nocompatible    " use vim defaults instead of vi

" -- Plugins -- "

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'DoxygenToolkit.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'

Plugin 'altercation/vim-colors-solarized'
Plugin 'w0ng/vim-hybrid'

Plugin 'kien/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'ternjs/tern_for_vim'
Plugin 'janko-m/vim-test'
" Languages
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'digitaltoad/vim-jade'
Plugin 'fatih/vim-go'
Plugin 'elixir-lang/vim-elixir'
Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'Glench/Vim-Jinja2-Syntax'
call vundle#end()


" -- Settings -- "


" File detection
"filetype plugin indent on
syntax on
" Bindings
let mapleader = "\<Space>"
map <Leader><TAB> :bnext<CR>
" Binds leader+tab and leader+shift+tab to cycle through buffers
map <Leader><S-TAB> :bprevious<CR>

map <Leader>s :update<CR>
map <Leader>c :noh<CR>
map <leader>x :!rustc %<CR>
"C-d for fast toggle between shell and VIM
noremap <C-d> :sh<cr>

" General
set background=dark            " dark background
set backupdir=~/vimTmp/
set directory=~/vimTmp/  " put all swap files together in one place
set backspace=2                " enable <BS> for everything
set fillchars+=vert:\          " empty space instead of broken line for vsplits 
set hidden                     " hide when switching buffers, don't unload
set laststatus=2               " always show status line
set lazyredraw                 " don't update screen when executing macros
set mouse=a                    " enable mouse in all modes
set wrap                       " word wrap
set linebreak                  " attempt to wrap lines cleanly
set number                     " show line numbers
set cursorline                 " highlight cursor line
set title                      " use filename in window title
set ttyfast                    " you've got a fast terminal

" Folding
set foldignore=                " don't ignore anything when folding
set foldlevelstart=99          " no folds closed on open
set foldmethod=syntax          " collapse code using markers

" Tabs
set autoindent                 " copy indent from previous line
set expandtab                  " replace tabs with spaces
set shiftwidth=4               " spaces for autoindenting
set smarttab                   " <BS> removes shiftwidth worth of spaces
set softtabstop=4              " spaces for editing, e.g. <Tab> or <BS>
set tabstop=4                  " spaces for <Tab>

" Searches
set hlsearch                   " highlight search results
set incsearch                  " search whilst typing
set ignorecase                 " case insensitive searching
set smartcase                  " override ignorecase if upper case typed
set showcmd                    " show command on last line of screen
set showmatch                  " show bracket matches
set textwidth=0                " don't break lines after some maximum width
set wildmenu                   " enhanced cmd line completion
set ruler                      " shows ruler

" Navigating windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Colours
set t_Co=256
colorscheme hybrid

" Hybrid vim
let g:hybrid_use_Xresources = 1

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'


" Nerd Tree toggles with Ctrl+n
" (<CR> means enter)
map <Leader>n :NERDTreeToggle<CR>

" DoxygenToolkit
map <Leader>d :Dox<CR>

"" Neocomplete
""Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
""Use smartcase.
"let g:neocomplete#enable_smart_case = 1
""Set minimum syntax keyword length.
"let g:neocomplete#sources#syntax#min_keyword_length = 2
"" Recommended key-mappings.
"" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"return neocomplete#close_popup() . "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"Syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_html_tidy_exec = 'htmlhint'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"vim-go settings
let g:go_fmt_command = "goimports"
autocmd FileType go setlocal shiftwidth=2 tabstop=2

"vim-racer settings
set hidden
let g:racer_cmd = "/home/andrea/build/racer/target/release/racer"
let $RUST_SRC_PATH="/home/andrea/rustWorkspace/rustc-1.4.0/src/"

" vim-javascript settings

" vim-hybrid
let g:hybrid_use_Xresources = 1
