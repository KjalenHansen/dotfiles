             
filetype plugin indent on    " required
filetype indent on
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.
" **in vim files
" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
colorscheme elflord
" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark
set wildmenu
set autoindent
set smartindent
set titleold=
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set cursorline
"This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set undolevels=1000
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
nnoremap gV `[v`]
set hlsearch
nnoremap <leader>u :GundoToggle<CR>
let mapleader = ","
set foldenable
set foldlevelstart=10
set foldnestmax=10
:nnoremap <CR> G
nnoremap <space> za
inoremap jk <esc>
set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=		" Enable mouse usage (all modes)

set modelines=1
"vim:foldmethod=marker:foldlevel=0
"Source a global configuration file if available
let &titlestring = $USER . "@" . hostname() . " " . expand("%:p")
if &term == "screen"
    set t_ts=^[k
    set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
    set title
endif

if filereadable("~/vimrc/")
  source /etc/vim/vimrc.local
endif

