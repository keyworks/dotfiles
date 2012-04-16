call pathogen#infect()
let mapleader = ","

" Vundle **********************************************************************
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" github repos
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-haml'
Bundle 'groenewege/vim-less'
Bundle 'plasticboy/vim-markdown'
Bundle 'vim-ruby/vim-ruby'
Bundle 'bbommarito/vim-slim'
Bundle 'jpalardy/vim-slime'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'

" vim-script repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'eruby.vim'

" File stuff ******************************************************************
filetype plugin indent on
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
autocmd FileType ruby set softtabstop=2
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set tabstop=2
autocmd FileType ruby set expandtab

" Indenting *******************************************************************
set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent (local to buffer)

" Scrollbars ******************************************************************
set sidescrolloff=2
set numberwidth=4

" Windows *********************************************************************
set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright

" Vertical and horizontal split then hop to a new buffer
noremap <Leader>v :vsp^M^W^W<cr>
noremap <Leader>h :split^M^W^W<cr>

" Searching *******************************************************************
set hlsearch  " highlight search
set incsearch  " Incremental search, search as you type
set ignorecase " Ignore case when searching 
set smartcase " Ignore case when searching lowercase

" Colors **********************************************************************
set background=dark
syntax on " syntax highlighting
colorscheme solarized

" Line Wrapping ***************************************************************
set nowrap
set linebreak  " Wrap at word

" Insert New Line *************************************************************
map <S-Enter> O<ESC> " awesome, inserts new line without going into insert mode
map <Enter> o<ESC>

" Sessions ********************************************************************
" Sets what is saved when you save a session
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

" Invisible characters *********************************************************
set listchars=trail:.,tab:>-,eol:$
set nolist
noremap <Leader>i :set list!<CR> " Toggle invisible chars

" Misc settings ***************************************************************
set backspace=indent,eol,start
set number " Show line numbers
set vb t_vb= " Turn off bell, this could be more annoying, but I'm not sure how
set nofoldenable " Turn off folding 
set mouse=a " This enables proper behaviour copy/paste with mouse
set t_Co=256 " 256 colors in tmux.
set nocompatible
set encoding=utf-8

" Navigation ******************************************************************
map <Leader>p <C-^> " Go to previous file
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Tabs ***********************************************************************
noremap <Leader>t :tabnew<CR>
noremap <Leader>[ :tabp<CR>
noremap <Leader>] :tabn<CR>

" NERDTree ********************************************************************
noremap <Leader>n :NERDTreeToggle<CR>
let NERDTreeHijackNetrw=1 " Use instead of Netrw when doing an edit /foobar
let NERDTreeMouseMode=1 " Single click for everything

" FuzzyFinder *****************************************************************
noremap <Leader>f :FufFile<CR>
noremap <leader>b :FufBuffer<CR>

" Slime **********************************************************************
let g:slime_target = "tmux"

" Powerline *******************************************************************
set laststatus=2
