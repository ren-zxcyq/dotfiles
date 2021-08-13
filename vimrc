" RELOAD .vimrc from inside vim upon any change	-	:source ~/.vimrc

" Set encoding
set fileencoding=utf-8	" file that is written
set encoding=utf-8	" file that is shown

" Set line-numbers
set nu
set relativenumber


" Set tab length
" @TODO experiment with -> set retab !
set tabstop=4	" Normally its 8
"set expandtab	" https://stackoverflow.com/questions/48735671/use-vim-retab-to-solve-taberror-inconsistent-use-of-tabs-and-spaces-in-indentat
set noexpandtab
" Set SHIFT > length

" set expandtab " use spaces instead of tabs
set shiftwidth=4 " Number of spaces for...
" set softtabstop=4 " each indent level
" set textwidth=0 " At which column to wrap to the next line when typing.
" set colorcolumn=0 " At which column to show the margin line.
set ignorecase " Do case insensitive matching...
" set smartcase " ...except when using capital letters
set showcmd        " display incomplete commands
" set wildmenu " Better commandline tab completion
"set incsearch " do incremental searching
set history=9999
set virtualedit=block " so we can go one character past the last in normal mode.



" Create $HOME/.vim/SUBDIRS & set backup, swap and undo files to be created there.
let s:VIMROOT = $HOME."/.vim"
" Create necessary folders if they don't already exist.
if exists("*mkdir")
    silent! call mkdir(s:VIMROOT, "p")
    silent! call mkdir(s:VIMROOT."/bundle", "p")
    silent! call mkdir(s:VIMROOT."/swap", "p")
    silent! call mkdir(s:VIMROOT."/undo", "p")
    silent! call mkdir(s:VIMROOT."/backup", "p")
else
    echo "Error: Create the directories ".s:VIMROOT."/, ".s:VIMROOT."/bundle/, ".s:VIMROOT."/undo/, ".s:VIMROOT."/backup/, and ".s:VIMROOT."/swap/ first."
    exit
endif

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set noswapfile
set nobackup



" Set color scheme
set term=xterm-256color
"set t_Co=256
set termguicolors
"set background=dark termguicolors "cursorline
syntax enable
colorscheme monokai
"set t_Co=256                         " Enable 256 colors
"set termguicolors                    " Enable GUI colors for the terminal to get truecolor
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
