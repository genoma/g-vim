" Starting from https://github.com/skwp/dotfiles/blob/master/vimrc and
" Tim Pope Vim Sensible https://github.com/tpope/vim-sensible the new
" setting file is more readable and more usable.

call plug#begin('~/.vim/plugged')

" Main packages

Plug 'Chiel92/vim-autoformat'
Plug 'JulesWang/css.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'StanAngeloff/php.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'burnettk/vim-angular'
Plug 'chrisbra/csv.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'gcmt/wildfire.vim'
Plug 'genoma/vim-less'
Plug 'genoma/vim-literate-coffeescript'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-gtfo'
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/emmet-vim'
Plug 'moll/vim-node'
Plug 'morhetz/gruvbox'
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'plasticboy/vim-markdown'
Plug 'rking/ag.vim'
Plug 'ryanss/vim-hackernews'
Plug 'scrooloose/syntastic'
Plug 'shawncplus/phpcomplete.vim'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'svermeulen/vim-easyclip'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-scripts/PreserveNoEOL'
Plug 'whatyouhide/vim-gotham'
Plug 'AndrewRadev/inline_edit.vim'
Plug 'rstacruz/vim-opinion'
Plug 'digitaltoad/vim-jade'

" Slowing down a bit too much
" Plug 'wakatime/vim-wakatime'

" Keep it as a reminder if Unite is not exactly malleable and too slow
" Plug 'wincent/command-t', { 'do': 'cd ruby/command-t && ruby extconf.rb && make' }

call plug#end()

" mapleader is comma instead of backslash
let mapleader=","


" Omnifunc enabled by default
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
        \ if &omnifunc == "" |
        \ setlocal omnifunc=syntaxcomplete#Complete |
        \ endif
endif

" Jump to the last edited line
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

" Prepare sensible/opinion overrides
runtime! plugin/sensible.vim
runtime! plugin/opinion.vim

" Set nohlsearch
set nohlsearch

" Override Opinion fold method
set foldmethod=manual
set foldnestmax=10
set nofoldenable
set foldlevel=1

" =============== Personalized Settings =============
for fpath in split(globpath('~/.vim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor
