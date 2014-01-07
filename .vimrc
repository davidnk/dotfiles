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
set background=dark
set ff=unix                   " Set line endings
set scrolloff=5               " Min lines above/below the cursor
set directory=/tmp            " Set directory for swp files
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

function! SetupVimMaps()
  "c-l to save
  nmap <c-l> :w<CR>
  imap <c-l> <Esc>:w<CR>a

  "c-i to esc from insert mode
  imap <c-i> <Esc>

  " J, K to PageUp, PageDown
  nmap J <PAGEDOWN>
  nmap K <PAGEUP>

  " keeps highlight for < and >
  vnoremap < <gv
  vnoremap > >gv

  " folding
  nnoremap <Space> za

  " windows
  nnoremap w <C-w>

  " <line> <Enter> goes to line
  nmap <Enter> gg

  " Resise buffer views up and down
  nnoremap + <c-w>+
  nnoremap _ <c-w><S-->
endfunction
call SetupVimMaps()
autocmd VimEnter * call SetupVimMaps()

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
  let g:jedi#goto_assignments_command = "<leader>g"
  let g:jedi#goto_definitions_command = "<leader>d"
  let g:jedi#documentation_command = "<leader>k"
  let g:jedi#usages_command = "<leader>n"
  let g:jedi#completions_command = ""
  let g:jedi#rename_command = "<leader>r"
  let g:jedi#popup_on_dot = 0
  let g:jedi#popup_select_first = 0
  let g:jedi#use_splits_not_buffers = "left"
endfunction
call SetupVimPlugins()
