""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
" Vim plugin manager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Git wrapper
Plugin 'tpope/vim-fugitive'
" Full path fuzzy file, buffer, mru, tag, ... finder
Plugin 'ctrlpvim/ctrlp.vim'
" Color scheme
" Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
" Rainbow colors for parenthesis Plugin 'kien/rainbow_parentheses.vim'
Plugin 'kien/rainbow_parentheses.vim'
" Directory tree
Plugin 'scrooloose/nerdtree'
" Syntax checking
" Requires installing pylint, flake8, or pyflakes
" Install gjslint for JavaScript
" :SyntasticCheck
" :Errors to open error window
" :SyntasticInfo for help
Plugin 'scrooloose/syntastic'
" Comment code
Plugin 'scrooloose/nerdcommenter'
" autopep8 utility
" Requires installing autopep8
" <F8> to run autopep8 on current python file
Plugin 'tell-k/vim-autopep8'
" more javascript syntax
Plugin 'pangloss/vim-javascript'
" indent guides
Plugin 'nathanaelkane/vim-indent-guides'
" Auto-add closing characters
Plugin 'Raimondi/delimitMate'
" Status/tabline
Plugin 'bling/vim-airline'
" airline themes
Plugin 'vim-airline/vim-airline-themes'
" Git gutter
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" Adds support for file type-specific settings in ~/.vim/after/ftplugin/
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NORMAL CONFIG
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable color syntax highlighting
syntax on
" Make vim use 256 colors
set t_Co=256
" Set colorscheme
set background=dark
" colorscheme zenburn
colorscheme solarized
" It hides buffers instead of closing them. This means that you can have
" unwritten changes to a file and open a new file using :e, without being
" forced to write or undo your changes first. Also, undo buffers and marks are
" preserved while the buffer is open.
set hidden
" Status line shows possible completions of command line commands, file names,
" etc. Allows cycling forward and backward in the list
set wildmenu
" Show input of an incomplete command
set showcmd
" Required for smartcase
set ignorecase
" Search case-insensitive when search is all lower-case. Otherwise search is
" case-sensitive
set smartcase
set backspace=indent,eol,start
set autoindent
" Prevent cursor from changing the current column when jumping to other lines
" within the window
set nostartofline
" Shows cursor's line and column number and percentage within the buffer
set ruler
" Always display a status line at the bottom of the window
set laststatus=2
set confirm
set t_vb=
set cmdheight=2
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set number
set noscb
" Show column ruler
set colorcolumn=80
map Y y$
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_
autocmd VimResized * :wincmd =

let mapleader = ","
nnoremap <F2> :set invnumber<CR>
" Remove trailing whitespace before saving files
autocmd BufWritePre * :%s/\s\+$//e

" Working with tabs
" Only show filename in tab
set guitablabel=%t
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :vsp %%
map <leader>s :sp %%
map <leader>h :sp %%

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use ',,' to invoke CtrlP fuzzy file search
nnoremap <silent> <leader><leader> :ClearCtrlPCache<cr>\|:CtrlP<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RAINBOW PARENTHESES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16

let g:rbpt_loadcmd_toggle = 0

" Always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Recommended settings:
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" My own settings:
" Use pylint
let g:syntastic_python_checkers = ['pylint']
" Use google's gjslint
let g:syntastic_javascript_checkers = ['gjslint']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle NERDTree with <C-n>
map <C-n> :NERDTreeToggle<CR>
" Close vim if the only window remaining is NERDTRee
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GitGutter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>gg :GitGutterToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" show open buffers at top of screen (if there's only one tab open)
let g:airline#extensions#tabline#enabled = 1
" use patched font
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
