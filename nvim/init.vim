set encoding=utf-8
set mouse=a
set number
set relativenumber
syntax on
set nohlsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set nowrap
set noswapfile
set incsearch
set scrolloff=8
set signcolumn=yes

let g:python3_host_prog = 'C:\Users\mikko\AppData\Local\Programs\Python\Python310'

call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'bluz71/vim-moonfly-colors'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
"Plug 'SirVer/ultisnips'
"Plug 'vim-python/python-syntax'
call plug#end()

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

"Coc custom configs
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

"Disable recording
map q <Nop>

"Share global clipboard
set clipboard=unnamedplus

"python-syntax
let g:python_highlight_all = 1

let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({	search = vim.fn.input("Grep For > ")})<CR>

fun! TrimWhitespace()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun

augroup Mikko
	autocmd!
	autocmd BufWritePre * :call TrimWhitespace()
augroup END
