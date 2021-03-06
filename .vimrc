augroup MyAutoCmd
    autocmd!
augroup END

syntax on

let mapleader="-"
let g:mapleader="-"
" let g:deoplete#enable_at_startup = 1
let twitvim_enable_python = 1
let twitvim_force_ssl = 1
let twitvim_count = 100
let g:airline_theme='kolor'
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
let g:quickrun_config = {'*': {'hook/time/enable': '1'},}
let g:quickrun_config = {
\	'gcc' : {
\		'cmdopt': '-lstdc++',
\		'hook/time/enable' : 1,
\	 }
\}
let g:jedi#popup_select_first = 0

au BufRead,BufNewFile *.ui set filetype=xml

autocmd FileType javascript setl expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType typescript setl expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType html setl expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType css setl expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType xml setl expandtab tabstop=1 shiftwidth=1 softtabstop=1
"autocmd FileType cpp setl expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces

set ignorecase
set smartcase
set incsearch
set hlsearch
set shiftround
set infercase
set virtualedit=all
set hidden
set switchbuf=useopen
set showmatch
set matchtime=3
set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
set matchpairs& matchpairs+=<:>
set backspace=indent,eol,start
set nowritebackup
set nobackup
set noswapfile
set number
set wrap
set textwidth=0
set t_vb=
set novisualbell
set tags=./tags;
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%
set rtp+=~/.fzf

hi Pmenu ctermbg=8
hi PmenuSel ctermbg=1
hi PmenuSbar ctermbg=0

cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>

inoremap jj <Esc>
nmap <silent> <Esc><Esc> :nohlsearch<CR>
map <silent> <leader>e :NERDTreeToggle<cr>
map <silent> <leader>f :TagbarToggle<cr>
map <silent> <leader>0 :set fdm=marker fmr={,} foldlevel=0<cr>
map <silent> <leader>1 :set fdm=marker fmr={,} foldlevel=1<cr>
map <silent> <leader>2 :set fdm=marker fmr={,} foldlevel=2<cr>
map <silent> <leader>3 :set fdm=marker fmr={,} foldlevel=3<cr>

retab 4
retab!

filetype plugin on

colors deus

"dein Scripts-----------------------------
if &compatible
  set nocompatible
endif

" Required:
set runtimepath^=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('$HOME/.cache/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
" call dein#add('Shougo/deoplete.nvim')
call dein#add('scrooloose/nerdtree')
call dein#add('rking/ag.vim')
call dein#add('twitVim/twitvim')
call dein#add('thinca/vim-quickrun')
call dein#add('tpope/vim-fugitive')
call dein#add('vim-syntastic/syntastic')
call dein#add('majutsushi/tagbar')
call dein#add('hushicai/tagbar-javascript.vim')
call dein#add('ajmwagar/vim-deus')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('kien/rainbow_parentheses.vim')
call dein#add('davidhalter/jedi-vim')
call dein#add('junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' })
call dein#add('junegunn/fzf.vim')
call dein#add('critiqjo/lldb.nvim')
call dein#add('leafgarland/typescript-vim')
call dein#add('Quramy/tsuquyomi')
call dein#add('rust-lang/rust.vim')
call dein#add('neoclide/coc.nvim', {'rev':'release'})

if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------
