" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Pathogen
execute pathogen#infect()

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

set nocompatible              " be iMproved, required
filetype off                  " required

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
  "set background=dark
  set t_Co=256
  let base16colorspace=256  " Access colors present in 256 colorspace
  colorscheme onehalfdark
endif
" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
" set background=dark

" autocomplete stuff
set wildmode=longest:full,list:full

" turns off vim sessions default:
set sessionoptions-=options

" Show extra whitespace
set list
set listchars=tab:>-,trail:.,precedes:<,extends:>

" tab stuff maggle
set tabstop=2
set softtabstop=2
set shiftwidth=2

" limit text to 80 characters per line
set textwidth=79

" SPLIT STUFF
set splitright
set splitbelow
" shortcuts to change views in split mode
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
  autocmd BufReadPost fugitive://* set bufhidden=delete
endif

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za


" automatically source vimrc file once it is saved
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" set relative numbering in vim
set relativenumber
" toggles current line number between 0 and actual line number
nmap <C-N><C-N> :set invnumber<CR>

nnoremap <C-Up> :m-2<CR>
nnoremap <C-Down> :m+<CR>
inoremap <C-Up> <Esc>:m-2<CR>
inoremap <C-Down> <Esc>:m+<CR>

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif

