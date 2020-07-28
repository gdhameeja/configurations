set runtimepath^=~/.vim/bundle/ctrlp.vim
set guifont=Monaco\ 11
set ignorecase
colorscheme solarized
set background=dark
set hlsearch

set number relativenumber
set nu rnu

set laststatus=2

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/rking/ag.vim.git' 
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


nnoremap <silent> <C-y> :CtrlPBuffer<CR>

" for disabling toolbar in gvim

set guioptions -=T


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
    colorscheme solarized
else
    " Non-GUI (terminal) colors
    colorscheme elflord
endif
