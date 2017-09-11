set nocompatible              " required
filetype off                  " required
set encoding=utf-8
set nu
set mouse+=a
" setlocal spell spelllang=en_us


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'klen/python-mode'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'vim-scripts/taglist.vim'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
let g:SimpylFold_docstring_preview=1
let python_highlight_all=1
syntax on

let g:airline_powerline_fonts = 1

set laststatus=2

map <c-m> :!markdown % > %.html && firefox %.html<CR>
map <F2> :NERDTreeToggle<CR>
map <F3> :setlocal spell! spelllang=en_us<CR>
set pastetoggle=<F4>
set showmode

"Taglist
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1
map <F5> :TlistToggle<CR>
map <c-w> :w<CR>
map <c-q> :wqa<CR>

imap <c-g> <Plug>IMAP_JumpForward
nmap <c-g> <Plug>IMAP_JumpForward

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap ,html :-1read $HOME/here.py<CR>


" autocomplete
" Python-mode
" " Activate rope
" " Keys:
" " K             Show python docs
" " <Ctrl-Space>  Rope autocomplete
" " <Ctrl-c>g     Rope goto definition
" " <Ctrl-c>d     Rope show documentation
" " <Ctrl-c>f     Rope find occurrences
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" " [[            Jump on previous class or function (normal, visual, operator
" modes)
" " ]]            Jump on next class or function (normal, visual, operator
" modes)
" " [M            Jump on previous class or method (normal, visual, operator
" modes)
" " ]M            Jump on next class or method (normal, visual, operator
" modes)
let g:pymode_rope = 0

" " Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"
" "Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" " Auto check on save
let g:pymode_lint_write = 1
"
" " Support virtualenv
let g:pymode_virtualenv = 1
"
" " Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
"
" " syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
" " Don't autofold code
let g:pymode_folding = 0

" enable folding
set foldmethod=indent
set foldlevel=99

colorscheme railscasts
hi Normal ctermbg=none
hi NonText ctermbg=none

" Enable folding with the spacebar
nnoremap <space> za

au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4
