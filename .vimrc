set runtimepath^=~/.vim/bundle/ctrlp.vim
set guifont=Monaco\ 11
set ignorecase
set background=dark
colo solarized
set hlsearch

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
