syntax enable
set tabstop=4		" number of visual spaces per tab
set softtabstop=4	" number of spaces after pressing tab
filetype indent on	" load filetype-specific indent files

" UI Configurations
set number	" show the line numbers
set showcmd	" show the command in bottom bar
" set cursorline	" highlight the current line
set showmatch	" highlight matching [{()}]

set incsearch	" search as characters are entered
set hlsearch	" highlight the matches

" make it so ,<space> stops highlighting the search results
nnoremap <leader><space> :nohlsearch<CR>

set foldenable	" enable folding
set foldlevelstart=10	" open most folds by default
set foldnestmax=10	" 10 nested fold max
" make is so <space> opens/closes folds
nnoremap <space> za

" Remap the movement keys one space to the right so they start at j
" make it so if a line wraps, going down/up goes to the wrapped part of the line
nnoremap h <Nop>
nnoremap j h
nnoremap k gj
nnoremap l gk
nnoremap ; l

" Plugins
if empty(glob('~/.vim/autoload/plug.vim'))
		silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/tpope/vim-eunuch'
Plug 'https://github.com/tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'wakatime/vim-wakatime'

call plug#end()

" Lightline
set laststatus=2 " Make the lightline appear
set noshowmode		" Don't need the native status indicator anymore
let g:lightline = {
	\ 'colorscheme': 'nord'
	\ }

" NERDTree
map <C-t> :NERDTreeToggle<CR>

" GitGutter
map <C-g> :GitGutterToggle<CR>
