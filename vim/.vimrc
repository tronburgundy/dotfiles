syntax enable				    " enable syntax processing
set expandtab                   " tabs are spaces
set tabstop=4				    " 4 space tabs
set shiftwidth=4			    " 4 space tabs
colorscheme murphy  " koehler pablo peachpuff slate murphy
set number					    " show line numbers
set showmatch				    " show matching parenthesis and such
set incsearch				    " search as characters are entered
set wrap linebreak nolist	    " do not CR at wrap
" set scrolloff=999			    " show search results in middle of screen
set wildmenu                    " Better command-line completion
set showcmd                     " Show most recent command

" Vim-Plug
call plug#begin()

	Plug 'daeyun/vim-matlab'
	Plug 'lervag/vimtex'
	Plug 'w0rp/ale'

call plug#end()


" Vimtex
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options = 'file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'

" Ale
let g:ale_python_mypy_options='-ignore-missing-imports'
let g:ale_enabled = 0
autocmd FileType python nnoremap <LocalLeader>a :ALENext<CR>
autocmd FileType python nnoremap <LocalLeader>A :ALEPrevious<CR>
autocmd FileType python nnoremap <LocalLeader>T :ALEToggle<CR>

" Powerline
let g:powerline_pycmd="py3"     " use python3 for powerline
set rtp+=/usr/lib/python3.6/site-packages/bindings/vim
set ls=2                        " Allow there to be a status line with one window

""Tags""
set tags=./tags;
noremap <f5> :!ctags -R<CR>

""Aliases""
command! -nargs=0 Sw w !sudo tee % > /dev/null
set backspace=indent,eol,start  "Fix backspace functioning in Insert Mode
