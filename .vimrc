call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-vinegar'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
:Plug 'peitalin/vim-jsx-typescript'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'sirver/ultisnips'
"Plug 'honza/vim-snippets'

"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

let g:coc_global_extensions = [
      \ 'coc-tsserver'  
      \ ]

call plug#end()

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" netrw
let g:netrw_banner = 0

" emmet-vim
let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

" ultisnips
"let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-n>"
"let g:UltiSnipsEditSplit="vertical"

" vim-airline
let g:airline_theme='gruvbox'

" vim
set bg=dark
syntax enable
colorscheme gruvbox 
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set relativenumber
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" Makes entering ex-mode impossible
:nnoremap Q <Nop>
