set nocompatible              " be iMproved, required
filetype off                  " required

" CUSTOM SETTING BELOW!

"au BufNew,BufEnter,BufRead *.cc,*.cpp,*.hpp 
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_extra_conf='/home/mikko/.vim/.ycm_extra_conf.py'
set number
syntax on 
set hlsearch

" autoclose 
inoremap "" ""<left>
inoremap '' ''<left>
inoremap ( ()<left>
inoremap (: ():<left> 
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap [ []<left>
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap { {}<left>
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" fold settings
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END

"NerdTree
map <C-N> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


