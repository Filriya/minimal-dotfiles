"-----------------------------------------------------------------------------------"
" Mappings                                                                          |
"-----------------------------------------------------------------------------------"
" コマンド        | ノーマル | 挿入 | コマンドライン | ビジュアル | 選択 | 演算待ち |
" map  / noremap  |    @     |  -   |       -        |     @      |  @   |    @     |
" nmap / nnoremap |    @     |  -   |       -        |     -      |  -   |    -     |
" vmap / vnoremap |    -     |  -   |       -        |     @      |  @   |    -     |
" omap / onoremap |    -     |  -   |       -        |     -      |  -   |    @     |
" xmap / xnoremap |    -     |  -   |       -        |     @      |  -   |    -     |
" smap / snoremap |    -     |  -   |       -        |     -      |  @   |    -     |
" map! / noremap! |    -     |  @   |       @        |     -      |  -   |    -     |
" imap / inoremap |    -     |  @   |       -        |     -      |  -   |    -     |
" cmap / cnoremap |    -     |  -   |       @        |     -      |  -   |    -     |
"-----------------------------------------------------------------------------------"

".vimrc編集ショートカット
nnoremap <silent> <Space>ev :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>sv :<C-u>source $MYVIMRC<CR>

syntax enable

set number
set ruler
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<
set incsearch
set hlsearch
set nowrap
set showmatch
set whichwrap=h,l
set nowrapscan
set ignorecase
set smartcase
set wrapscan
set hidden
set history=2000
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set helplang=en
set t_Co=256
set autoread
set noswapfile
set nobackup

set showmode 
set title
set showcmd          
set laststatus=2
set cursorline
set wrap
set list
set display=uhex
set nf=hex
set splitbelow
set splitright

autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
set backspace=start,eol,indent

set background=dark
colorscheme desert

nnoremap <Space>w  :<C-u>w<CR>
nnoremap <Space>q  :<C-u>q<CR>
nnoremap <Space>Q  :<C-u>q!<CR>

nnoremap ;  :
nnoremap :  ;
vnoremap ;  :
vnoremap :  ;
nnoremap k   gk
nnoremap j   gj
vnoremap k   gk
vnoremap j   gj
nnoremap gk  k
nnoremap gj  j
vnoremap gk  k
vnoremap gj  j

nnoremap * *zz
nnoremap n nzz
nnoremap N Nzz

function! s:search_forward_p()
  return exists('v:searchforward') ? v:searchforward : 1
endfunction

nnoremap <silent> <ESC><ESC> :noh<cr>

nnoremap ZZ <Nop>
nnoremap ZQ <Nop>

" 行末の空白文字を可視化
highlight WhitespaceEOL cterm=underline ctermbg=red guibg=red
au BufWinEnter * let w:m1 = matchadd("WhitespaceEOL", '\ +$')
au WinEnter * let w:m1 = matchadd("WhitespaceEOL", '\ +$')

" 行頭のTAB文字を可視化
highlight TabString ctermbg=red guibg=red
au BufWinEnter * let w:m2 = matchadd("TabString", '^\t+')
au WinEnter * let w:m2 = matchadd("TabString", '^\t+')

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline
au BufWinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')
au WinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')

" ファイル読み込み時の文字コード検索順
set termencoding=utf-8
set enc=utf-8
set fencs=utf-8,sjis,utf-16,ucs-bom,euc-jp,cp932,iso-2022-jp,ucs-2le,ucs-2,utf-8
set ffs=unix,mac,dos

filetype plugin indent on
