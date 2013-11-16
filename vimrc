set nocompatible              " be iMproved
filetype off                  " required!

"set rtp+=~/.vim/bundle/powerline/bindings/vim
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'davidhalter/jedi-vim'
Bundle 'klen/python-mode'

"My usual settings
set number
syntax on
set ts=4
set sw=4
set expandtab

"Display whitespace chars
set list
" And set some nice chars to do it with
set listchars=tab:»\ ,eol:¬

"Bindings for splits 

"Quick resize
nnoremap <C-u> <C-W>><C-W>>
nnoremap <C-y> <C-W><<C-W><
"Quick navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



"Powerline stuff
filetype plugin indent on
set laststatus=2
set encoding=utf-8
set t_Co=256
let g:Powerline_symbols = 'fancy'

"Bindings for NERDTree 
noremap <F2> <esc>:NERDTreeToggle<cr>
noremap! <F2> <esc>:NERDTreeToggle<cr>

"Highlight long lines
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 80
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
augroup END


" more subtle popup colors
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold
endif

"Python-mode config
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
"   Rope autocomplete
" g     Rope goto definition
" d     Rope show documentation
" f     Rope find occurrences
" b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0




