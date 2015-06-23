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
let g:airline_powerline_fonts = 1

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

let g:rspec_command = "!rvm 2.1.6 do rspec {spec}"
let g:vim_markdown_folding_disabled=1

" Powerline
" You need to install PowerLine from
" https://powerline.readthedocs.org/en/latest/installation/osx.html#vim-installation
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" Line Highlighting
set cursorline
augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

" Disable swapfile (OSX crashes alot)
set noswapfile

set backspace=indent,eol,start

" Code folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
