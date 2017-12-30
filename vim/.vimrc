"" The following lines are required by Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Turn on plugins:
Plugin 'lervag/vimtex'
Plugin 'w0rp/ale'
Plugin 'davidhalter/jedi-vim'

let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options = 'file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'
" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"" End Vundle Stuff

"Python stuff
let g:ale_python_mypy_options='-ignore-missing-imports'
" \= will format code with yapf
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>
" \i will sort imports with isort
autocmd FileType python nnoremap <LocalLeader>i :!isort %<CR><CR>
" \n goes to next ale suggestion
autocmd FileType python nnoremap <LocalLeader>a :ALENext<CR>
" \N goes to next ale suggestion
autocmd FileType python nnoremap <LocalLeader>A :ALEPrevious<CR>
" \T toggles ALE
autocmd FileType python nnoremap <LocalLeader>T :ALEToggle<CR>
autocmd FileType python nnoremap <F5> :AsyncRun -raw python %<CR>

"Octave syntax
augroup filetype detect
    au! BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup end

""Language Specific""
filetype plugin indent on    " required
syntax enable				    " enable syntax processing
let g:ale_enabled = 0

""Format Specific""
set expandtab                   " tabs are spaces
set tabstop=4				    " 4 space tabs
set shiftwidth=4			    " 4 space tabs
"set tw=79					    " automatically wrap text at 79 characters

""Aesthetic Settings""
colorscheme torte  " pablo peachpuff slate murphy
set number					    " show line numbers
set showmatch				    " show matching parenthesis and such
set incsearch				    " search as characters are entered
set wrap linebreak nolist	    " do not CR at wrap
set scrolloff=999			    " show search results in middle of screen
" Powerline
let g:powerline_pycmd="py3"     " use python3 for powerline
set rtp+=/usr/lib/python3.6/site-packages/bindings/vim
set ls=2                        " Allow there to be a status line with one window

""Command Menu Related""
set wildmenu                    " Better command-line completion
set showcmd                     " Show most recent command

""Tags""
set tags=./tags;
noremap <f5> :!ctags -R<CR>

""Aliases""
command! -nargs=0 Sw w !sudo tee % > /dev/null

""Mappings""
map Y y$                        " Map Y to yank until the end of the line, not yy
set backspace=indent,eol,start  "Fix backspace functioning in Insert Mode
