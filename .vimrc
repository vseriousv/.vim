set nocompatible
filetype plugin indent on
syntax on
set encoding=utf-8
set number
set relativenumber
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set nowrap
set laststatus=2
set noshowmode
set cursorline
set hidden
set ignorecase
set smartcase
set incsearch
set scrolloff=3
set backspace=indent,eol,start
colorscheme desert
set background=dark

call plug#begin('~/.vim/plugged')

" GOLANG
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" JAVASCRIPT
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" PERFOMANCE
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

call plug#end()

" coc.vim configure
let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-tsserver',
      \ 'coc-eslint',
      \ 'coc-prettier',
      \ 'coc-go'
      \ ]

" GOLANG SETTINGS
let g:go_fmt_command = "goimports"
let g:go_fmt_command = "goimports"

" NERDTree
nmap <leader>b :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
autocmd VimEnter * NERDTree | wincmd p
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | q | endif

" lightline.vim
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'readonly': 'LightlineReadonly',
      \   'modified': 'LightlineModified',
      \ },
      \ }
function! LightlineReadonly()
  return &readonly ? '⚠ RO' : ''
endfunction
function! LightlineModified()
  return &modified ? '+ ' : ''
endfunction

" fzf
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-s> :Rg<CR>

" vim-surround
let g:surround_mappings_style = "surround"

" vim-gitgutter
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✱'
let g:gitgutter_sign_removed = '✖'
let g:gitgutter_sign_modified_removed = '✖'
let g:gitgutter_sign_removed_first_line = '‾'
let g:gitgutter_sign_removed_above_and_below = '≡'

" vim-jsx
let g:jsx_ext_required = 0

" vim-airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
