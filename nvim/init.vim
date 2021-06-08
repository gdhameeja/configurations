set runtimepath^=~/.vim/bundle/ctrlp.vim
set guifont=Monaco\ 10
set ignorecase
set background=dark
set hlsearch
set incsearch

set number relativenumber
set nu rnu

set laststatus=2

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/rking/ag.vim.git' 

" go dev environment
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" autocompletion conquer of completion
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}


" one dark theme vim
Plug 'https://github.com/joshdick/onedark.vim.git'

" run goimports on save
Plug 'mattn/vim-goimports'

" colorschemes
Plug 'morhetz/gruvbox'
Plug 'overcache/NeoSolarized'
Plug 'rakr/vim-one'

call plug#end()


if executable("ag")
set grepprg=ag\ --ignore-case\ --no-color\ -G\ .py
set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

augroup quickfix
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l* lwindow
augroup END

set exrc
set secure

" open list of already open buffers
nnoremap <silent> <C-y> :CtrlPBuffer<CR>


" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>


" different colorscheme for gvim
if has('gui_running')
    " GUI colors
    colorscheme monokai
else
    " Non-GUI (terminal) colors
    set termguicolors
    colorscheme onedark
    set background=dark
endif

" run goimports on every save
let g:go_fmt_command = "goimports"





" -------------------------------------------------------------------------------------------------
" coc.nvim default settings
" -------------------------------------------------------------------------------------------------

" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
