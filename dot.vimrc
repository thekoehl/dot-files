" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call vundle#end()
filetype plugin indent on

" Customizations
set expandtab
set tabstop=2
set shiftwidth=2
set number

syntax on
"colorscheme desert256
"colorscheme manxome

set formatoptions=l
set lbr
set laststatus=2
set t_Co=256
set autoindent


"colorscheme calmar256-dark
colorscheme ir_black

filetype plugin indent on
execute pathogen#infect()

" AUTOCOMPLETION

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

set complete=.,b,u,]

set wildmode=longest,list:longest

" Rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "!rvm 2.2.2 do rspec {spec}"
let g:vim_markdown_folding_disabled=1

" Line Highlighting
"set cursorline
"augroup BgHighlight
"  autocmd!
"  autocmd WinEnter * set cul
"  autocmd WinLeave * set nocul
"augroup END

" Disable swapfile (OSX crashes alot)
set noswapfile

set backspace=indent,eol,start

" Code folding
"set foldmethod=indent   "fold based on indent
"set foldnestmax=10      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
"set foldlevel=1         "this is just what i use
