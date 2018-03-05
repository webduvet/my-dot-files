set termguicolors

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

set tabstop=2 shiftwidth=2 expandtab smarttab

set timeoutlen=1000 ttimeoutlen=0

colorscheme jellybeans

" Plugin outside ~/.vim/plugged with post-update hook
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdcommenter'
  Plug 'pangloss/vim-javascript'
  Plug 'dikiaap/minimalist'
  Plug 'morhetz/gruvbox'
  Plug 'rking/ag.vim'
  Plug 'mxw/vim-jsx'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'jiangmiao/auto-pairs'

  " ternjs is not actively maintaned = find replacement
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  "Plug 'lygaret/autohighlight.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'easymotion/vim-easymotion'
  Plug 'pboettch/vim-highlight-cursor-words'
  Plug 'jeetsukumaran/vim-buffergator'

" Initialize plugin system
call plug#end()

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


" search text under cursor
map <leader>s :$s/\<<C-r><C-w>\>/

let g:airline#extensions#tabline#enabled = 1
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
