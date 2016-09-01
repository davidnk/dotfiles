map cn :cnext<CR>
map cp :cprevious<CR>
source ~/.config/nvim/cscope_maps.vim

" ':source ~/.vimrc' to reload
set number
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
set mouse=
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set wildmenu
set undofile                  " undos persist after closing file
set undodir=~/.vimundos
set undolevels=1000           " 1000 undos
set ignorecase                " search ignoring case
set history=200
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
set fileformat=unix           " Set line endings
"set scrolloff=5               " Min lines above/below the cursor
set directory=/tmp            " Set directory for swp files
set matchpairs+=<:>
set relativenumber
set number
set clipboard=unnamedplus
set tags=./tags;
set ttimeout timeoutlen=300 ttimeoutlen=100  "1/3 second between keys
set cursorline  " highlight current line
set cursorcolumn  " highlight current column
filetype plugin indent on
syntax on
highlight Folded term=standout ctermfg=none ctermbg=black
highlight StatusLine term=underline ctermbg=darkgrey ctermfg=lightgrey
highlight Visual term=reverse cterm=reverse guibg=Grey
highlight Search term=reverse cterm=reverse ctermbg=None ctermfg=blue
highlight CursorLine cterm=None ctermbg=black
highlight CursorColumn cterm=None ctermbg=black

" Highlight lines longer than 80 chars
"autocmd! BufWinEnter *.php,*.cpp,*.c,*.h,*.java,*.lua,*.js,TARGETS let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
"autocmd! BufWinEnter *.py let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=lightgrey guibg=lightgrey
augroup whitespace_highlighting
  autocmd!
  autocmd ColorScheme * highlight ExtraWhitespace guibg=lightgrey
  autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
  autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * match ExtraWhiteSpace /\s\+$/
augroup END


" Open files to same line as last opened in vim
" If it doesn't work try: sudo chown user:group ~/.viminfo
"    with user and group often being your username
augroup reopen
  autocmd!
  autocmd BufRead * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(':DiffOrig')
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis
endif

" preserves cursor position between buffer changes
"if v:version >= 700
"  au BufLeave * let b:winview = winsaveview()
"  au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
"endif

function! ScratchBuffer()
  enew
  setlocal buftype=nofile
  setlocal bufhidden=hide
  setlocal noswapfile
endfunction

function! GotoDef()
  let l:curent_filename = expand('%:p')
  set nocscopetag
  try
    try
      "open file at line
      normal! gF
    catch /^Vim\%((\a\+)\)\=:E447/
      " go to definition
      try
        execute "normal \<c-]>"
      catch
        normal! gd
      endtry
    endtry
  catch
  endtry
  if l:curent_filename != expand('%:p')
    "b #
    "tab split
    "b #
  endif
  unlet l:curent_filename
  set cscopetag
endfunction

function! SetupVimMaps()
  nnoremap Y y$

  " Use jk as <Esc>l in insert mode
  inoremap jk <Esc>l
  inoremap kj <Esc>l

  " Use jj as paste in insert mode
  inoremap jj <Esc>pa

  inoremap jh <C-w>

  " undo point after each space
  "inoremap <Space> <Space><C-o><Esc>

  "c-s to save
  nnoremap <c-s> :w<CR>
  "save and exit insert mode.  add 'a' at end to stay in insert
  inoremap <c-s> <Esc>:w<CR>

  "Save with sudo if you forgot to open with sudo
  cmap w!! w !sudo tee % >/dev/null

  " Use <Leader><Enter> in insert mode to start inserting on next line.
  inoremap <Leader><CR> <Esc>o

  " J, K to PageUp, PageDown
  noremap J <PAGEDOWN>
  noremap K <PAGEUP>
  " H, L to Home, End
  "noremap H 0
  "noremap L $
  " Graphical left/right
  noremap gh g0
  noremap gl g$

  noremap go :e **/

  " folding
  nnoremap za za:syntax sync fromstart<CR>
  nnoremap <Space><Space> za

  " windows
  nnoremap w <C-w>
  nnoremap <A-h> <C-w>h
  nnoremap <A-j> <C-w>j
  nnoremap <A-k> <C-w>k
  nnoremap <A-l> <C-w>l

  " tabs
  nnoremap <Space>t :tab split<CR>
  nnoremap <C-t> :tabnew<CR>
  " wt moves window into tab
  nnoremap wt <C-w>T
  " t / T to change tabs
  "nnoremap t gt
  "nnoremap T gT
  noremap <Space>h gT
  noremap <Space>l gt

  " q
  nnoremap <Space>q :q<CR>
  nnoremap <Space><Space>q :Obsession ~/.vim/vim_sessions/prev_closed.vim<CR>:qa<CR>

  nnoremap <Space>s :Obsession ~/.vim/vim_sessions/
  nnoremap <Space><Space>s :Obsession ~/.vim/vim_sessions/

  "noremap ; :
  "nnoremap : Q

  noremap <Space>. @q

  " Resise buffer views up and down
  nnoremap + <c-w>+
  nnoremap _ <c-w><S-->

  " goto stuff under cursor
  nnoremap <Enter> :call GotoDef()<CR>
  command! Scrap call ScratchBuffer()
  command! Scratch call ScratchBuffer()
  "nnoremap <Space>gr "zyiw:call ScratchBuffer()<CR>:read !python ~/.vim/vim_helpers/get_references.py <C-r>z<CR>
  nnoremap <Space>gc "zyiw:call ScratchBuffer()<CR>:read !python ~/.vim/vim_helpers/get_children.py <C-r>z<CR>
  "cscope_maps.vim for more maps
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
augroup lang_settings
  autocmd!
  autocmd BufEnter *.py call DoPythonSettings()
  autocmd BufEnter *.java call DoPythonSettings()
augroup END

function! SetupVimPlugins()
  " vim-plug
  " =====================
  call plug#begin()
  Plug 'easymotion/vim-easymotion'
  Plug 'benekastah/neomake'
  Plug 'tpope/vim-fugitive'
  Plug 'ervandew/supertab'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-obsession'
  Plug 'hynek/vim-python-pep8-indent'
  Plug 'davidhalter/jedi-vim'
  Plug 'rodjek/vim-puppet'
  Plug 'janko-m/vim-test'
  Plug 'dhruvasagar/vim-table-mode'
  Plug 'airblade/vim-gitgutter' "\hs to stage hunk    [c ]c to move between hunks     Breaks :tab split
  Plug 'scrooloose/nerdtree'
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'artur-shaik/vim-javacomplete2', { 'tag': 'v2.3.3', 'for': 'java' }
  "Plug 'zchee/deoplete-jedi'
  Plug 'tmux-plugins/vim-tmux-focus-events'
  Plug 'roxma/vim-tmux-clipboard'
  call plug#end()

  " vim-python-pep8-indent
  " =====================
  let g:pymode_indent = 0

  " Settings for jedi-vim
  " =====================
  let g:jedi#goto_assignments_command = '<leader>g'
  let g:jedi#goto_definitions_command = '<leader>d'
  let g:jedi#documentation_command = '<leader>k'
  let g:jedi#usages_command = '<leader>n'
  "let g:jedi#completions_command = '<C-Space>'
  let g:jedi#rename_command = '<leader>r'
  "let g:jedi#popup_on_dot = 0
  "let g:jedi#popup_select_first = 0
  let g:jedi#use_splits_not_buffers = 'left'
  set completeopt+=longest,menuone

  " Settings for supertab
  " =====================
  let g:SuperTabDefaultCompletionType = "<c-n>"

  " NerdTree
  map <Space>e :NERDTreeToggle<CR>:NERDTreeMirror<CR>
  map <Space><Space>e :NERDTreeFind<CR>
  let NERDTreeShowBookmarks=1
  let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
  let NERDTreeChDirMode=0
  let NERDTreeQuitOnOpen=1
  let NERDTreeShowHidden=1
  let NERDTreeKeepTreeInNewTab=1
  let g:nerdtree_tabs_open_on_gui_startup=0

  " Settings for vim-easymotion
  " =====================
  map <space>f <Plug>(easymotion-s)
  imap jf <C-o><Plug>(easymotion-s)
  let g:EasyMotion_smartcase = 1
  command! E Explore

  " NeoMake settings
  " =====================
  augroup neomake_group
    autocmd!
    autocmd BufWritePost *.py Neomake
  augroup END

  " vim-test settings
  " =====================
  let g:test#strategy = 'neovim'
  let g:test#python#runner = 'pytest'
  nnoremap <Space>j :TestSuite<CR>
endfunction
call SetupVimPlugins()
inoremap <NUL> <C-x><C-o>
inoremap <C-j> <C-x><C-o>

" http://www.vim.org/scripts/script.php?script_id=1408
" Set directory-wise configuration.
" Search from the directory the file is located upwards to the root for
" a local configuration file called .lvimrc and sources it.
"
" The local configuration file is expected to have commands affecting
" only the current buffer.
function! SetLocalOptions(fname)
  let l:dirname = fnamemodify(a:fname, ':p:h')
  while '/' !=# l:dirname
    let l:lvimrc  = l:dirname . '/.lvimrc'
    if filereadable(l:lvimrc)
      execute 'source ' . l:lvimrc
      break
    endif
    let l:dirname = fnamemodify(l:dirname, ':p:h:h')
  endwhile
endfunction
autocmd! BufNewFile,BufRead * call SetLocalOptions(bufname("%"))
