scriptencoding utf-8


"" .........................................................
" # Plugins
" .........................................................

call plug#begin('~/.local/share/nvim/plugged')


" ## Search pieces of code

Plug '~/searchcode' " search pieces of code in searchcode.com


" ## General Utilities

Plug 'mhinz/vim-startify'  " Show a start screen
Plug 'vim-airline/vim-airline'  " Status bar & tabline


" ## Editor Utilities

Plug 'yggdroot/indentline'  " Show indentation lines
Plug 'tpope/vim-surround'  " Surround easily text with quotes, parentheses, etc.
Plug 'scrooloose/nerdcommenter'  " Comment lines easily
Plug 'jiangmiao/auto-pairs'  " Autopair quotes, parentheses, etc.
Plug 'tpope/vim-unimpaired'  " Handy bracket mappings
Plug 'tpope/vim-repeat'  " Extend '.' for repeat scripts actions
Plug 'tpope/vim-eunuch'  " Command line utilities
Plug 'mhinz/vim-sayonara', {'on': 'Sayonara'}  " Close/hide/delete current buffer
Plug 'mhinz/vim-grepper'
"Plug 'nvim-treesitter/nvim-treesitter'  " treesitter integration: highlight, text-objects, etc


" ## Navigation

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'  " General fuzzy finder
Plug '~/fzf-checkout.vim'
Plug 'stsewd/gx-extended.vim'

Plug 'tpope/vim-fugitive'

Plug 'ludovicchabant/vim-gutentags'  " Automated tag file generation
Plug 'liuchengxu/vista.vim'


" ## Text Objects & Motions

Plug 'chaoren/vim-wordmotion'  " Wordmotion text-object
Plug 'wellle/targets.vim'  " Operator pending mappings ()[]{}
Plug 'justinmk/vim-sneak'  " s


" ## Git Integration

Plug 'airblade/vim-gitgutter'  " Show git diff on the numbers column
Plug 'tpope/vim-fugitive'  " Git wrapper
Plug 'lambdalisue/gina.vim'  " Asynchronously Git wrapper


" ## Autocompletion

Plug 'neoclide/coc.nvim', {'branch': 'release'}


" ## Themes & Color Schemes
Plug 'rakr/vim-one'
"Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline-themes'  " Themes for airline
Plug 'ryanoasis/vim-devicons'  " Show icons on filetypes


" ## Languages

Plug 'sheerun/vim-polyglot'

" ### HTML

Plug 'alvan/vim-closetag'  " Closes tag after '>'

" ### Python

"Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}

" ### ReStructuredText

"Plug '~/sphinx.nvim', {'do': ':UpdateRemotePlugins'}

" ### Vim

Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'junegunn/vader.vim'

call plug#end()

inoremap <M-H> <C-O>h


" ## Theme & Colorscheme

set termguicolors  " Active true colors on terminal
colorscheme one
set background=dark
let g:airline_theme = 'one'
hi Normal guibg=NONE ctermbg=NONE


"  # Mappings

let g:mapleader = "\<space>"

" Normal mode
inoremap <C-e> <Esc>
nnoremap <C-e> <Esc>
tnoremap <C-e> <Esc>

" Write command
nnoremap <C-f> :!
inoremap <C-f> :!
tnoremap <C-f> :!


" Execute current file with python3
nnoremap <buffer> <leader>p <Esc>:w<cr>:exec 'terminal python3' shellescape(@%, 1)<cr>
"inoremap <buffer> <leader>p <Esc>:w<cr>:exec 'terminal python3' shellescape(@%, 1)<cr>
nnoremap <buffer> <leader>c <Esc>:bd
inoremap <buffer> <leader>c <Esc>:bd

" Save
nnoremap <leader>w :w<CR>

" Refresh
nnoremap <leader>e :e! <bar> TSBufEnable highlight<CR>

" Edit init.vim
nnoremap <leader>i :e $MYVIMRC<CR>

" Edit zshrc
nnoremap <leader>u :e ~/.zshrc<Enter>

" Clear highlight
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" Copy/cut/paste to/from clipboard
noremap <leader>y "+y
noremap <leader>d "+d
noremap <leader>p "+p
noremap <leader>P "+P

" Scroll
nnoremap <up> <c-y>
nnoremap <down> <c-e>
nnoremap <right> zl
nnoremap <left> zh

" Search
nnoremap * *N
nnoremap # #N

" Keep undo
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>

" Exit terminal mode with escape
tnoremap <Esc> <C-\><C-n>

" Send escape to terminal
tnoremap <A-[> <Esc>

" Copy current path with line number
nnoremap <silent> <leader>o
      \ :let @" = expand('%:p') . ':' . line('.') <bar> echo @"<CR>

" ## Windows
nnoremap <M-l> <C-W>l"
nnoremap <M-h> <C-W>h"
nnoremap <M-j> <C-W>j"
nnoremap <M-k> <C-W>k"

inoremap <M-l> <Esc> <C-W>l"
inoremap <M-h> <Esc> <C-W>h"
inoremap <M-j> <Esc> <C-W>j"
inoremap <M-k> <Esc> <C-W>k"

tnoremap <M-l> <Esc> <C-W>l"
tnoremap <M-h> <Esc> <C-W>h"
tnoremap <M-j> <Esc> <C-W>j"
tnoremap <M-k> <Esc> <C-W>k"


nnoremap <C-t> :terminal <Enter>
inoremap <C-t> <Esc> :terminal <Enter>

" ## Airline

" Mappings to change buffer
nmap <M-u> <Plug>AirlineSelectPrevTab
nmap <M-i> <Plug>AirlineSelectNextTab
nmap <M-1> <Esc> <Plug>AirlineSelectTab1
nmap <M-2> <Esc> <Plug>AirlineSelectTab2
nmap <M-3> <Esc> <Plug>AirlineSelectTab3
nmap <M-4> <Esc> <Plug>AirlineSelectTab4
nmap <M-5> <Esc> <Plug>AirlineSelectTab5

imap <M-u> <Esc> <Plug>AirlineSelectPrevTab
imap <M-i> <Esc> <Plug>AirlineSelectNextTab
imap <M-1> <Esc> <Plug>AirlineSelectTab1
imap <M-2> <Esc> <Plug>AirlineSelectTab2
imap <M-3> <Esc> <Plug>AirlineSelectTab3
imap <M-4> <Esc> <Plug>AirlineSelectTab4
imap <M-5> <Esc> <Plug>AirlineSelectTab5

tmap <M-u> <Esc> <Plug>AirlineSelectPrevTab
tmap <M-i> <Esc> <Plug>AirlineSelectNextTab
tmap <M-1> <Esc> <Plug>AirlineSelectTab1
tmap <M-2> <Esc> <Plug>AirlineSelectTab2
tmap <M-3> <Esc> <Plug>AirlineSelectTab3
tmap <M-4> <Esc> <Plug>AirlineSelectTab4
tmap <M-5> <Esc> <Plug>AirlineSelectTab5

let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1  " Show open buffers/tabs
let g:airline#extensions#tabline#fnamemod = ':t'  " Show just the filename
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#parts#ffenc#skip_expected_string = 'utf-8[unix]'
let g:airline#extensions#virtualenv#enabled = 0  " Don't show current virtualenv
let g:airline#extensions#tabline#ignore_bufadd_pat = '!|defx|gundo|nerd_tree|startify|undotree'
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#coc#enabled = 0


" ..........................................................
" # Settings
" ..........................................................

" ## UI

set title
set mouse=a
set updatetime=100
set noshowmode
set pumblend=30
set noswapfile

set colorcolumn=80  " Set & show limit column
set scrolloff=3  " Display at least 3 lines around you cursor

set diffopt+=vertical  " Always use vertical diffs

set hidden
set spelllang=en,es


" ## Lines

set nowrap  " No wrap lines (display long lines)
set number  " Display line numbers
set relativenumber  " Show relative line numbers
set cursorline  " Highlight current line
set nojoinspaces  " Always use one space to join line


" ## Indentation

set tabstop=4
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab


" ## Search & replace

set ignorecase
set smartcase
set gdefault
set inccommand=nosplit " Show replace live preview



" ## Python providers

let g:loaded_python_provider = 0
let g:python3_host_prog = $NVIM_PYTHON_HOST

" .........................................................
"  # Custom Commands and Autocommands
" .........................................................

" Remove trailing white spaces
command! -range=% RemoveTrailing <line1>,<line2>s/\s\+$//e

" Save current view settings on a per-window, per-buffer basis.
" https://vim.fandom.com/wiki/Avoid_scrolling_when_switch_buffers
function! AutoSaveWinView()
  if !exists("w:SavedBufView")
    let w:SavedBufView = {}
  endif
  let w:SavedBufView[bufnr("%")] = winsaveview()
endfunction

" Restore current view settings.
function! AutoRestoreWinView()
  let buf = bufnr("%")
  if exists("w:SavedBufView") && has_key(w:SavedBufView, buf)
    let v = winsaveview()
    let atStartOfFile = v.lnum == 1 && v.col == 0
    if atStartOfFile && !&diff
      call winrestview(w:SavedBufView[buf])
    endif
    unlet w:SavedBufView[buf]
  endif
endfunction

autocmd BufLeave * call AutoSaveWinView()
autocmd BufEnter * call AutoRestoreWinView()


augroup CustomTerminalAutoCommand
  autocmd!
  " - Start on insert mode
  autocmd TermOpen * startinsert
  " - Excecute previous command with <CR>
  autocmd TermOpen * noremap <buffer> <CR> a<C-p><CR><C-\><C-n>
  " - Don't show line numbers
  autocmd TermOpen * setlocal norelativenumber nonumber
augroup end


augroup CustomAutoCommand
  autocmd!
  " - Highligh on yank
  autocmd TextYankPost *
        \ silent! lua require'vim.highlight'.on_yank {timeout=250}
augroup end


" ..........................................................
" # Plugins Settings
" ..........................................................

" ## coc.nvim

let g:coc_global_extensions = [
    \ 'coc-word',
    \ 'coc-syntax',
    \ 'coc-dictionary',
    \ 'coc-json',
    \ 'coc-yaml',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-python',
    \ 'coc-rls',
    \ 'coc-tsserver',
    \ 'coc-tag',
    \ 'coc-clangd',
    \]

" Show documentation using K
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if index(['vim', 'help'], &filetype) >= 0
    normal! K
  else
    call CocAction('doHover')
  endif
endfunction

augroup CocAutocomands
  autocmd!
  " Show function signature while completing args
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  autocmd FileType
        \ json,js,html,c,cpp,h,hh
        \ setlocal formatexpr=CocAction('formatSelected')
augroup END

" Mappings
"set tagfunc=CocTagFunc
nmap <silent> gr <Plug>(coc-rename)
nmap <silent> qf <Plug>(coc-fix-current)
nnoremap <silent> <space>l :CocCommand<CR>

imap <silent> <C-j> <Plug>(coc-snippets-expand-jump)
nmap <silent> <C-w><leader> <Plug>(coc-float-jump)
inoremap <silent><expr> <C-n> coc#refresh()

" Move to prev/next error
nmap <silent> <C-k> <Plug>(coc-diagnostic-prev)
nmap <silent> <C-j> <Plug>(coc-diagnostic-next)


" ## Vista

let g:vista_default_executive = 'coc'
let g:vista_sidebar_width = 40
let g:vista_echo_cursor = 0

nnoremap <silent> <leader>m :Vista!!<CR>
nnoremap <silent> <leader>M :Vista ctags<CR>

" ## Wordmotion

" Disable uppercase mappings
let g:wordmotion_mappings = {
      \ 'W': '',
      \ 'E': '',
      \ 'B': '',
      \ 'gE': '',
      \ 'aW': '',
      \ 'iW': '',
      \ '<C-R><C-A>': '',
      \}


" ## Gutentags

" Activate only on projects that have a ctags configuration file
let g:gutentags_project_root = ['.ctags']
let g:gutentags_add_default_project_roots = 0

" Filter for files under vcs
let g:gutentags_file_list_command = {
      \ 'markers': { '.git': 'git ls-files | grep -E  "(.*\.c$)|(.*\.h$)|(.*\.cc$)|(.*\.hh)|(.*\.py$)"' },
      \ }


" ## FZF

let g:fzf_command_prefix = 'Fz'
let g:fzf_commands_expect = 'alt-enter'
let g:fzf_history_dir = '~/.local/share/fzf-history'

nnoremap <silent> <leader>f :call <SID>open_fzf()<CR>

function! s:open_fzf()
  let l:choices = [
        \ ['[f]iles', 'Files'], ['[o]pen buffers', 'Buffers'], ['[l]ines', 'BLines'], ['[r]g', 'Rg'],
        \ ['[c]ommands', 'Commands'], ['git [s]tatus', 'GFiles?'], ['[g]it checkout', 'GCheckout'],
        \ ['[h]istory', 'History'], ['history[:]', 'History:'], ['history[/]', 'History/'],
        \]
  let l:options = map(copy(l:choices), 'v:val[0]')
  echo 'Fzf ' . join(l:options, ', ') . ': '
  let l:key = nr2char(getchar())
  let l:match = match(l:options, '\[' . l:key . '\]')
  redraw | echo
  if l:match >= 0
    execute ':' . g:fzf_command_prefix . l:choices[l:match][1]
  endif
endfunction

" Open fzf in a floating window
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.5 } }


" ## Indentline

let g:indentLine_setColors = 0

let g:indentLine_bufTypeExclude = ['terminal']
let g:indentLine_fileTypeExclude = [
      \ 'text', 'help', 'man', 'rst',
      \ 'vader', 'markdown', 'startify', 'tsplayground',
      \]

" Deactivate on sneak
augroup indentLineAu
  autocmd!
  autocmd User SneakEnter IndentLinesDisable
  autocmd User SneakLeave call <SID>indentline_enable()
augroup END

function! s:indentline_enable()
  if (index(g:indentLine_fileTypeExclude, &filetype) < 0 &&
      \ index(g:indentLine_bufTypeExclude, &buftype) < 0)
    silent IndentLinesEnable
  endif
endfunction


" ## Closetag

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*tmpl'


" ## Sneak

let g:sneak#label = 1  " Show labels
let g:sneak#use_ic_scs = 1  " Case insensitive

" Always show labels
nmap s <Plug>SneakLabel_s
nmap S <Plug>SneakLabel_S


" ## Gina

noremap <leader>go :Gina browse :<CR>
nnoremap <leader>gO :Gina browse<CR>
nnoremap <leader>gp :Gina push<CR>
nnoremap <leader>gP :Gina pull<CR>


" ## Fugitive

nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gu :Gread<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>


" ## Sayonara

nnoremap <silent> <leader>q :Sayonara<CR>
nnoremap <silent> <leader>Q :Sayonara!<CR>

tnoremap <silent> <leader>q :Sayonara<CR>
inoremap <silent> <leader>q <Esc>:Sayonara<CR>

" ## Startify

let g:startify_session_persistence = 1  " Autosave sessions
let g:startify_change_to_vcs_root = 1  " Change cwd to root of git project

let g:startify_custom_header = startify#pad([
      \ '>>> Happy coding @' . $USER . '!',
      \])

let g:startify_commands = [
      \ {'u': ':PlugUpgrade | PlugUpdate'},
      \]

let g:startify_lists = [
      \ {'type': 'sessions'},
      \ {'type': 'commands'},
      \]



" Don't highlight errors
highlight link TSError Normal
highlight link TSDefinition TSDefinitionUsage

"luafile $HOME/.config/nvim/init.lua

" ## Luatree

nnoremap <silent> <leader>n :LuaTreeToggle<CR>
nnoremap <silent> <leader>N :LuaTreeFindFile<CR>:LuaTreeOpen<CR>

let g:lua_tree_ignore = [
      \ '.git', 'node_modules', '.cache', '\.pyc$', '__pycache__', 'tags',
      \]
let g:lua_tree_icons = {
      \ 'default': '  ',
      \ 'folder': {'default': '', 'open': ''},
      \}

highlight link LuaTreeFolderName NERDTreeDir
highlight link LuaTreeSpecialFile Normal
