"Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'pearofducks/ansible-vim'
Plugin 'preservim/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'hashivim/vim-terraform'
Bundle 'OmniSharp/omnisharp-vim'
call vundle#end()
"NERDTree config
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <leader>; :NERDTree<cr>
"Keybindings
inoremap kj <esc>
inoremap <Leader>b <BS>
nnoremap <Leader>h kj<C-W>h
nnoremap <Leader>j kj<C-W>j
nnoremap <Leader>k kj<C-W>k
noremap <Leader>l kj<C-W>l
nmap <Leader>h :NERDTree<cr>
"General
syntax on
set encoding=utf-8
set clipboard=unnamedplus
filetype plugin indent on
set number
let g:netrw_banner = 0
let g:netrw_liststyle = 3
set wildmenu
"Set tabs to 2 spaces
set tabstop=2
set expandtab
"Insert tab and not spaces for makefiles
filetype on 
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
"Colour Theme
packadd! dracula
syntax enable
colorscheme dracula
"Moving between file
set path+=**
"Python config
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
autocmd BufWritePost *.py call flake8#Flake8()
"Ansible config
autocmd FileType yaml setlocal et ts=2 ai sw=2 nu sts=0
set cursorline
"Syntax highlight for Jenkinsfile
au BufNewFile,BufRead Jenkinsfile setf groovy
"Split config
set splitbelow
set splitright
"Runtime path
set runtimepath^=~/.vim/pack/flake8/start/vim_flake8/autoload/flake8.vim
set runtimepath^=~/.vim/pack/terraform/start/vim_terraform/autoload/terraform.vim

