set encoding=utf-8
set mouse=a
set number
syntax on 
set hlsearch
set ruler
set tabstop=4
set shiftwidth=4
colorscheme delek

" autoclose 
inoremap "" ""<left>
inoremap '' ''<left>
inoremap (( ()<left>
inoremap (: ():<left> 
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap [[ []<left>
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap {{ {}<left>
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


" fold settings
"augroup vimrc
"  au BufReadPre * setlocal foldmethod=indent
"  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
"augroup END

call plug#begin()
"Plug 'roxma/nvim-completion-manager'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
"Plug 'lukas-reineke/indent-blankline.nvim' 
Plug 'honza/vim-snippets'
Plug 'wfxr/minimap.vim'
Plug 'vim-python/python-syntax'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


"Coc custom configs
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

"Disable recording
map q <Nop>

"Share global clipboard 
set clipboard=unnamedplus

"python-syntax
let g:python_highlight_all = 1

"minimap configs
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

