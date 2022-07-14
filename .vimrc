call plug#begin('~/.vim/plugged')

" file navigation
Plug 'tpope/vim-vinegar'

" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" harpoon
Plug 'ThePrimeagen/harpoon'

" snippets
"Plug 'sirver/ultisnips'

" language
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'

" git
Plug 'tpope/vim-fugitive'

" javascript
Plug 'pangloss/vim-javascript'

" typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" dart
Plug 'dart-lang/dart-vim-plugin'

" rust
Plug 'rust-lang/rust.vim'

" airline
Plug 'vim-airline/vim-airline'

" theme
Plug 'rakr/vim-one'

call plug#end()

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

syntax enable
filetype plugin indent on
colorscheme one

set background=dark
set termguicolors
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set relativenumber
set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set signcolumn=yes
set clipboard=unnamedplus
set backspace=indent,eol,start

" Makes entering ex-mode impossible
:nnoremap Q <Nop>

" easily switch panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nmap <leader>w :w<CR>

" netrw
let g:netrw_banner = 0

" telescope
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>

" harpoon
nnoremap <leader>s :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>i :lua require("harpoon.ui").nav_next()<CR>
nnoremap <leader>o :lua require("harpoon.ui").nav_prev()<CR> 
nnoremap <leader>h :lua require("harpoon.ui").toggle_quick_menu()<CR>

" emmet-vim
let g:user_emmet_mode='i'
let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

" coc
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-flutter',
  \ 'coc-yaml',
  \ 'coc-tslint-plugin',
  \ 'coc-emmet',
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-snippets',
  \ '@yaegassy/coc-tailwindcss3',
  \ ]

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

imap <tab> <Plug>(coc-snippets-expand)
let g:UltiSnipsExpandTrigger = '<Nop>'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" coc-flutter
nmap <leader>fr :CocCommand flutter.run<CR>
nmap <leader>fh :CocCommand flutter.dev.hotReload<CR>
nmap <leader>fq :CocCommand flutter.dev.quit<CR>
nmap <leader>fl :CocCommand flutter.dev.openDevLog<CR>
nmap <leader>ft :CocCommand flutter.dev.openDevToolsProfiler<CR>
" show code actions
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
" <leader>aw will show options like wrap with widget

" ultisnips
"let g:UltiSnipsSnippetDirectories=['~/.vim/my-snippets']
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-n>"
"let g:UltiSnipsEditSplit="vertical"

" dart
let g:dart_format_on_save = 1
let g:dartfmt_options = ['--fix', '--line-length 80']

" rust.vim
let g:rustfmt_autosave = 1
