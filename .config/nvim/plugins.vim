" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

", organisation: @account.organisation Esstentials
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'jgdavey/tslime.vim'
Plug 'tpope/vim-sleuth'
Plug 'neomake/neomake'
Plug 'easymotion/vim-easymotion'
"A collection of language packs for Vim.
Plug 'sheerun/vim-polyglot'
" Ruby
Plug 'tpope/vim-rails'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'tpope/vim-bundler'
" RSpec
Plug 'janko-m/vim-test'
" Elxir autocomplete
Plug 'slashmili/alchemist.vim'
" Elm
Plug 'elmcast/elm-vim'
" React
Plug 'maxmellon/vim-jsx-pretty'
" Quick HTML
Plug 'mattn/emmet-vim'
" Vertical lines
Plug 'Yggdroot/indentLine'
" Enables Multiple Cursor
Plug 'terryma/vim-multiple-cursors'
" Better whitespace handling
Plug 'ntpeters/vim-better-whitespace'
" Highlight when yanking
Plug 'machakann/vim-highlightedyank'
Plug 'scrooloose/vim-slumlord'
" Tmux
Plug 'christoomey/vim-tmux-navigator'
" Rainbow braces
Plug 'luochen1990/rainbow'
"Snippets support
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jparise/vim-graphql'
Plug 'mbbill/undotree'
Plug 'bling/vim-bufferline'
Plug 'qpkorr/vim-bufkill'
" Register help
Plug 'junegunn/vim-peekaboo'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'takac/vim-hardtime'


call plug#end()
