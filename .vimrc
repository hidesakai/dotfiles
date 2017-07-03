colorscheme desert

" 新しい行を自動でインデント
set autoindent

" 高性能のインデント
set smartindent

" tabキーに対応するspace数
set tabstop=4

" autoindentでずれる幅
set shiftwidth=4

" tabキーでカーソルが移動する幅
set softtabstop=4

" tabの代わりにspaceを使う
set expandtab

" 高性能なexpandtab
set smarttab

" コマンド履歴数
set history=2000

" beepを消す
set vb t_vb=

" backspaceを他のエディタと同じように扱う
set backspace=indent,eol,start

" 行頭・行末からカーソルで上下に移動できるように
set whichwrap=b,s,h,l,<,>,[,]

" 入力中のコマンドを表示
set showcmd

" モードの表示
set showmode

" ハイライト検索
set hlsearch
nohlsearch

" 大文字小文字を無視
set ignorecase

" インクリメンタル検索
set incsearch

" 大文字で検索されたら、大文字小文字を区別
set smartcase

" vim を終了してもundoの記録を残す
set undofile undodir=~/.vimundo

" 色数
set t_co=256

" 現在行の色を変える
set cursorline
let g:cursorline_flg=1
let g:cursorcolumn_flg=0

" ステータス行を常に表示
set laststatus=2

" 不可侵文字を可視化
set list
set listchars=tab:>\ "

" 行番号を表示 (相対)
" set number relativenumber

" 最低でも上下に表示する行数
set scrolloff=5

" 自動折り返ししない
set textwidth=0

" タブページのラベルを常に表示
set showtabline=2

" 長い行で@表示させない
set display=lastline

" ヘルプの日本語化
set helplang=ja,en

" 行頭移動 
nnoremap <space>h  ^

" 行末移動
nnoremap <space>l  $

" 先頭行移動
nnoremap <space>k  gg

" 最終行移動
nnoremap <space>j  g

nnoremap <space>/  *<c-o>
nnoremap g<space>/ g*<c-o>

" Note: skip initialization for vim-tiny or vim-small.
if 0 | endif

filetype off

if has('vim_starting')
  if &compatible
    set nocompatible               " be improved
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
  \ }
NeoBundle 'vimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 't9md/vim-textmanip'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'vim-colors-solarized'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'fatih/vim-go'
NeoBundle 'ryym/vim-riot'

call neobundle#end()

filetype plugin indent on
filetype indent on
syntax enable

NeoBundleCheck
