call plug#begin('~/vimfiles/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'ycm-core/YouCompleteMe', { 'do': 'python install.py -msvc=15'}
Plug 'lervag/vimtex'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'dense-analysis/ale'
Plug 'liuchengxu/vista.vim'
Plug 'jupyter-vim/jupyter-vim'
call plug#end()

let &pythonthreedll = 'C:\Users\Jordi\AppData\Local\Programs\Python\Python37\python37.dll'
set encoding=utf-8

" color scheme
if has("gui_running")
    set background=light
    map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>
    let g:solarized_termcolors=256
    colorscheme solarized
    au GUIEnter * simalt ~x
endif
syntax enable

" tab behaviour
set expandtab
set tabstop=4
set shiftwidth=4

" UI
set number relativenumber
set showcmd
set cursorline
filetype plugin indent on
set noequalalways
set wildmenu
set lazyredraw
set showmatch
set guifont=Consolas:h12:cANSI:qDRAFT
set guioptions+=k

" general behaviour
set backspace=2
set autoread
set foldmethod=syntax

" searching
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" Snipets options
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:UltiSnipsEditSplit="vertical"

" YCM 
let g:ycm_autoclose_preview_window_after_completion = 1

" IDE-like stuff
noremap <F9> :NERDTreeToggle<CR>
noremap <F10> :TagbarToggle<CR>
