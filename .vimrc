set encoding=UTF-8

map <Up> <nop>
map <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

set fillchars+=vert:\  " Make it so the split between windows doesn't have character inside

filetype plugin indent on	" load filetype-specific indent files
set tabstop=4		" number of visual spaces per tab
set softtabstop=4	" number of spaces after pressing tab
set shiftwidth=4	" something that fixes the autoidentation problem
" Make it so a single <Tab> idents the current line a level further
nnoremap <Tab> >>
"Make it so that a single Shift + Tab unidents the current line a level"
nnoremap <S-Tab> <<

" UI Configurations
set number	" show the line numbers
set relativenumber
set showcmd	" show the command in bottom bar
" set cursorline	" highlight the current line
set showmatch	" highlight matching [{()}]
set showtabline=2 " Always show the tab line

set incsearch	" search as characters are entered
set hlsearch	" highlight the matches

" make it so \ + <space> stops highlighting the search results
nnoremap <leader><space> :nohlsearch<CR>

set foldenable	" enable folding
set foldlevelstart=10	" open most folds by default
set foldnestmax=10	" 10 nested fold max
" make is so <space> opens/closes folds
nnoremap <space> za

" Remap the movement keys one space to the right so they start at j
" make it so if a line wraps, going down/up goes to the wrapped part of the line
nnoremap j gj
nnoremap k gk

" Plugins
if empty(glob('~/.vim/autoload/plug.vim'))
		silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/tpope/vim-eunuch'
Plug 'https://github.com/tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'wakatime/vim-wakatime'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'valloric/youcompleteme'
Plug 'yuttie/comfortable-motion.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'prettier/vim-prettier', {'do': 'yarn install'}
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'
Plug 'heavenshell/vim-pydocstring'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'benmills/vimux'

call plug#end()

" Lightline
set laststatus=2 " Make the lightline appear
set noshowmode		" Don't need the native status indicator anymore
let g:lightline = {
	\ 'colorscheme': 'nord'
	\ }

" NERDTree
map <C-t> :NERDTreeToggle<CR>
"let NERDTreeShowHidden=0
let NERDTreeWinSize=50
	" Automatically close nerdtree when closing last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" GitGutter
map <C-g> :GitGutterToggle<CR>

" Comfortable Motion
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

" Nord Color Scheme
let g:nord_cursor_line_number_background=1

" Vim Prettier
let g:prettier#config#tab_width=4

" Rainbow
let g:rainbow_active = 1
map <C-]> :RainbowToggle<CR>

" Doxygen Toolkit
let g:DoxygenToolkit_authorName="Augusto Queiroz"
map <C-?> :Dox<CR>

" You Complete Me
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Remap ctrl+b to build and run project
nnoremap <leader>b :VimuxRunCommand("make")<CR>
nnoremap <leader>r :VimuxRunCommand("make run")<CR>
nnoremap <leader>c :VimuxRunCommand("make clean")<CR>
nnoremap <leader>s :VimuxRunCommand("^C")<CR>

" Things that depend on color
colorscheme nord
set cursorline " Make the current line appear highlighted
syntax enable
