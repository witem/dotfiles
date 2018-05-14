"
" WebVim Configuration : global settings
"

" wrap end of line
set wrap

" show line numbers
set number

" syntax highlighting
syntax on
set background=dark
set t_Co=256
colorscheme PaperColor


"indent
set smartindent
set autoindent
set copyindent
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set smarttab
set expandtab

"search
set showmatch
set smartcase

set hlsearch
set incsearch


" copy/paste
"set paste
set clipboard=unnamedplus

" folding manual
set foldmethod=manual

" mouse
set mouse=a

" spell check, to be activated manually
set spelllang=en_us
set nospell

" Custom
colorscheme gruvbox

set t_Co=256  " vim-monokai now only support 256 colours in terminal.
set backupcopy=yes

" draw vertical max length line
set colorcolumn=120
" trun on relative number mode
set relativenumber

if &term =~ '^screen'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

