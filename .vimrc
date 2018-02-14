set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"----------------------------Git ----------- -------------------
Plugin 'tpope/vim-fugitive'

"------------------- Code Project Navigation -------------------
Plugin 'scrooloose/nerdtree.git'            " Project and file navigation
Plugin 'majutsushi/tagbar'                  " Class/module browser
"-------------------------- Python -----------------------------


"--------------------------- other ----------------------------
Plugin 'vim-airline/vim-airline'                        " Lean & Mean status/tabline fro fim
Plugin 'vim-airline/vim-airline-themes'                 " Themes for vim

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



syntax on
colorscheme monokai
set number
set relativenumber
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

:inoremap ( ()<Esc>i
:inoremap { {}<Esc>i
:inoremap [ []<Esc>i
":inoremap < <><Esc>i
" Escape brackets
:inoremap ( ()<Esc>:let leavechar=")"<CR>i
:inoremap [ []<Esc>:let leavechar="]"<CR>i
:imap <C-j> <Esc>:exec "normal f" . leavechar<CR>a
inoremap { {<CR>}<Esc>ko

"inoremap {<cr> {<cr}<c-o><s-o>
"inoremap [<cr> [<cr]<c-o><s-o>
"inoremap (<cr> (<cr)<c-o><s-o>

"===Misc hotkeys===
set clipboard=unnamedplus "Yank inot global clipboard

"Toggle NERDTree
silent! nmap <C-i> :NERDTreeToggle<CR>
silent! map <C-e> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<C-e>"
let g:NERDTreeMapPreview="<F4>"

map <silent> <C-n> :NERDTreeFocus<CR>

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of browser
"let g:netrw_brows_split = 4
"let g:netrow_altv = 1

" Default to tree mode
let g:netrw_liststyle = 3

" AIRLINE "
let g:airline_theme='deus'

"------------------- Code Project Navigation -------------------
" Tag bar "
let g:airline#extensions#tagbar#enabled = 1
nmap <F8> :TagbarToggle<CR>

"--------------------Python-------------------------------------
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>



