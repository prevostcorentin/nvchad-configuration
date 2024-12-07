""" Leader keys {{{
let mapleader=" "
let maplocalleader=";"
""" }}}

source $HOME/.config/nvim/init.lua.vim

""" Options {{{
""" Text seach {{{
set showmatch
set ignorecase
set hlsearch
set incsearch
""" }}}
""" Indentation {{{
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
""" }}}
""" User interface {{{
set laststatus=3
set mouse=a
set number
set relativenumber
set cursorline
set cc="120"
""" set ttyfast
""" }}}
""" Clipboard {{{
set clipboard+="unnamedplus"
""" }}}
""" Auto-completion {{{
set wildmode="longest,list"
""" }}}
""" Vim files location {{{
set nobackup
set directory=/home/hrn/.cache/nvim,/tmp,.
""" }}}
""" }}}

""" Mappings {{{
""" Normal mode {{{
nnoremap ! :w<cr>
nnoremap L $
nnoremap H 0
nnoremap I 0i
nnoremap A $a
nnoremap <C-s>l :rightbelow vnew<cr>
nnoremap <C-s>h :leftabove vnew<cr>
nnoremap <C-s>j :rightbelow new<cr>
nnoremap <C-s>k :leftabove new<cr>
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <leader>t :call SpawnTerminal()<cr>
""" }}}
""" Insert mode {{{
inoremap jk <ESC>
inoremap Jk <ESC>
inoremap jK <ESC>
inoremap JK <ESC>
inoremap <C-l> <C-w>l
inoremap <C-h> <C-w>h
inoremap <C-k> <C-w>k
inoremap <C-j> <C-w>j
inoremap <C-s>l <esc>:rightbelow vnew<cr>
inoremap <C-s>h <esc>:leftabove vnew<cr>
inoremap <C-s>j <esc>:rightbelow new<cr>
inoremap <C-s>k <esc>:leftabove new<cr>
inoremap <C-V> <esc>"+p
""" }}}
""" Visual mode {{{
vnoremap <C-c> "+y
vnoremap <C-v> "+p
""" }}}
""" Terminal mode {{{
tnoremap <C-l> <C-\><C-O><C-w>l
tnoremap <C-h> <C-\><C-O><C-w>h
tnoremap <C-j> <C-\><C-O><C-w>h
tnoremap <C-k> <C-\><C-O><C-w>k
tnoremap jk <C-\><C-N>
tnoremap jK <C-\><C-N>
tnoremap Jk <C-\><C-N>
tnoremap JK <C-\><C-N>
tnoremap <C-s>l <C-\><C-O>:rightbelow vnew<cr>
tnoremap <C-s>h <C-\><C-O>:leftabove vnew<cr>
tnoremap <C-s>j <C-\><C-O>:rightbelow new<cr>
tnoremap <C-s>k <C-\><C-O>:leftabove new<cr>
tnoremap <C-v> <C-\><C-O>"+p 
""" }}}
""" Telescope {{{
""" Documentation {{{
nnoremap <leader>hm :Telescope man_pages<cr>
""" }}}
""" Search in files/buffers {{{
nnoremap <leader>ff :Telescope find_files theme=dropdown<cr>
nnoremap <leader>fW :Telescope live_grep theme=dropdown<cr>
nnoremap <leader>fw :Telescope current_buffer_fuzzy_find theme=dropdown<cr>
nnoremap <leader>b :Telescope buffers theme=ivy<cr>
""" }}}
""" LSP {{{
nnoremap <leader>lr :Telescope lsp_references theme=cursor<cr>
nnoremap <leader>ld :Telescope diagnostics theme=ivy<cr>
nnoremap <leader>ls :Telescope lsp_document_symbols theme=dropdown<cr>
nnoremap <leader>li :Telescope lsp_incoming_calls theme=cursor<cr>
nnoremap <leader>lo :Telescope lsp_outgoing_calls theme=cursor<cr>
""" }}}
""" Git {{{
nnoremap <leader>gb :Telescope git_branches theme=ivy<cr>
nnoremap <leader>gc :Telescope git_commits theme=ivy<cr>
nnoremap <leader>gs :Telescope git_status theme=ivy<cr>
nnoremap <leader>gf :Telescope git_files theme=ivy<cr>
""" }}}
""" }}}
""" Auto-commands {{{
""" Open terminal launch {{{
autocmd VimEnter * ++nested call SpawnTerminal()
function SpawnTerminal()
    rightbelow split term://zsh
    setlocal nonumber
    setlocal norelativenumber
    7winc -
endfunction
"" }}}
""" }}}

source $HOME/.config/nvim/theme.vim
