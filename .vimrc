set nu
set ruler
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set backspace=2
set smarttab
set expandtab                   " expand <Tab>s with spaces; death to
" keeps highlight for < and >
vnoremap < <gv
vnoremap > >gv
set shiftround                  " always round indents to multiple of 
"set mouse=a
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set undolevels=1000           " 1000 undos
set ignorecase                " search ignoring case
set hlsearch
set smartcase                 "unless you use uppercase
set hidden          " Let us move between buffers without writing them
set laststatus=2
hi StatusLine term=underline ctermbg=darkgrey ctermfg=lightgrey
set foldmethod=indent
set foldnestmax=6
set foldlevelstart=20
nnoremap f za
hi Folded term=standout ctermfg=none ctermbg=black
if ! has("gui_running") 
      set t_Co=256 
endif 
" feel free to choose :set background=light for a different style 
set background=dark 
nnoremap w <C-w>
set wildignore=*.o,*.obj,*.bak,*.exe,*.a,*.dep

" Resise buffer views up and down
nnoremap + <c-w>+
nnoremap _ <c-w><S-->

" Disable Line Wrap
set nowrap

" Python Specific Settings
function! DoPythonSettings()
  " Python uses a tab stop of 4
  setlocal softtabstop=4
  setlocal tabstop=4
  setlocal shiftwidth=4
  set foldmethod=indent
  set foldnestmax=6
  set foldlevelstart=20
endfunction
autocmd BufEnter *.py call DoPythonSettings()

" Highlight lines longer than 80 chars
autocmd! BufWinEnter *.php,*.cpp,*.c,*.h,*.java,*.lua,*.js,TARGETS let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
autocmd! BufWinEnter *.py let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)


" pathogen
" =====================
execute pathogen#infect()

noremap <c-s> <c-o>:w<cr>
map T <Esc>:ConqueTerm bash<CR>

filetype plugin on
set shellslash
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'

" flake8
" =====================
let g:flake8_max_line_length=99
autocmd BufWritePost *.py call Flake8()

" vim-python-pep8-indent
" =====================
let g:pymode_indent = 0

" Settings for jedi-vim
" =====================
let g:jedi#usages_command = "<leader>n"
"let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#use_splits_not_buffers = "left"


