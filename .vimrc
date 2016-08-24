set nocompatible
"set ch=2
set fileencodings=utf-8,gb18030
set fencs=utf-8,gb18030
set enc=utf-8
set ambiwidth=double
set display=lastline " 不显示@
set mousehide
set nu
set cindent
set backspace=indent,eol,start
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4 "vim: set ts=8 sts=4
set hlsearch
set mouse=a
set nocp
set autochdir
set nobackup
set ru
"set clipboard=unnamedplus
syntax on
syntax enable
colorscheme elflord

"{{{ yong
"function Im2en()
"   let a = system("yong-vim 1")
"endfunction
"function Im2zh()
"   let a = system("yong-vim 0")
"endfunction

"set timeoutlen=100
"autocmd! InsertLeave * call Im2en()
"autocmd! InsertEnter * call Im2zh()
"}}}

"{{{ winmanager
let g:winManagerWindowLayout = "BufExplorer|FileExplorer"
ca nt WMT
"}}}
"
"{{{ bufexplorer
let g:bufExplorerSortBy='name'
"}}}

hi Comment ctermfg=6
" I like highlighting strings inside C comments
let c_comment_strings=1
autocmd FileType c set makeprg=gcc\ -g\ -Wall\ %\ -o\ %:t:r
autocmd FileType cpp set makeprg=g++\ -g\ -std=c++11\ -Wall\ %\ -o\ %:t:r
autocmd FileType go set makeprg=go\ build\ %
au BufRead,BufNewFile *.txt setlocal ft=txt
nnoremap <F2> :set mouse=<cr>:set nonu<cr>
set pastetoggle=<F3>
nnoremap <F4> :set mouse=a<cr>:set nu<cr>
nnoremap <F5> :!./%<cr>
nnoremap <F6> :!o %<cr><cr>
nnoremap <F7> :!./%:t:r<cr>
nnoremap <F9> :w<cr>:make<cr>:cw<cr>
nnoremap <C-a> ggVG
ca qq q!
ca w!! w !sudo tee >/dev/null "%"
"map <C-c> "+y
map <C-c> :'<,'>w !wrun clip<cr><cr>
nmap k gk
nmap j gj
nmap 0 g0
nmap $ g$
vmap $ g$
vmap 0 g0
vmap k gk
vmap j gj

set statusline=
set statusline +=%1*\ %n\ %*                      "buffer number
set statusline +=%5*%{&ff}%*                      "file format
set statusline +=%3*,%{&fenc!=''?&fenc:&enc}%*    "encoding
set statusline +=%3*%{&bomb?',bom':''}%*          "bom
set statusline +=%3*%Y%*                          "file type
set statusline +=%3*%R%*                          "readonly
set statusline +=%4*\ %<%F%*                      "full path
set statusline +=%2*%m%*                          "modified flag
set statusline +=%1*%=%5l%*                       "current line
set statusline +=%2*/%L%*                         "total lines
set statusline +=%2*\ %p%%\ %*                    "lines %
set statusline +=%1*%4v\ %*                       "virtual column number
set statusline +=%2*0x%04B\ %*                    "character under cursor

set laststatus=2
ca tt tabe
map <C-j> :tabprevious<cr>
map <C-k> :tabnext<cr>
map <esc>j :next<cr>
map <esc>k :previous<cr>

"au BufRead,BufNewFile *.thrift set filetype=thrift


"{{{ vundle

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'L9'
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'othree/vim-autocomplpop'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'tsaleh/vim-supertab'
Plugin 'vim-scripts/TxtBrowser'
Plugin 'KNCheung/vim-winmanager'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"}}}
