set nomodeline

set relativenumber
set numberwidth=3

filetype on
syntax on
colorscheme industry

set list
set listchars=tab:-->,trail:.,nbsp:~

set cursorline
set cursorcolumn
set colorcolumn=80
set showcmd

set shortmess+=I

set showmatch
set matchpairs+=<:>

set title
set titleold=""

if &term =~ "^screen"
    set t_ts=]2;
    set t_fs=\
endif

set linebreak

set spelllang=ru,en_us

set belloff=all

set scrolloff=2

set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

set cpoptions+=$
set backspace=indent,eol

set formatoptions+=onj
set nojoinspaces

set textwidth=80

set wildmode=list:longest

set ignorecase
set smartcase
set infercase
set incsearch
set hlsearch

set gdefault

set laststatus=2
set statusline=%f\ %m%r%h%w%=%y\ %4l/%L\ %7(%c%V%):0x%-4B\ %3p%%

nmap <Leader>l :nohl<CR>
nmap <Leader>p :set paste<CR>
nmap <Leader>P :set nopaste<CR>

nmap <Space> f<Space>
nmap _ f_<Right>
map Q gq
nmap <Leader>h yypVr=

xmap <Leader>' ygvc'<C-r>"'<Esc>
xmap <Leader>" ygvc"<C-r>"<Esc>
xmap <Leader>` ygvc`<C-r>"<Esc>
xmap <Leader>( ygvc(<C-r>"<Esc>
xmap <Leader>[ ygvc[<C-r>"<Esc>
xmap <Leader>{ ygvc{<C-r>"<Esc>
xmap <Leader>< ygvc<<C-r>"><Esc>
xmap <Leader>~ ygvc~~<C-r>"~~<Esc>
xmap <Leader>* ygvc*<C-r>"*<Esc>
xmap <Leader>** ygvc**<C-r>"**<Esc>
xmap <Leader>_ ygvc__<C-r>"__<Esc>
xmap <Leader><Leader> d<Left>P<Right>2x

inoremap " ""<Left>
inoremap ` ``<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap <> <><Left>
inoremap {<CR> {<CR>}<Esc>O<Tab>
inoremap {;<CR> {<CR>};<Esc>O<Tab>
