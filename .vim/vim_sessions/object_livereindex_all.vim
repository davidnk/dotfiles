let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <S-Tab> <Plug>SuperTabBackward
inoremap <C-Tab> 	
nnoremap  :w
nnoremap  :call GotoThing()
xnoremap <silent>  :call multiple_cursors#new("v")
nnoremap <silent>  :call multiple_cursors#new("n")
nnoremap <silent>  :CtrlP
nnoremap  :tabnew
vmap  f <Plug>(easymotion-s)
nmap  f <Plug>(easymotion-s)
nnoremap  Q :mksession ~/vim_sessions/prev_closed.vim:qa
nnoremap  q :q
nnoremap  t :tab split
nnoremap    za
nnoremap + +
noremap H 0
noremap J <PageDown>
noremap K <PageUp>
noremap L $
map \\ <Plug>(easymotion-prefix)
nnoremap _ <S-->
nmap gx <Plug>NetrwBrowseX
map go 
nnoremap wt T
nnoremap w 
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <silent> <Plug>(easymotion-prefix)N <Plug>(easymotion-N)
map <silent> <Plug>(easymotion-prefix)n <Plug>(easymotion-n)
map <silent> <Plug>(easymotion-prefix)k <Plug>(easymotion-k)
map <silent> <Plug>(easymotion-prefix)j <Plug>(easymotion-j)
map <silent> <Plug>(easymotion-prefix)gE <Plug>(easymotion-gE)
map <silent> <Plug>(easymotion-prefix)ge <Plug>(easymotion-ge)
map <silent> <Plug>(easymotion-prefix)E <Plug>(easymotion-E)
map <silent> <Plug>(easymotion-prefix)e <Plug>(easymotion-e)
map <silent> <Plug>(easymotion-prefix)B <Plug>(easymotion-B)
map <silent> <Plug>(easymotion-prefix)b <Plug>(easymotion-b)
map <silent> <Plug>(easymotion-prefix)W <Plug>(easymotion-W)
map <silent> <Plug>(easymotion-prefix)w <Plug>(easymotion-w)
map <silent> <Plug>(easymotion-prefix)T <Plug>(easymotion-T)
map <silent> <Plug>(easymotion-prefix)t <Plug>(easymotion-t)
map <silent> <Plug>(easymotion-prefix)F <Plug>(easymotion-F)
map <silent> <Plug>(easymotion-prefix)f <Plug>(easymotion-f)
xnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(1)
nnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
snoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
onoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
xnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(1,2)
nnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
onoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(1,1)
nnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
snoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
onoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
xnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(1,0)
nnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
snoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
onoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
xnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(1,2)
nnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
snoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
onoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
xnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(1,1)
nnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
snoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
onoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
xnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(1,0)
nnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
snoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
onoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
xnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(1,2)
nnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
snoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
onoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
xnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(1,1)
nnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
snoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
onoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
xnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(1,0)
nnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
snoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
onoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
xnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(1,1)
nnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
snoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
onoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
xnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(1,0)
nnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
snoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
onoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
xnoremap <silent> <Plug>(easymotion-dotrepeat) :call EasyMotion#DotRepeat(1)
nnoremap <silent> <Plug>(easymotion-dotrepeat) :call EasyMotion#DotRepeat(0)
snoremap <silent> <Plug>(easymotion-dotrepeat) :call EasyMotion#DotRepeat(0)
onoremap <silent> <Plug>(easymotion-dotrepeat) :call EasyMotion#DotRepeat(0)
xnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(1)
nnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
snoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
onoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
xnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(1,2)
nnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
onoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(1,2)
nnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2)
snoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2)
onoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2)
xnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(1,1)
nnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1)
snoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1)
onoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1)
xnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(1,0)
nnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0)
snoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0)
onoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0)
xnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(1,2)
nnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
snoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
onoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
xnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(1,1)
nnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
snoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
onoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
xnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(1,0)
nnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
snoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
onoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
xnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(1,2)
nnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
snoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
onoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
xnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(1,1)
nnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
snoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
onoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
xnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(1,0)
nnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
snoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
onoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
xnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(1,2)
nnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
snoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
onoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
xnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(1,1)
nnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
snoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
onoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
xnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(1,0)
nnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
snoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
onoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(1,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(1,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
onoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(1,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
onoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
xnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(1,2)
nnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
snoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
onoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
xnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(1,1)
nnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
snoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
onoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
xnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(1,0)
nnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
snoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
onoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(1,2)
nnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
snoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
onoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
xnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(1,1)
nnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
snoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
onoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
xnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(1,0)
nnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
snoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
onoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(1,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(1,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
onoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(1,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
onoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
xnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(1,2)
nnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
snoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
onoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
xnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(1,1)
nnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
snoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
onoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
xnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(1,0)
nnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
snoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
onoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(1,2)
nnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
snoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
onoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
xnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(1,1)
nnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
snoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
onoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
xnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(1,0)
nnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
snoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
onoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
xnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
onoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,1,0)
nnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
snoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
onoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
xnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,1,0)
nnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
snoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
onoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
xnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,1,2)
nnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
onoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,1,0)
nnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
snoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
onoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
xnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,1,0)
nnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
snoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
onoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
xnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,1,0)
nnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
snoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
onoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
xnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,1,0)
nnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
snoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
onoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,1,0)
nnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
snoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
onoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,1,1)
nnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
snoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
onoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
xnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,1,0)
nnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
snoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
onoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
xnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,1,0)
nnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
snoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
onoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
xnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
onoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
onoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,1,0)
nnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
snoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
onoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
xnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,1,0)
nnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
snoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
onoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,1,1)
nnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
snoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
onoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,1,1)
nnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
snoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
onoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
xnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
onoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
xnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,1,2)
nnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
onoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,1,1)
nnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
snoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
onoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,1,2)
nnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
onoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
onoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,1,2)
nnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
onoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,1,1)
nnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
snoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
onoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,1,2)
nnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
onoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,1,1)
nnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
snoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
onoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,1,1)
nnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
snoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
onoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,1,1)
nnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
snoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
onoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
xnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,1,0)
nnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
snoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
onoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
imap 	 <Plug>SuperTabForward
inoremap  :w
inoremap  
inoremap \ o
imap jf <Plug>(easymotion-s)
inoremap jj pa
inoremap jk l
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=2
set balloonexpr=eclim#util#Balloon(eclim#util#GetLineError(line('.')))
set clipboard=unnamedplus
set complete=.,w,b,u,U,t,i,d
set directory=/tmp
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set foldlevelstart=20
set helplang=en
set hidden
set history=50
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set matchpairs=(:),{:},[:],<:>
set nomodeline
set pastetoggle=<F2>
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/jedi-vim,~/.vim/bundle/supertab,~/.vim/bundle/vim-easymotion,~/.vim/bundle/vim-flake8,~/.vim/bundle/vim-multiple-cursors,~/.vim/bundle/vim-python-pep8-indent,~/.vim/bundle/vim-pyunit,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/bundle/jedi-vim/after,~/.vim/after,~/.vim/eclim,~/.vim/eclim/after
set scrolloff=5
set shiftround
set shiftwidth=2
set smartcase
set smartindent
set smarttab
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.class
set tabstop=2
set tags=./tags;
set wildignore=*.o,*.obj,*.bak,*.exe,*.a,*.dep,*/tmp/*,*.so,*.swp,*.zip,*.class,*.jar
set window=72
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/pgdev
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +17 pg/gotham/PGServer/server-src/com/palantir/nexus/objectstore/joint/AbstractObjectPR.java
badd +94 pg/gotham/PGServer/server-src/com/palantir/util/reindex/replay/LiveReindexerImpl.java
badd +0 pg/gotham/PGServer/server-src/com/palantir/nexus/objectstore/legacy/LegacyObjectPR.java
badd +1 pt/commons-api/src/com/palantir/common/base/AbstractBatchingVisitable.java
badd +0 Parellel
badd +57 pg/gotham/PGServer/server-src/com/palantir/util/task/ParallelTask.java
badd +22 pt/commons-api/src/com/palantir/common/base/BatchingVisitableFromIterable.java
badd +28 pg/gotham/PGApplicationPlatformAPI/api-src/com/palantir/workspace/nodepanel/SizeLimitedDataItemGroup.java
badd +101 pt/commons-api/src/com/palantir/common/collect/IterableUtils.java
badd +60 pg/gotham/PGServer/server-src/com/palantir/nexus/objectstore/legacy/LegacyObjectDataEventPR.java
badd +0 pg/gotham/PGServer/server-src/com/palantir/nexus/objectstore/joint/AbstractObjectDataEventPR.java
badd +8 pg/gotham/PGServer/server-src/com/palantir/util/task/SortedIdWork.java
badd +35 pg/gotham/PGServer/server-src/com/palantir/nexus/db/SecondaryIndexBackend.java
badd +118 pg/gotham/PGServer/server-src/com/palantir/nexus/db/SecondaryIndexPR.java
badd +57 pg/gotham/PGRaptor/src/com/palantir/raptor/pr/RaptorReindexPR.java
badd +104 pg/gotham/PGServer/server-src/com/palantir/nexus/db/LocalIndexBackend.java
badd +556 pg/gotham/PGServer/server-src/com/palantir/nexus/db/LocalIndexPR.java
badd +45 pg/gotham/PGIntegrationTest/graph-test-src/com/palantir/nexus/db/graph/persistence/NonThreadSafeGraphPersisterImplFastTest.java
badd +56 pg/gotham/PGServer/server-src/com/palantir/util/task/ParallelTaskBuilder.java
badd +1 pg/gotham/PGServer/server-src/com/palantir/util/task/ComposingParallelTaskProgressHandler.java
badd +0 pg/gotham/PGServer/server-src/com/palantir/util/task/ParallelTaskProgressHandler.java
badd +0 pg/gotham/PGServer/server-src/com/palantir/nexus/db/livereindex/LiveReindexIntervalIndexerImpl.java
args pg/gotham/PGServer/server-src/com/palantir/nexus/objectstore/joint/AbstractObjectPR.java
edit pg/gotham/PGServer/server-src/com/palantir/util/reindex/replay/LiveReindexerImpl.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 114 + 114) / 228)
exe '2resize ' . ((&lines * 35 + 36) / 73)
exe 'vert 2resize ' . ((&columns * 113 + 114) / 228)
exe '3resize ' . ((&lines * 34 + 36) / 73)
exe 'vert 3resize ' . ((&columns * 113 + 114) / 228)
argglobal
inoreabbr <buffer> logger logger=eclim#java#logging#LoggingInit("logger")
inoreabbr <buffer> log log=eclim#java#logging#LoggingInit("log")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
setlocal complete=.,w,b,u,U,t,i,d
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=eclim#java#complete#CodeComplete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#[javac]\ %.%#:\ warning:\ unmappable\ character\ %.%#,%A%.%#[javac]\ %f:%l:\ %m,%C%.%#[javac]\ symbol\ %#:\ %m,%-Z%.%#[javac]\ %p^,%A%.%#[javadoc]\ %f:%l:\ %m,%-C%.%#[javadoc]\ location:\ %.%#,%-C%.%#[javadoc]\ %#,%-Z%.%#[javadoc]\ %p^,%-G%.%#[javadoc]\ Note:%.%#,%-G%.%#[javadoc]\ javadoc:%.%#,%.%#[javadoc]\ %f:\ %m,%.%#[java]\ org.apache.jasper.JasperException:\ file:%f(%l\\,%c)\ %m,%+A%.%#[junit]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[junit]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%.%#[checkstyle]\ %f:%l:%c:\ %m,%.%#[checkstyle]\ %f:%l:\ %m,%E%.%#[scalac]\ %f:%l:\ error:\ %m,%-Z%.%#[scalac]\ %p^,%W%.%#[scalac]\ %f:%l:\ warning:\ %m,%-Z%.%#[scalac]\ %p^,%A%.%#[scalac]\ %f:%l:\ %m,%-Z%.%#[scalac]\ %p^,%+A%.%#eclim\ testng:\ %f:%m,%.%#\ ERROR\ %.%#\ line\ %l\ in\ file:\ %.%f%.:\ %m,%.%#[exec]\ %f:%l:%c:\ %m,%.%#[exec]\ %f:%l:\ %m,%f:%l:%c:\ %m,%-G%.%#
setlocal expandtab
if &filetype != 'java'
setlocal filetype=java
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=6
setlocal foldnestmax=6
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^s*import
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetJavaIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=extends,0=implements
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=ant\ -find\ build.xml\ $*
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.java
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'java'
setlocal syntax=java
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
39
normal! zo
136
normal! zo
204
normal! zo
205
normal! zc
204
normal! zc
213
normal! zo
213
normal! zc
213
normal! zc
let s:l = 145 - ((17 * winheight(0) + 35) / 70)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
145
normal! 037|
wincmd w
argglobal
edit pg/gotham/PGServer/server-src/com/palantir/nexus/db/livereindex/LiveReindexIntervalIndexerImpl.java
inoreabbr <buffer> logger logger=eclim#java#logging#LoggingInit("logger")
inoreabbr <buffer> log log=eclim#java#logging#LoggingInit("log")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
setlocal complete=.,w,b,u,U,t,i,d
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=eclim#java#complete#CodeComplete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#[javac]\ %.%#:\ warning:\ unmappable\ character\ %.%#,%A%.%#[javac]\ %f:%l:\ %m,%C%.%#[javac]\ symbol\ %#:\ %m,%-Z%.%#[javac]\ %p^,%A%.%#[javadoc]\ %f:%l:\ %m,%-C%.%#[javadoc]\ location:\ %.%#,%-C%.%#[javadoc]\ %#,%-Z%.%#[javadoc]\ %p^,%-G%.%#[javadoc]\ Note:%.%#,%-G%.%#[javadoc]\ javadoc:%.%#,%.%#[javadoc]\ %f:\ %m,%.%#[java]\ org.apache.jasper.JasperException:\ file:%f(%l\\,%c)\ %m,%+A%.%#[junit]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[junit]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%.%#[checkstyle]\ %f:%l:%c:\ %m,%.%#[checkstyle]\ %f:%l:\ %m,%E%.%#[scalac]\ %f:%l:\ error:\ %m,%-Z%.%#[scalac]\ %p^,%W%.%#[scalac]\ %f:%l:\ warning:\ %m,%-Z%.%#[scalac]\ %p^,%A%.%#[scalac]\ %f:%l:\ %m,%-Z%.%#[scalac]\ %p^,%+A%.%#eclim\ testng:\ %f:%m,%.%#\ ERROR\ %.%#\ line\ %l\ in\ file:\ %.%f%.:\ %m,%.%#[exec]\ %f:%l:%c:\ %m,%.%#[exec]\ %f:%l:\ %m,%f:%l:%c:\ %m,%-G%.%#
setlocal expandtab
if &filetype != 'java'
setlocal filetype=java
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=6
setlocal foldnestmax=6
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^s*import
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetJavaIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=extends,0=implements
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=ant\ -find\ build.xml\ $*
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.java
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'java'
setlocal syntax=java
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
39
normal! zo
96
normal! zo
let s:l = 99 - ((29 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
99
normal! 019|
wincmd w
argglobal
edit pg/gotham/PGServer/server-src/com/palantir/util/reindex/replay/LiveReindexerImpl.java
inoreabbr <buffer> logger logger=eclim#java#logging#LoggingInit("logger")
inoreabbr <buffer> log log=eclim#java#logging#LoggingInit("log")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
setlocal complete=.,w,b,u,U,t,i,d
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=eclim#java#complete#CodeComplete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#[javac]\ %.%#:\ warning:\ unmappable\ character\ %.%#,%A%.%#[javac]\ %f:%l:\ %m,%C%.%#[javac]\ symbol\ %#:\ %m,%-Z%.%#[javac]\ %p^,%A%.%#[javadoc]\ %f:%l:\ %m,%-C%.%#[javadoc]\ location:\ %.%#,%-C%.%#[javadoc]\ %#,%-Z%.%#[javadoc]\ %p^,%-G%.%#[javadoc]\ Note:%.%#,%-G%.%#[javadoc]\ javadoc:%.%#,%.%#[javadoc]\ %f:\ %m,%.%#[java]\ org.apache.jasper.JasperException:\ file:%f(%l\\,%c)\ %m,%+A%.%#[junit]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[junit]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%.%#[checkstyle]\ %f:%l:%c:\ %m,%.%#[checkstyle]\ %f:%l:\ %m,%E%.%#[scalac]\ %f:%l:\ error:\ %m,%-Z%.%#[scalac]\ %p^,%W%.%#[scalac]\ %f:%l:\ warning:\ %m,%-Z%.%#[scalac]\ %p^,%A%.%#[scalac]\ %f:%l:\ %m,%-Z%.%#[scalac]\ %p^,%+A%.%#eclim\ testng:\ %f:%m,%.%#\ ERROR\ %.%#\ line\ %l\ in\ file:\ %.%f%.:\ %m,%.%#[exec]\ %f:%l:%c:\ %m,%.%#[exec]\ %f:%l:\ %m,%f:%l:%c:\ %m,%-G%.%#
setlocal expandtab
if &filetype != 'java'
setlocal filetype=java
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=6
setlocal foldnestmax=6
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^s*import
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetJavaIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=extends,0=implements
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=ant\ -find\ build.xml\ $*
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.java
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'java'
setlocal syntax=java
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
39
normal! zo
91
normal! zo
100
normal! zo
136
normal! zo
204
normal! zo
205
normal! zc
204
normal! zc
213
normal! zo
213
normal! zc
213
normal! zc
254
normal! zo
268
normal! zo
269
normal! zo
let s:l = 275 - ((73 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
275
normal! 029|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 114 + 114) / 228)
exe '2resize ' . ((&lines * 35 + 36) / 73)
exe 'vert 2resize ' . ((&columns * 113 + 114) / 228)
exe '3resize ' . ((&lines * 34 + 36) / 73)
exe 'vert 3resize ' . ((&columns * 113 + 114) / 228)
tabedit pg/gotham/PGServer/server-src/com/palantir/nexus/db/LocalIndexPR.java
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
inoreabbr <buffer> logger logger=eclim#java#logging#LoggingInit("logger")
inoreabbr <buffer> log log=eclim#java#logging#LoggingInit("log")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
setlocal complete=.,w,b,u,U,t,i,d
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=eclim#java#complete#CodeComplete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#[javac]\ %.%#:\ warning:\ unmappable\ character\ %.%#,%A%.%#[javac]\ %f:%l:\ %m,%C%.%#[javac]\ symbol\ %#:\ %m,%-Z%.%#[javac]\ %p^,%A%.%#[javadoc]\ %f:%l:\ %m,%-C%.%#[javadoc]\ location:\ %.%#,%-C%.%#[javadoc]\ %#,%-Z%.%#[javadoc]\ %p^,%-G%.%#[javadoc]\ Note:%.%#,%-G%.%#[javadoc]\ javadoc:%.%#,%.%#[javadoc]\ %f:\ %m,%.%#[java]\ org.apache.jasper.JasperException:\ file:%f(%l\\,%c)\ %m,%+A%.%#[junit]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[junit]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%.%#[checkstyle]\ %f:%l:%c:\ %m,%.%#[checkstyle]\ %f:%l:\ %m,%E%.%#[scalac]\ %f:%l:\ error:\ %m,%-Z%.%#[scalac]\ %p^,%W%.%#[scalac]\ %f:%l:\ warning:\ %m,%-Z%.%#[scalac]\ %p^,%A%.%#[scalac]\ %f:%l:\ %m,%-Z%.%#[scalac]\ %p^,%+A%.%#eclim\ testng:\ %f:%m,%.%#\ ERROR\ %.%#\ line\ %l\ in\ file:\ %.%f%.:\ %m,%.%#[exec]\ %f:%l:%c:\ %m,%.%#[exec]\ %f:%l:\ %m,%f:%l:%c:\ %m,%-G%.%#
setlocal expandtab
if &filetype != 'java'
setlocal filetype=java
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=6
setlocal foldnestmax=6
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^s*import
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetJavaIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=extends,0=implements
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=ant\ -find\ build.xml\ $*
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.java
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'java'
setlocal syntax=java
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
70
normal! zo
483
normal! zo
501
normal! zo
515
normal! zo
533
normal! zo
573
normal! zo
let s:l = 484 - ((34 * winheight(0) + 35) / 70)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
484
normal! 0
lcd ~/Documents/pgdev
2wincmd w
tabedit ~/Documents/pgdev/pg/gotham/PGServer/server-src/com/palantir/nexus/objectstore/joint/AbstractObjectPR.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 114 + 114) / 228)
exe 'vert 2resize ' . ((&columns * 113 + 114) / 228)
argglobal
nnoremap <buffer> <silent> \d :JavaSearchContext
inoreabbr <buffer> logger logger=eclim#java#logging#LoggingInit("logger")
inoreabbr <buffer> log log=eclim#java#logging#LoggingInit("log")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
setlocal complete=.,w,b,u,U,t,i,d
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=eclim#java#complete#CodeComplete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#[javac]\ %.%#:\ warning:\ unmappable\ character\ %.%#,%A%.%#[javac]\ %f:%l:\ %m,%C%.%#[javac]\ symbol\ %#:\ %m,%-Z%.%#[javac]\ %p^,%A%.%#[javadoc]\ %f:%l:\ %m,%-C%.%#[javadoc]\ location:\ %.%#,%-C%.%#[javadoc]\ %#,%-Z%.%#[javadoc]\ %p^,%-G%.%#[javadoc]\ Note:%.%#,%-G%.%#[javadoc]\ javadoc:%.%#,%.%#[javadoc]\ %f:\ %m,%.%#[java]\ org.apache.jasper.JasperException:\ file:%f(%l\\,%c)\ %m,%+A%.%#[junit]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[junit]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%.%#[checkstyle]\ %f:%l:%c:\ %m,%.%#[checkstyle]\ %f:%l:\ %m,%E%.%#[scalac]\ %f:%l:\ error:\ %m,%-Z%.%#[scalac]\ %p^,%W%.%#[scalac]\ %f:%l:\ warning:\ %m,%-Z%.%#[scalac]\ %p^,%A%.%#[scalac]\ %f:%l:\ %m,%-Z%.%#[scalac]\ %p^,%+A%.%#eclim\ testng:\ %f:%m,%.%#\ ERROR\ %.%#\ line\ %l\ in\ file:\ %.%f%.:\ %m,%.%#[exec]\ %f:%l:%c:\ %m,%.%#[exec]\ %f:%l:\ %m,%f:%l:%c:\ %m,%-G%.%#
setlocal expandtab
if &filetype != 'java'
setlocal filetype=java
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=6
setlocal foldnestmax=6
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^s*import
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetJavaIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=extends,0=implements
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=ant\ -find\ build.xml\ $*
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.java
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'java'
setlocal syntax=java
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
13
normal! zo
15
normal! zo
16
normal! zo
18
normal! zo
23
normal! zo
let s:l = 30 - ((29 * winheight(0) + 35) / 70)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 022|
wincmd w
argglobal
edit ~/Documents/pgdev/pg/gotham/PGServer/server-src/com/palantir/nexus/objectstore/legacy/LegacyObjectPR.java
inoreabbr <buffer> logger logger=eclim#java#logging#LoggingInit("logger")
inoreabbr <buffer> log log=eclim#java#logging#LoggingInit("log")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
setlocal complete=.,w,b,u,U,t,i,d
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=eclim#java#complete#CodeComplete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#[javac]\ %.%#:\ warning:\ unmappable\ character\ %.%#,%A%.%#[javac]\ %f:%l:\ %m,%C%.%#[javac]\ symbol\ %#:\ %m,%-Z%.%#[javac]\ %p^,%A%.%#[javadoc]\ %f:%l:\ %m,%-C%.%#[javadoc]\ location:\ %.%#,%-C%.%#[javadoc]\ %#,%-Z%.%#[javadoc]\ %p^,%-G%.%#[javadoc]\ Note:%.%#,%-G%.%#[javadoc]\ javadoc:%.%#,%.%#[javadoc]\ %f:\ %m,%.%#[java]\ org.apache.jasper.JasperException:\ file:%f(%l\\,%c)\ %m,%+A%.%#[junit]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[junit]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%.%#[checkstyle]\ %f:%l:%c:\ %m,%.%#[checkstyle]\ %f:%l:\ %m,%E%.%#[scalac]\ %f:%l:\ error:\ %m,%-Z%.%#[scalac]\ %p^,%W%.%#[scalac]\ %f:%l:\ warning:\ %m,%-Z%.%#[scalac]\ %p^,%A%.%#[scalac]\ %f:%l:\ %m,%-Z%.%#[scalac]\ %p^,%+A%.%#eclim\ testng:\ %f:%m,%.%#\ ERROR\ %.%#\ line\ %l\ in\ file:\ %.%f%.:\ %m,%.%#[exec]\ %f:%l:%c:\ %m,%.%#[exec]\ %f:%l:\ %m,%f:%l:%c:\ %m,%-G%.%#
setlocal expandtab
if &filetype != 'java'
setlocal filetype=java
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=6
setlocal foldnestmax=6
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^s*import
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetJavaIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=extends,0=implements
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=ant\ -find\ build.xml\ $*
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.java
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'java'
setlocal syntax=java
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
33
normal! zo
let s:l = 82 - ((5 * winheight(0) + 35) / 70)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
82
normal! 026|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 114 + 114) / 228)
exe 'vert 2resize ' . ((&columns * 113 + 114) / 228)
tabedit ~/Documents/pgdev/pt/commons-api/src/com/palantir/common/base/AbstractBatchingVisitable.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 114 + 114) / 228)
exe '2resize ' . ((&lines * 35 + 36) / 73)
exe 'vert 2resize ' . ((&columns * 113 + 114) / 228)
exe '3resize ' . ((&lines * 34 + 36) / 73)
exe 'vert 3resize ' . ((&columns * 113 + 114) / 228)
argglobal
inoreabbr <buffer> logger logger=eclim#java#logging#LoggingInit("logger")
inoreabbr <buffer> log log=eclim#java#logging#LoggingInit("log")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
setlocal complete=.,w,b,u,U,t,i,d
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=eclim#java#complete#CodeComplete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#[javac]\ %.%#:\ warning:\ unmappable\ character\ %.%#,%A%.%#[javac]\ %f:%l:\ %m,%C%.%#[javac]\ symbol\ %#:\ %m,%-Z%.%#[javac]\ %p^,%A%.%#[javadoc]\ %f:%l:\ %m,%-C%.%#[javadoc]\ location:\ %.%#,%-C%.%#[javadoc]\ %#,%-Z%.%#[javadoc]\ %p^,%-G%.%#[javadoc]\ Note:%.%#,%-G%.%#[javadoc]\ javadoc:%.%#,%.%#[javadoc]\ %f:\ %m,%.%#[java]\ org.apache.jasper.JasperException:\ file:%f(%l\\,%c)\ %m,%+A%.%#[junit]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[junit]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%.%#[checkstyle]\ %f:%l:%c:\ %m,%.%#[checkstyle]\ %f:%l:\ %m,%E%.%#[scalac]\ %f:%l:\ error:\ %m,%-Z%.%#[scalac]\ %p^,%W%.%#[scalac]\ %f:%l:\ warning:\ %m,%-Z%.%#[scalac]\ %p^,%A%.%#[scalac]\ %f:%l:\ %m,%-Z%.%#[scalac]\ %p^,%+A%.%#eclim\ testng:\ %f:%m,%.%#\ ERROR\ %.%#\ line\ %l\ in\ file:\ %.%f%.:\ %m,%.%#[exec]\ %f:%l:%c:\ %m,%.%#[exec]\ %f:%l:\ %m,%f:%l:%c:\ %m,%-G%.%#
setlocal expandtab
if &filetype != 'java'
setlocal filetype=java
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=6
setlocal foldnestmax=6
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^s*import
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetJavaIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=extends,0=implements
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=ant\ -find\ build.xml\ $*
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.java
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'java'
setlocal syntax=java
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
16
normal! zo
18
normal! zo
20
normal! zo
47
normal! zo
47
normal! zc
let s:l = 2 - ((1 * winheight(0) + 35) / 70)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
argglobal
edit ~/Documents/pgdev/pt/commons-api/src/com/palantir/common/base/BatchingVisitableFromIterable.java
inoreabbr <buffer> logger logger=eclim#java#logging#LoggingInit("logger")
inoreabbr <buffer> log log=eclim#java#logging#LoggingInit("log")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
setlocal complete=.,w,b,u,U,t,i,d
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=eclim#java#complete#CodeComplete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#[javac]\ %.%#:\ warning:\ unmappable\ character\ %.%#,%A%.%#[javac]\ %f:%l:\ %m,%C%.%#[javac]\ symbol\ %#:\ %m,%-Z%.%#[javac]\ %p^,%A%.%#[javadoc]\ %f:%l:\ %m,%-C%.%#[javadoc]\ location:\ %.%#,%-C%.%#[javadoc]\ %#,%-Z%.%#[javadoc]\ %p^,%-G%.%#[javadoc]\ Note:%.%#,%-G%.%#[javadoc]\ javadoc:%.%#,%.%#[javadoc]\ %f:\ %m,%.%#[java]\ org.apache.jasper.JasperException:\ file:%f(%l\\,%c)\ %m,%+A%.%#[junit]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[junit]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%.%#[checkstyle]\ %f:%l:%c:\ %m,%.%#[checkstyle]\ %f:%l:\ %m,%E%.%#[scalac]\ %f:%l:\ error:\ %m,%-Z%.%#[scalac]\ %p^,%W%.%#[scalac]\ %f:%l:\ warning:\ %m,%-Z%.%#[scalac]\ %p^,%A%.%#[scalac]\ %f:%l:\ %m,%-Z%.%#[scalac]\ %p^,%+A%.%#eclim\ testng:\ %f:%m,%.%#\ ERROR\ %.%#\ line\ %l\ in\ file:\ %.%f%.:\ %m,%.%#[exec]\ %f:%l:%c:\ %m,%.%#[exec]\ %f:%l:\ %m,%f:%l:%c:\ %m,%-G%.%#
setlocal expandtab
if &filetype != 'java'
setlocal filetype=java
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=6
setlocal foldnestmax=6
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^s*import
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetJavaIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=extends,0=implements
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=ant\ -find\ build.xml\ $*
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.java
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'java'
setlocal syntax=java
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
13
normal! zo
43
normal! zo
let s:l = 6 - ((5 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 034|
wincmd w
argglobal
edit ~/Documents/pgdev/pt/commons-api/src/com/palantir/common/base/BatchingVisitableFromIterable.java
inoreabbr <buffer> logger logger=eclim#java#logging#LoggingInit("logger")
inoreabbr <buffer> log log=eclim#java#logging#LoggingInit("log")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
setlocal complete=.,w,b,u,U,t,i,d
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=eclim#java#complete#CodeComplete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#[javac]\ %.%#:\ warning:\ unmappable\ character\ %.%#,%A%.%#[javac]\ %f:%l:\ %m,%C%.%#[javac]\ symbol\ %#:\ %m,%-Z%.%#[javac]\ %p^,%A%.%#[javadoc]\ %f:%l:\ %m,%-C%.%#[javadoc]\ location:\ %.%#,%-C%.%#[javadoc]\ %#,%-Z%.%#[javadoc]\ %p^,%-G%.%#[javadoc]\ Note:%.%#,%-G%.%#[javadoc]\ javadoc:%.%#,%.%#[javadoc]\ %f:\ %m,%.%#[java]\ org.apache.jasper.JasperException:\ file:%f(%l\\,%c)\ %m,%+A%.%#[junit]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[junit]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%.%#[checkstyle]\ %f:%l:%c:\ %m,%.%#[checkstyle]\ %f:%l:\ %m,%E%.%#[scalac]\ %f:%l:\ error:\ %m,%-Z%.%#[scalac]\ %p^,%W%.%#[scalac]\ %f:%l:\ warning:\ %m,%-Z%.%#[scalac]\ %p^,%A%.%#[scalac]\ %f:%l:\ %m,%-Z%.%#[scalac]\ %p^,%+A%.%#eclim\ testng:\ %f:%m,%.%#\ ERROR\ %.%#\ line\ %l\ in\ file:\ %.%f%.:\ %m,%.%#[exec]\ %f:%l:%c:\ %m,%.%#[exec]\ %f:%l:\ %m,%f:%l:%c:\ %m,%-G%.%#
setlocal expandtab
if &filetype != 'java'
setlocal filetype=java
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=6
setlocal foldnestmax=6
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^s*import
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetJavaIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=extends,0=implements
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=ant\ -find\ build.xml\ $*
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.java
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'java'
setlocal syntax=java
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
13
normal! zo
let s:l = 49 - ((18 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
49
normal! 035|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 114 + 114) / 228)
exe '2resize ' . ((&lines * 35 + 36) / 73)
exe 'vert 2resize ' . ((&columns * 113 + 114) / 228)
exe '3resize ' . ((&lines * 34 + 36) / 73)
exe 'vert 3resize ' . ((&columns * 113 + 114) / 228)
tabedit ~/Documents/pgdev/pg/gotham/PGServer/server-src/com/palantir/util/task/ParallelTask.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 114 + 114) / 228)
exe 'vert 2resize ' . ((&columns * 113 + 114) / 228)
argglobal
inoreabbr <buffer> logger logger=eclim#java#logging#LoggingInit("logger")
inoreabbr <buffer> log log=eclim#java#logging#LoggingInit("log")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
setlocal complete=.,w,b,u,U,t,i,d
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=eclim#java#complete#CodeComplete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#[javac]\ %.%#:\ warning:\ unmappable\ character\ %.%#,%A%.%#[javac]\ %f:%l:\ %m,%C%.%#[javac]\ symbol\ %#:\ %m,%-Z%.%#[javac]\ %p^,%A%.%#[javadoc]\ %f:%l:\ %m,%-C%.%#[javadoc]\ location:\ %.%#,%-C%.%#[javadoc]\ %#,%-Z%.%#[javadoc]\ %p^,%-G%.%#[javadoc]\ Note:%.%#,%-G%.%#[javadoc]\ javadoc:%.%#,%.%#[javadoc]\ %f:\ %m,%.%#[java]\ org.apache.jasper.JasperException:\ file:%f(%l\\,%c)\ %m,%+A%.%#[junit]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[junit]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%.%#[checkstyle]\ %f:%l:%c:\ %m,%.%#[checkstyle]\ %f:%l:\ %m,%E%.%#[scalac]\ %f:%l:\ error:\ %m,%-Z%.%#[scalac]\ %p^,%W%.%#[scalac]\ %f:%l:\ warning:\ %m,%-Z%.%#[scalac]\ %p^,%A%.%#[scalac]\ %f:%l:\ %m,%-Z%.%#[scalac]\ %p^,%+A%.%#eclim\ testng:\ %f:%m,%.%#\ ERROR\ %.%#\ line\ %l\ in\ file:\ %.%f%.:\ %m,%.%#[exec]\ %f:%l:%c:\ %m,%.%#[exec]\ %f:%l:\ %m,%f:%l:%c:\ %m,%-G%.%#
setlocal expandtab
if &filetype != 'java'
setlocal filetype=java
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=6
setlocal foldnestmax=6
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^s*import
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetJavaIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=extends,0=implements
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=ant\ -find\ build.xml\ $*
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=.,/usr/include,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.java
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'java'
setlocal syntax=java
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
51
normal! zo
62
normal! zo
62
normal! zo
62
normal! zo
62
normal! zo
83
normal! zo
102
normal! zo
110
normal! zo
113
normal! zo
133
normal! zo
let s:l = 141 - ((34 * winheight(0) + 35) / 70)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
141
normal! 09|
wincmd w
argglobal
edit ~/Documents/pgdev/pg/gotham/PGServer/server-src/com/palantir/util/task/ParallelTaskProgressHandler.java
inoreabbr <buffer> logger logger=eclim#java#logging#LoggingInit("logger")
inoreabbr <buffer> log log=eclim#java#logging#LoggingInit("log")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
setlocal complete=.,w,b,u,U,t,i,d
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=eclim#java#complete#CodeComplete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#[javac]\ %.%#:\ warning:\ unmappable\ character\ %.%#,%A%.%#[javac]\ %f:%l:\ %m,%C%.%#[javac]\ symbol\ %#:\ %m,%-Z%.%#[javac]\ %p^,%A%.%#[javadoc]\ %f:%l:\ %m,%-C%.%#[javadoc]\ location:\ %.%#,%-C%.%#[javadoc]\ %#,%-Z%.%#[javadoc]\ %p^,%-G%.%#[javadoc]\ Note:%.%#,%-G%.%#[javadoc]\ javadoc:%.%#,%.%#[javadoc]\ %f:\ %m,%.%#[java]\ org.apache.jasper.JasperException:\ file:%f(%l\\,%c)\ %m,%+A%.%#[junit]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[junit]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%.%#[checkstyle]\ %f:%l:%c:\ %m,%.%#[checkstyle]\ %f:%l:\ %m,%E%.%#[scalac]\ %f:%l:\ error:\ %m,%-Z%.%#[scalac]\ %p^,%W%.%#[scalac]\ %f:%l:\ warning:\ %m,%-Z%.%#[scalac]\ %p^,%A%.%#[scalac]\ %f:%l:\ %m,%-Z%.%#[scalac]\ %p^,%+A%.%#eclim\ testng:\ %f:%m,%.%#\ ERROR\ %.%#\ line\ %l\ in\ file:\ %.%f%.:\ %m,%.%#[exec]\ %f:%l:%c:\ %m,%.%#[exec]\ %f:%l:\ %m,%f:%l:%c:\ %m,%-G%.%#
setlocal expandtab
if &filetype != 'java'
setlocal filetype=java
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=6
setlocal foldnestmax=6
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^s*import
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetJavaIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=extends,0=implements
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=ant\ -find\ build.xml\ $*
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.java
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'java'
setlocal syntax=java
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 35) / 70)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Documents/pgdev
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 114 + 114) / 228)
exe 'vert 2resize ' . ((&columns * 113 + 114) / 228)
tabedit ~/Documents/pgdev/pg/gotham/PGServer/server-src/com/palantir/nexus/objectstore/joint/AbstractObjectDataEventPR.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 114 + 114) / 228)
exe 'vert 2resize ' . ((&columns * 113 + 114) / 228)
argglobal
inoreabbr <buffer> logger logger=eclim#java#logging#LoggingInit("logger")
inoreabbr <buffer> log log=eclim#java#logging#LoggingInit("log")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
setlocal complete=.,w,b,u,U,t,i,d
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=eclim#java#complete#CodeComplete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#[javac]\ %.%#:\ warning:\ unmappable\ character\ %.%#,%A%.%#[javac]\ %f:%l:\ %m,%C%.%#[javac]\ symbol\ %#:\ %m,%-Z%.%#[javac]\ %p^,%A%.%#[javadoc]\ %f:%l:\ %m,%-C%.%#[javadoc]\ location:\ %.%#,%-C%.%#[javadoc]\ %#,%-Z%.%#[javadoc]\ %p^,%-G%.%#[javadoc]\ Note:%.%#,%-G%.%#[javadoc]\ javadoc:%.%#,%.%#[javadoc]\ %f:\ %m,%.%#[java]\ org.apache.jasper.JasperException:\ file:%f(%l\\,%c)\ %m,%+A%.%#[junit]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[junit]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%.%#[checkstyle]\ %f:%l:%c:\ %m,%.%#[checkstyle]\ %f:%l:\ %m,%E%.%#[scalac]\ %f:%l:\ error:\ %m,%-Z%.%#[scalac]\ %p^,%W%.%#[scalac]\ %f:%l:\ warning:\ %m,%-Z%.%#[scalac]\ %p^,%A%.%#[scalac]\ %f:%l:\ %m,%-Z%.%#[scalac]\ %p^,%+A%.%#eclim\ testng:\ %f:%m,%.%#\ ERROR\ %.%#\ line\ %l\ in\ file:\ %.%f%.:\ %m,%.%#[exec]\ %f:%l:%c:\ %m,%.%#[exec]\ %f:%l:\ %m,%f:%l:%c:\ %m,%-G%.%#
setlocal expandtab
if &filetype != 'java'
setlocal filetype=java
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=6
setlocal foldnestmax=6
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^s*import
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetJavaIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=extends,0=implements
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=ant\ -find\ build.xml\ $*
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.java
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'java'
setlocal syntax=java
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
31
normal! zo
144
normal! zo
152
normal! zo
let s:l = 152 - ((34 * winheight(0) + 35) / 70)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
152
normal! 070|
wincmd w
argglobal
edit ~/Documents/pgdev/pg/gotham/PGServer/server-src/com/palantir/nexus/objectstore/legacy/LegacyObjectDataEventPR.java
inoreabbr <buffer> logger logger=eclim#java#logging#LoggingInit("logger")
inoreabbr <buffer> log log=eclim#java#logging#LoggingInit("log")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
setlocal complete=.,w,b,u,U,t,i,d
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=eclim#java#complete#CodeComplete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#[javac]\ %.%#:\ warning:\ unmappable\ character\ %.%#,%A%.%#[javac]\ %f:%l:\ %m,%C%.%#[javac]\ symbol\ %#:\ %m,%-Z%.%#[javac]\ %p^,%A%.%#[javadoc]\ %f:%l:\ %m,%-C%.%#[javadoc]\ location:\ %.%#,%-C%.%#[javadoc]\ %#,%-Z%.%#[javadoc]\ %p^,%-G%.%#[javadoc]\ Note:%.%#,%-G%.%#[javadoc]\ javadoc:%.%#,%.%#[javadoc]\ %f:\ %m,%.%#[java]\ org.apache.jasper.JasperException:\ file:%f(%l\\,%c)\ %m,%+A%.%#[junit]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[junit]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[junit]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Failures:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%+A%.%#[cactus]\ %.%#Errors:\ %[%^0]%.%#\ Time\ elapsed:\ %.%#,%-Z%.%#[cactus]\ Test\ %f\ FAILED,%.%#[checkstyle]\ %f:%l:%c:\ %m,%.%#[checkstyle]\ %f:%l:\ %m,%E%.%#[scalac]\ %f:%l:\ error:\ %m,%-Z%.%#[scalac]\ %p^,%W%.%#[scalac]\ %f:%l:\ warning:\ %m,%-Z%.%#[scalac]\ %p^,%A%.%#[scalac]\ %f:%l:\ %m,%-Z%.%#[scalac]\ %p^,%+A%.%#eclim\ testng:\ %f:%m,%.%#\ ERROR\ %.%#\ line\ %l\ in\ file:\ %.%f%.:\ %m,%.%#[exec]\ %f:%l:%c:\ %m,%.%#[exec]\ %f:%l:\ %m,%f:%l:%c:\ %m,%-G%.%#
setlocal expandtab
if &filetype != 'java'
setlocal filetype=java
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=6
setlocal foldnestmax=6
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^s*import
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetJavaIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=extends,0=implements
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=ant\ -find\ build.xml\ $*
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.java
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'java'
setlocal syntax=java
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
373
normal! zo
566
normal! zo
568
normal! zo
570
normal! zo
578
normal! zo
581
normal! zo
583
normal! zo
let s:l = 587 - ((24 * winheight(0) + 35) / 70)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
587
normal! 013|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 114 + 114) / 228)
exe 'vert 2resize ' . ((&columns * 113 + 114) / 228)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
