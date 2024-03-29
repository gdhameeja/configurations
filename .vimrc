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

" one dark theme vim
Plug 'https://github.com/joshdick/onedark.vim.git'

" run goimports on save
Plug 'mattn/vim-goimports'
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

" for disabling toolbar in gvim
set guioptions -=T

" for disabling menu bar in gvim
set guioptions -=m


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
    colorscheme visualstudio
else
    " Non-GUI (terminal) colors
    colorscheme default
endif

" run goimports on every save
let g:go_fmt_command = "goimports"


" custom grep conifg
set grepprg=ag\ --vimgrep\ --ignore-dir=vendor\ --ignore-case

function! Grep(...)
        return system(join([&grepprg] + [expandcmd(join(a:000, ' '))], ' '))
endfunction

command! -nargs=+ -complete=file_in_path -bar Grep  cgetexpr Grep(<f-args>)
command! -nargs=+ -complete=file_in_path -bar LGrep lgetexpr Grep(<f-args>)

cnoreabbrev <expr> grep  (getcmdtype() ==# ':' && getcmdline() ==# 'grep')  ? 'Grep'  : 'grep'
cnoreabbrev <expr> lgrep (getcmdtype() ==# ':' && getcmdline() ==# 'lgrep') ? 'LGrep' : 'lgrep'

augroup quickfix
        autocmd!
        autocmd QuickFixCmdPost cgetexpr cwindow
        autocmd QuickFixCmdPost lgetexpr lwindow
augroup END
