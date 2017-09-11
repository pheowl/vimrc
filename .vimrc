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
" Plugin 'klen/python-mode'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
" Plugin 'davidhalter/jedi-vim'
Plugin 'klen/rope-vim'
Plugin 'ervandew/supertab'

Plugin 'vim-airline/vim-airline'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'vim-scripts/taglist.vim'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:SimpylFold_docstring_preview=1
set foldnestmax=2

"autocomplete
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_autoclose_preview_window_after_completion=1

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on
set laststatus=2
let g:airline_powerline_fonts=1

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

set noswapfile

" enable folding
set foldmethod=indent
set foldlevel=99

"Folding based on indentation:
autocmd FileType python set foldmethod=indent

set backspace=indent,eol,start

colorscheme railscasts
hi Normal ctermbg=none
hi NonText ctermbg=none
highlight BadWhitespace ctermbg=red guibg=red

" Enable folding with the spacebar
nnoremap <space> za

"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=79

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix
