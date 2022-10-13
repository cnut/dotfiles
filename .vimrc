" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype plugin indent on

" ---------------
" Color
" ---------------
"set t_Co=256 " XXX This has problem on real terminal, fix it
"colorscheme inkpot
"use solarized colorscheme
"set background=dark
"colorscheme solarized
" since codedark is installed by vundle, so we need set it after vundle
"colorscheme codedark

" ---------------
" File encodings
" ---------------
set encoding=utf-8 " encoding used internally by vim
set fileencodings=utf-8,gbk "ucs-bom,ucs-4

" ---------------
" Backups
" ---------------
set backupcopy=yes
set backupdir=~/.vim/data/backup
set directory=~/.vim/data/swap

" ---------------
" UI
" ---------------
set modelines=5
set ruler " show the cursor position all the time
set nu
set wrap " wrap long text when displaying
set laststatus=2
"set cmdheight=2
"set list
" :dig for more symbols
"set listchars=tab:»·,trail:·

" ---------------
" Behaviors
" ---------------
syntax on
set shortmess=atI
set hidden " allow change to buffer while modified
set wildmenu
set cf
set history=100
set showcmd " display incomplete commands
set autowrite " Writes on make/shell commands
set wildignore+=*.o,*.obj,.git
set scrolloff=5 " Always keep 5 lines above/below the cursor
set timeoutlen=200 " Time to wait for a command (after Leader for example)

" ---------------
" Text Format
" ---------------
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set shiftwidth=4  " Tabs under smart indent
set cindent
set autoindent
set smarttab
set textwidth=80
"set colorcolumn=80
" for better formatting for multi-byte characters
set formatoptions+=tcqMm

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase " Non-case sensitive search
set incsearch
set hlsearch

" ---------------
" Visual
" ---------------
set showmatch  " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink


" ---------------
" Mouse
" ---------------
"if has('mouse')
"  set mousehide  " Hide mouse after chars typed
"  set mouse=a  " Mouse in all modes
"end


"set fdm=indent
" cpp, java specific abbreviation
"autocmd filetype c,cpp,java set shiftwidth=8 | set ts=8 | set noexpandtab
"autocmd filetype c,cpp,java set shiftwidth=4 | set ts=4 | set expandtab
autocmd filetype c,cpp,java set shiftwidth=2 | set ts=2 | set expandtab
autocmd filetype c,cpp abbreviate #i #include
autocmd filetype c,cpp abbreviate #d #define
autocmd filetype c,cpp abbreviate #e #endif
autocmd filetype ruby setlocal shiftwidth=2
autocmd filetype help setlocal nonu
autocmd filetype html setlocal shiftwidth=2
autocmd filetype python setlocal expandtab | setlocal shiftwidth=4 | setlocal tabstop=4 | setlocal softtabstop=4
"autocmd filetype tex setlocal ts=4 | setlocal sw=4 | setlocal softtabstop=4 | setlocal expandtab
autocmd filetype lua setlocal ts=2 | setlocal sw=2 | setlocal softtabstop=2 | setlocal expandtab
autocmd filetype sh setlocal ts=4 | setlocal sw=4 | setlocal softtabstop=4 | setlocal expandtab
autocmd filetype srt setlocal ts=4 | setlocal sw=4 | setlocal softtabstop=4 | setlocal expandtab
autocmd filetype vim setlocal ts=2 | setlocal sw=2 | setlocal expandtab
autocmd filetype markdown setlocal ts=2 | setlocal sw=2 | setlocal expandtab
autocmd filetype go setlocal ts=4 | setlocal sw=4 | setlocal noexpandtab
autocmd filetype go setlocal makeprg=gomake

" ----------------------------------------
" Misc.
" ----------------------------------------

" ---------------
" cscope
" ---------------
"set csprg=/usr/local/bin/cscope
set cscopequickfix=s-,d-,i-,t-,e-


" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" -----------------
" manpageview
" -----------------
let g:manpageview_winopen="hsplit="

" -----------------
" NERD commenter
" -----------------
let NERDShutUp = 1

" -----------------
" taglist
" -----------------
nnoremap <silent> <F4> :TlistToggle<CR>
let g:Tlist_Show_One_File=1
let g:Tlist_Use_Right_Window=1
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_Inc_Winwidth=1

" ---------------------------------------------
" -----------------
" vundle
" -----------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'fatih/vim-go'
" git plugin
Plugin 'tpope/vim-fugitive'
Plugin 'vim-gitgutter'

Plugin 'vim-scripts/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" color theme like vscode
Plugin 'tomasiser/vim-code-dark'
Plugin 'altercation/vim-colors-solarized'

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

" ---------------
" Color
" ---------------
"set t_Co=256
"set t_ut=
"colorscheme codedark
set background=dark
colorscheme solarized

" let vim-gitgutter show diff much fast, default value is 4 second.
set updatetime=100
