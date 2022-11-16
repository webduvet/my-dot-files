set termguicolors

set tabstop=4 shiftwidth=4 expandtab smarttab

set timeoutlen=1000 ttimeoutlen=0

set nu
set colorcolumn=100

" turn off autofolding
set nofoldenable

"colorscheme jellybeans
"colorscheme morning
"colorscheme github
"colorscheme tokyonight

" prettier settings
" this prettify everything upon the save - not very user friendly
"autocmd FileType javascript set formatprg=prettier\ --stdin
"autocmd BufWritePre *.js :normal gggqG
"autocmd BufWritePre *.jsx :normal gggqG

let g:python3_host_prog='/usr/bin/python3'
let g:python_host_prog='/usr/bin/python'

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

    " Plugin outside ~/.vim/plugged with post-update hook
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'scrooloose/nerdcommenter'
    "  Plug 'pangloss/vim-javascript'
    Plug 'rking/ag.vim'
    "  Plug 'mxw/vim-jsx'
    "  Plug 'w0rp/ale'
    "  let g:ale_linters = {'javascript': ['eslint', 'flow']}  
    Plug 'plasticboy/vim-markdown'
    Plug 'jiangmiao/auto-pairs'
    Plug 'martinda/Jenkinsfile-vim-syntax'
    Plug 'udalov/kotlin-vim'
    Plug 'Shougo/vimproc.vim', { 'do': 'make' }
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    "Plug 'lygaret/autohighlight.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'easymotion/vim-easymotion'
    Plug 'pboettch/vim-highlight-cursor-words'
    Plug 'jeetsukumaran/vim-buffergator'
    Plug 'xolox/vim-notes'
    Plug 'xolox/vim-misc'

    Plug 'aserebryakov/vim-todo-lists'

    "Grammar
    Plug 'rhysd/vim-grammarous'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

    Plug 'preservim/tagbar'

    " Initialize plugin system
call plug#end()

" for buffergator allow swap unsaved buffer
set hidden

" deoplete configuration
let g:deoplete#enable_at_startup = 1

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

set clipboard=unnamedplus

" hot key and other keys mapping
let mapleader = ','
map J <c-d>
map K <c-u>

map <leader>f :Files<cr>
map <leader>q :bw<cr>

map <c-a> :Ag 

" buffergator
"map <leader>bb :BuffergatorOpen<cr>

let NERDTreeShowHidden=1

" search text under cursor
map <leader>s :$s/\<<C-r><C-w>\>/

let g:airline#extensions#tabline#enabled = 1
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NERDTree
map <leader>n :NERDTreeToggle<cr>
:let g:NERDTreeWinSize=60

" map ESC
imap § <Esc>
 
" table mapping simple
"map <leader>| │
"map <leader>l └
"map <leader>- ─
"map <leader>e ├

augroup filetype_c
    autocmd!
    :autocmd FileType c setlocal tabstop=8 shiftwidth=8 softtabstop=8 expandtab smarttab
    :autocmd FileType c nnoremap <buffer> <localleader>c I/*<space><esc><s-a><space>*/<esc>
augroup end

nmap <F8> :TagbarToggle<CR>
