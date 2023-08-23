" CoPilot in VIM
" git clone https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim

" when delete not work
set backspace=indent,eol,start

" Enable line numbers
set number

" Enable syntax highlighting
syntax enable

" Set auto indentation
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Show matching parentheses/brackets
set showmatch

" Enable line wrapping
set wrap

" Enable mouse support
set mouse=a

" Improve searching
set incsearch
set ignorecase
set smartcase

" Show line and column number in the status line
set ruler

" Enable clipboard support (if available)
set clipboard=unnamedplus

" Set a default search directory
set path+=**

" Enable undo history
set undofile

" Enable auto-completion
set wildmenu

" Change color scheme (if available)
" colorscheme desert
