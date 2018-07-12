" Set file encoding
set encoding=utf8
" Use iTerm colours
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" No special per file vim override configs
set nomodeline
" Stop word wrapping
set nowrap
	" Except on Markdown
	autocmd FileType markdown setlocal wrap
" Adjust system undo levels
set undolevels=200
" Use system clipboard
set clipboard=unnamed
" Set tab witdth and convert to spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" Don't lef vim hide characters or make loud dings
set conceallevel=1
set noerrorbells
" Number gutter
set number
" Use search highlighting
set hlsearch
" Space above/beside cursor from screen edges
set scrolloff=1
set sidescrolloff=5

" Remap leader to space
let mapleader="\<SPACE>"

" Return to last file opened by hitting SPACE SPACE
nmap <Leader><Leader> <c-^>

" Swich to the next buffer - TAB
nnoremap <Tab> :bnext!<CR>

" Swith to the previous buffer - SHIFT TAB
nnoremap <S-Tab> :brev!<CR><Paste>

call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'Shougo/unite.vim'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'Shougo/vimfiler.vim', { 'on': 'VimFiler' }
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'wavded/vim-stylus'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } 
Plug 'haya14busa/incsearch.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'vimwiki/vimwiki'
Plug 'mustache/vim-mustache-handlebars'
Plug 'justinmk/vim-sneak'
Plug 'mileszs/ack.vim'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

colorscheme gruvbox
set background=dark

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_char = "⟩"

" AirLine
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='luna'
set laststatus=2

" CtrlP - SPACE P opens Fuzzy Finder
nnoremap <Leader>p :CtrlP<CR>

" CtrlP - Ignore node_modules, DS_Store and git
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" vimFiler - SPACE ` opens file tree
map ` :VimFiler -explorer<CR>

" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Vim Sneak
let g:sneak#s_next = 1
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F

" IncSearch
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

