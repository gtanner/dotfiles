execute pathogen#infect()
syntax on
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in git anyway...
set nobackup
set nowb
set noswapfile

set sw=2 sts=2 ts=2

set hidden
set number
set title
set wrap!
syntax on
set nofoldenable

set hlsearch

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


map <C-n> :NERDTreeToggle<CR>

let g:javascript_plugin_jsdoc = 1

" let g:airline_section_b = '%{strftime("%H:%M")}'

let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let g:syntastic_javascript_eslint_exec = 'node_modules/.bin/eslint'
let g:syntastic_vue_eslint_exec = 'node_modules/.bin/eslint'
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['eslint']
let g:syntastic_ts_checkers = ['eslint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"colorscheme monokai-chris
colorscheme C64
"colorscheme delek

" workaround for vue syntax highlighting stop working
autocmd FileType vue syntax sync fromstart

" Ignore some folders for ctrlp
set wildignore+=*/node_modules/*,*.so,*.swp,*.zip     " MacOSX/Linux

" Tab autocomplete settings
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
