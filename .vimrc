" Plugins
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'morhetz/gruvbox'
Plugin 'easymotion/vim-easymotion'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
call vundle#end()

" Theme
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

" ----------- Text Rendering Options ---------
" Keep 5 lines above and below the cursor
set scrolloff=5
" Enable syntax highlighting
syntax enable
" Set indentation character to ⦙
let g:indentLine_char = '⦙'

" ---------- User Interface Options ----------
" Show line numbers
set number
" Show relative line numbers
set relativenumber
" Show current mode
set showmode

" ---------- Search Options ----------
" Enable search highlighting
set hlsearch
" Ignore case when searching
set ignorecase
" Incremental search that shows partial matches
set incsearch
" Automatically switch search to case-sensitive when search query contains an uppercase letter
set smartcase

" ---------- Miscellaneous Options -----------
" Disable swap files
set noswapfile

" ----------- Keybind options -----------
" Remap ESC to jk in insert mode
imap jk <Esc>
" Remap ESC to ö in insert mode
vmap ö <Esc>
" Set leader key to space
let mapleader = " "
" Clear search highlighting with space+c
nnoremap <leader>c :noh<CR>
" Find occurence before cursor with space+h
nnoremap <leader>h <Plug>(easymotion-s)
" Find occurence before cursor with space+j
nnoremap <leader>j <Plug>(easymotion-f)
" Toggle file tree with space+t
nnoremap <leader>t :NERDTreeTabsToggle<CR>
" Move between tabs with (shift+)tab
nnoremap <TAB> :tabn<CR>
nnoremap <s-TAB> :tabp<CR>
" Open new empty tab with ctrl+n
nnoremap <C-n> :tabnew<CR>
" Split window vertically with ctrl+z
nnoremap <c-z> <C-w>v
" Split window horizontally with ctrl+u
nnoremap <c-u> <C-w>s
" Swap two split windows with ctrl+m
nnoremap <c-m> <C-w><C-r>
" Close window with ctrl+o
nnoremap <C-o> :q<CR>
" Move between split windows with ctrl+direction
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ----------- Tab settings -----------
" Convert tab to spaces
set expandtab
" Set tabs to 2 spaces for yaml files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" ---------- System Clipboard ----------
" Use system clipboard
set clipboard=unnamedplus
