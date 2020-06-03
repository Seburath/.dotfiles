"plugins to install
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'davidhalter/jedi-vim'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

call plug#end()

colorscheme onedark
let g:airline_theme = 'onedark'

set undofile
set termguicolors
set nu
syntax enable

set colorcolumn=78,60

"nerdtree conf
"maybe you want to remap CTRL to MAYUS on your OS
:nnoremap <C-t> :NERDTree<CR>
let NERDTreeQuitOnOpen = 1

"let g:pymode_python = 'python3'

"change the cursor depending the mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"

:set completeopt=longest,menuone

nnoremap <buffer> <C-r> <Esc>:w<cr>:exec '!python3' shellescape(@%, 1)<cr>
