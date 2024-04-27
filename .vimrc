" Install VIM from source version 9.1.375
" git clone https://github.com/vim/vim.git
" cd vim/src
" sudo apt-get install libncurses5-dev libncursesw5-dev
" sudo yum install ncurses-devel
" sudo yum install libtool
" make
" make test
" make install
" vim

" Install CoPilot in VIM
" sudo yum install nodejs
" git clone https://github.com/github/copilot.vim.git \
"  ~/.vim/pack/github/start/copilot.vim
" :Copilot setup
" :help copilot

" VIM Configurations
" when delete not work use this
set backspace=indent,eol,start
syntax enable
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set showmatch
set wrap
set mouse=a
set incsearch
set ignorecase
set smartcase
set ruler
set clipboard=unnamedplus
set path+=**
set undofile
set wildmenu
