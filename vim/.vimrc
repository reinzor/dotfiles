call plug#begin()

" Make sure you use single quotes

Plug 'tpope/vim-sensible'

Plug 'editorconfig/editorconfig-vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'kien/ctrlp.vim'

Plug 'airblade/vim-gitgutter'

Plug 'bling/vim-airline'

call plug#end()



colorscheme torte



" vim-gitgutter
set updatetime=250



" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed



" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>



" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
