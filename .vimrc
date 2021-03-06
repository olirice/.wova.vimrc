" eclim
set nocompatible
filetype plugin indent on    " required

syntax on

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin("~/.vim/bundle")
    " Let Vundle manage Vundle
    " required !
    Bundle 'VundleVim/Vundle.vim'
    " My Bundles
    Bundle 'davidhalter/jedi-vim'
    Bundle 'ctrlpvim/ctrlp.vim'
    Bundle 'derekwyatt/vim-scala'
    Bundle 'myusuf3/numbers.vim'
    Bundle 'vim-airline/vim-airline'
    Bundle 'vim-airline/vim-airline-themes'
    Bundle 'scrooloose/nerdtree'
    Bundle 'scrooloose/syntastic'
    Bundle 'kien/rainbow_parentheses.vim'
    Bundle 'olirice/snipmate.vim'
call vundle#end()
filetype plugin indent on

" Line Numbers (Nerd Tree)
set number

" Tell syntastic which python linter to use
let g:syntastic_python_checkers = ['pylint']

" Nerd Tree (Toggle with Ctrl+n)
map <C-n> :NERDTreeToggle<CR>   " Toggle tree on/off

" Powerline Configuration
" set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Always show current position
set ruler

" Reset tabs size (default is very large)
set tabstop=4
set shiftwidth=4
set expandtab


" Remap VIM 0 to first non-blank character
map 0 ^

" Rainbow Parentheses
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
map <C-b> :RainbowParenthesesToggle
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces



" Attempt at setting color scheme
set t_Co=256
colorscheme hybrid

" Reamp Directions to jkl;
noremap ; l
noremap l k
noremap k j
noremap j h
 

" Remap switch active split
nnoremap gk <C-W><C-J>
nnoremap gl <C-W><C-K>
nnoremap g; <C-W><C-L>
nnoremap gj <C-W><C-H>

" Disable Arrow keys in all normal and insert mode
nnoremap <up> <NOP>
nnoremap <down> <NOP>
nnoremap <left> <NOP>
nnoremap <right> <NOP>
inoremap <up> <NOP>
inoremap <down> <NOP>
inoremap <left> <NOP>
inoremap <right> <NOP>


