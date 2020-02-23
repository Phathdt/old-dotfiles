call plug#begin()
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/denite.nvim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
" Moving around easier
Plug 'easymotion/vim-easymotion'
" Improving editing experience
Plug 'vim-scripts/matchit.zip'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'haya14busa/incsearch.vim'
Plug 'tpope/vim-abolish' " For case perserved subtitue :%S
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
" LSP support
Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-denite'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'ruby-formatter/rufo-vim'
call plug#end()



filetype plugin on
filetype plugin indent on

autocmd BufEnter * :set scroll=10
syntax on

set encoding=UTF-8
set mouse=a
set incsearch
set hlsearch
set tabstop=2
set softtabstop=0
set shiftwidth=2
set noshowmode
set noswapfile
set expandtab
set smarttab
set relativenumber
set rnu
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set updatetime=100
set guifont=:h
set guifont=Hack_Nerd_Font:h11
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
set list
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set autoindent
set smartindent

let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
" Key binding
let mapleader=" "
nnoremap <Leader>f :NERDTreeFind<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>l :vsplit<CR>
nnoremap <Leader>k :split<CR>
nnoremap <Leader>/ :NERDCommenterToggle<CR>

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_global_extensions = ['coc-solargraph']
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](node_modules|build|public|lib|dist)|(\.(git|svn))$',
    \ 'file': 'tags\|tags.lock\|tags.temp',
\ }

let g:rufo_auto_formatting = 1



" Remap scrolling
nnoremap <C-k> <C-u>
nnoremap <C-j> <C-d>


" Multiple Cursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_select_all_word_key = '<C-L>'
let g:multi_cursor_start_key           = 'g<C-d>'
let g:multi_cursor_select_all_key      = 'g<C-L>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-i>'
let g:multi_cursor_quit_key            = '<Esc>'
