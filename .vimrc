" Vundle **********************************************************************
set nocompatible
filetype off

"let g:vundle_default_git_proto = 'git'
"set runtimepath+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Vundle Bundles
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-sleuth'
Plugin 'prettier/vim-prettier'
Plugin 'leafgarland/typescript-vim'
Plugin 'neoclide/jsonc.vim'

call vundle#end()
filetype plugin indent on

" File stuff ******************************************************************
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
autocmd BufNewFile,BufRead *.json setlocal filetype=jsonc

" Netrw ***********************************************************************
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2

" Indenting *******************************************************************
set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent (local to buffer)

" Scrollbars ******************************************************************
set sidescrolloff=2
set numberwidth=4

" Windows *********************************************************************
set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright

" Searching *******************************************************************
set hlsearch  " highlight search
set incsearch  " Incremental search, search as you type
set ignorecase " Ignore case when searching
set smartcase " Ignore case when searching lowercase

" Colors **********************************************************************
syntax on
set t_Co=256

highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

" Line Wrapping ***************************************************************
set wrap
set linebreak  " Wrap at word

" Sessions ********************************************************************
" Sets what is saved when you save a session
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

" Invisible characters ********************************************************
set listchars=trail:.,tab:>-,eol:$
"set nolist " Don't show invisible characters

" Misc settings ***************************************************************
set number " Show line numbers
set noswapfile

" Mappings *******************************************************************
let mapleader = ","
let maplocalleader = '\'

" Use C-c instead
inoremap <C-c> <Esc>

" Toggle invisible characters
nnoremap <Leader>i :set list!<CR>

" Prettier *******************************************************************

let g:prettier#autoformat = 0
autocmd BufWritePre *.md Prettier

" Ctrl+P **********************************************************************
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

