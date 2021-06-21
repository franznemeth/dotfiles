syntax on
set nocompatible
set autochdir
filetype plugin indent on "file type detection
set number "show line numbers
set ruler
set history=700 "vim has to remember 700 lines
set autoread "autoread for files changed outside vim
set cmdheight=2 "height of cmdline
set noerrorbells
colorscheme lucario
"set background=dark

" 2-space tabs and indents
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent  "automaticly tabbing in for coding
set smartindent
set expandtab
set hlsearch "highlighting searchresults
set incsearch "incremental search
set nowrap "no wrapping lines
set sidescroll=5

" convinient saving
map <F2> :w<CR>

"remove the Windows ^M when encoding gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

set backspace=indent,eol,start

set wildmenu
set wcm=<Tab>
menu Encoding.koi8-r :e ++enc=8bit-koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=8bit-cp1251<CR>
menu Encoding.ibm-866 :e ++enc=8bit-ibm866<CR>
menu Encoding.utf-8 :e ++enc=2byte-utf-8 <CR>
menu Encoding.ucs-2le :e ++enc=ucs-2le<CR>
map <F9> :emenu Encoding.<TAB>

nmap <F7> <C-W>k<C-W>_
imap <F7> <Esc><C-W>k<C-W>_a
nmap <F8> <C-W>j<C-W>_
imap <F8> <Esc><C-W>j<C-W>_a

