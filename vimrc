""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
" Vim plugin manager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Vim plugin manager
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" add this .vimrc file to your home directory (~/.vimrc)
" launch vim and run :BundleInstall to install all vim plugins
Bundle 'gmarik/vundle'
" Git wrapper
" Gblame to see git blame info
" :help fugitive
Bundle 'tpope/vim-fugitive'
" Mercurial wrapper
Bundle 'phleet/vim-mercenary'
" Full path fuzzy file, buffer, mru, tag, ... finder
" :CtrlP or :CtrlP [path] to find a file
" :help ctrlp-mappings
Bundle 'kien/ctrlp.vim'
Bundle 'greatghoul/vim-web-indent'
" Comply with PEP8
Bundle 'hynek/vim-python-pep8-indent'
" Color scheme
Bundle 'jnurmine/Zenburn'
" Rainbow colors for parenthesis Bundle 'kien/rainbow_parentheses.vim'
Bundle 'kien/rainbow_parentheses.vim'
" Match xml tags (shift-%)
Bundle 'edsono/vim-matchit'
" Syntax checking
" Requires installing pylint, flake8, or pyflakes
" :SyntasticCheck
" :Errors to open error window
" :SyntasticInfo for help
Bundle 'scrooloose/syntastic'
" Python autocomplete
Bundle 'davidhalter/jedi-vim'
" Comment code
Bundle 'scrooloose/nerdcommenter'
" Run other apps inside of vim
Bundle 'vim-scripts/Conque-Shell'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NORMAL CONFIG
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Don't be compatible with old vi
set nocompatible
filetype indent plugin on
" Enable color syntax highlighting
syntax on
" Make vim use 256 colors
set t_Co=256
" Set colorscheme
colorscheme zenburn
" Bufffers with unsaved changes are hidden, not closed, when a new file is
" opened
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
" use ',,' to invoke CtrlP fuzzy file search
nnoremap <silent> <leader><leader> :ClearCtrlPCache<cr>\|:CtrlP<cr>
nnoremap <F2> :set invnumber<CR>
" Remove trailing whitespace before saving files
autocmd BufWritePre * :%s/\s\+$//e

" Working with tabs
map <F7> :tabp<CR>
map <F8> :tabn<CR>
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
" RAINBOW PARENTHESES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use pylint
let g:syntastic_python_checkers = ['pylint']
" Use jshint (uses ~/.jshintrc)
let g:syntastic_javascript_checkers = ['jshint']
