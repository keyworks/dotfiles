call pathogen#infect()

" Vundle **********************************************************************
let g:vundle_default_git_proto = 'git'
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" github repos
Bundle 'gmarik/vundle'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-haml'
Bundle 'groenewege/vim-less'
Bundle 'plasticboy/vim-markdown'
Bundle 'vim-ruby/vim-ruby'
Bundle 'bbommarito/vim-slim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'scrooloose/syntastic'
Bundle 'vim-ruby/vim-ruby'
Bundle 'pangloss/vim-javascript'
Bundle 'juvenn/mustache.vim'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'

" vim-script repos
Bundle 'L9'
Bundle 'eruby.vim'
Bundle 'Jinja'

" File stuff ******************************************************************
filetype plugin indent on
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

augroup custom_autocmds
  autocmd!
  autocmd BufWritePre * :%s/\v\s+$//e

  autocmd FileType ejs setlocal syntax=eruby
  autocmd FileType hbs setlocal filetype=mustache
  autocmd FileType twig setlocal filetype=htmljinja
  autocmd FileType htmljinja setlocal noexpandtab
augroup END

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
set t_Co=256
syntax on
set background=dark
colorscheme base16-default

" Line Wrapping ***************************************************************
set wrap
set linebreak  " Wrap at word

" Sessions ********************************************************************
" Sets what is saved when you save a session
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

" Invisible characters ********************************************************
set listchars=trail:.,tab:>-,eol:$
set nolist

" Misc settings ***************************************************************
set number " Show line numbers
set nofoldenable " Turn off folding
set mouse=a " This enables proper behaviour copy/paste with mouse
set nocompatible
set encoding=utf-8
set colorcolumn=80
set autochdir

" Powerline *******************************************************************
set laststatus=2

" Syntastic *******************************************************************
let g:syntastic_check_on_open=1
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['html', 'eruby'] }

" Mappings *******************************************************************
let mapleader = ","
let maplocalleader = '\'

" Use C-c instead
inoremap <C-c> <Esc>

" Toggle invisible characters
nnoremap <Leader>i :set list!<CR>

" Tabs
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>[ :tabp<CR>
nnoremap <Leader>] :tabn<CR>

" Very magic RegEx's
nnoremap / /\v
cnoremap %s/ %s/\v

" vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
