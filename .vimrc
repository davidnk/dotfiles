" ':source ~/.vimrc' to reload
set nu
set ruler
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set backspace=2
set smarttab
set expandtab                 " expand <Tab>s with spaces; death to
set shiftround                " always round indents to multiple of
"set mouse=a
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set undolevels=1000           " 1000 undos
set ignorecase                " search ignoring case
set incsearch                 " incremental search
set hlsearch
set smartcase                 "unless you use uppercase
set hidden                    " Let us move between buffers without writing them
set foldmethod=indent
set foldnestmax=6
set foldlevelstart=20
set nowrap                    " Disable Line Wrap
set wildignore=*.o,*.obj,*.bak,*.exe,*.a,*.dep
set laststatus=2
set t_Co=256                  " Bad in gvim
set pastetoggle=<F2>
set background=dark
set ff=unix                   " Set line endings
set scrolloff=5               " Min lines above/below the cursor
set directory=/tmp            " Set directory for swp files
set mps+=<:>
set relativenumber
set number
syntax on
hi Folded term=standout ctermfg=none ctermbg=black
hi StatusLine term=underline ctermbg=darkgrey ctermfg=lightgrey

" Highlight lines longer than 80 chars
autocmd! BufWinEnter *.php,*.cpp,*.c,*.h,*.java,*.lua,*.js,TARGETS let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
autocmd! BufWinEnter *.py let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=lightgrey guibg=lightgrey
autocmd ColorScheme * highlight ExtraWhitespace guibg=lightgrey
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhiteSpace /\s\+$/

" Open files to same line as last opened in vim
" If it doesn't work try: sudo chown user:group ~/.viminfo
"    with user and group often being your username
autocmd BufRead * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal! g`\"" | endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

function! SetupVimMaps()
  " Use jk as <Esc>l in insert mode
  inoremap jk <Esc>l

  " Use jj as paste in insert mode
  inoremap jj <Esc>pa

  "c-l to save
  nnoremap <c-l> :w<CR>
  "save and exit insert mode.  add 'a' at end to stay in insert
  inoremap <c-l> <Esc>:w<CR>
  "inoremap jkl <Esc>:w<CR>

  " Use <Leader><Enter> in insert mode to start inserting on next line.
  inoremap <Leader><CR> <Esc>o

  " J, K to PageUp, PageDown
  noremap J <PAGEDOWN>
  noremap K <PAGEUP>
  " H, L to Home, End
  noremap H 0
  noremap L $

  " Instead move once and use . to do more and u to undo
  " keeps highlight for < and >
  "vnoremap < <gv
  "vnoremap > >gv

  " folding
  nnoremap <Space><Space> za

  " windows
  nnoremap w <C-w>

  " Resise buffer views up and down
  nnoremap + <c-w>+
  nnoremap _ <c-w><S-->
endfunction
call SetupVimMaps()

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

function! SetupVimPlugins()
  " pathogen
  " =====================
  execute pathogen#infect()
  map go <c-p>

  filetype plugin on
  set shellslash
  set grepprg=grep\ -nH\ $*
  filetype indent on
  let g:tex_flavor='latex'

  " flake8
  " =====================
  let g:flake8_max_line_length=99
  "autocmd BufWritePost *.py call Flake8()

  " vim-python-pep8-indent
  " =====================
  let g:pymode_indent = 0

  " Settings for jedi-vim
  " =====================
  let g:jedi#goto_assignments_command = "<leader>g"
  let g:jedi#goto_definitions_command = "<leader>d"
  let g:jedi#documentation_command = "<leader>k"
  let g:jedi#usages_command = "<leader>n"
  let g:jedi#completions_command = "<C-Space>"
  let g:jedi#rename_command = "<leader>r"
  let g:jedi#popup_on_dot = 0
  let g:jedi#popup_select_first = 0
  let g:jedi#use_splits_not_buffers = "left"

  " Settings for vim-easymotion
  " =====================
  nmap s <Plug>(easymotion-s)
  vmap s <Plug>(easymotion-s)
  imap jf <C-o><Plug>(easymotion-s)
  let g:EasyMotion_smartcase = 1
  command! E Explore
endfunction
call SetupVimPlugins()
