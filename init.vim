set nocompatible

call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/seoul256.vim'

Plug 'bling/vim-airline'

Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_show_hidden = 1
set wildignore+=*/.git/*,*/.idea/*,*/.DS_Store,*/env,*/__pycache__,*.pyc

Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI  = 1
let NERDTreeDirArrows  = 1
let NERDTreeShowHidden = 1

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Snippets
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['ulti-snips']

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Better Completion
"
" Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr> <S-Tab> pumvisible() ? "\<C-n>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-p>" : "\<Tab>"
" Use carriage return to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Close the preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_addtags_transform = "camelcase"

let g:go_autodetect_gopath = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_operators = 1
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1

" Tmux
Plug 'christoomey/vim-tmux-navigator'

set completeopt+=noinsert

call plug#end()

set hidden
set noswapfile
set nobackup

syntax on
set termguicolors
color seoul256
let g:seoul256_background = 233
set background=dark

set number

set expandtab
set tabstop=4 shiftwidth=4 sts=4
set autoindent nosmartindent
set listchars=tab:↹\

set backspace=eol,start,indent

set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp949,korea,iso-2022-kr
setlocal spelllang=en_us

filetype plugin on
au FileType make setl ts=4 sw=4 sts=4 noet
au FileType scala setl ts=2 sw=2 sts=2
au FileType yaml setl ts=2 sw=2 sts=2
au FileType gitcommit setl spell
au FileType proto setl ts=2 sw=2 sts=2
au BufRead,BufNewFile *.tmpl set filetype=gohtmltmpl
au BufRead,BufNewFile *.sbt set filetype=scala

set colorcolumn=80
" highlight OverLength ctermbg=red ctermfg=white guibg=#FFD9D9
" match OverLength /\%80v.*/
" autocmd WinEnter * match OverLength /\%81v.\+/

set nofoldenable
set novisualbell
set modifiable
