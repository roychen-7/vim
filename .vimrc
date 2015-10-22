"VIMIDE vimrc basic settings
"--------start---------
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set fileformat=unix
set guifont=Courier:h12
set linespace=4
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set noswapfile
set backspace=start,indent,eol
set numberwidth=4
set autoindent
set smartindent
set nobackup
set writebackup
set hlsearch 
set incsearch
set autoread
set nu
set go=
set ruler
set bg=dark

filetype plugin on
filetype indent on
syntax on
:highlight PreProc guifg=green ctermfg=green

call pathogen#runtime_append_all_bundles()

noremap <F2> :w<cr>
inoremap <F2> <Esc>:w<cr>a
noremap <F12> :q!<cr>

set wildignore+=.git,.svn,*.o,*.ob­j,tmp,*swp,*.log

map <C-t> :NERDTreeToggle<cr>
imap <C-t> <esc>:NERDTreeToggle<cr>
let NERDTreeShowBookmarks=0
let NERDTreeWinPos="right"

map <C-j> <C-W>j 
map <C-k> <C-W>k 
map <C-h> <C-W>h 
map <C-l> <C-W>l 

if has("gui_running")
    colorscheme desert 
endif

au! BufRead,BufNewFile *.js set filetype=javascript
au! BufRead,BufNewFile *.less set syntax=css
au! BufRead,BufNewFile *.tpl set syntax=html

autocmd! bufwritepost .vimrc source ~/.vimrc

"--------vim-javascript---------
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

map <s-f> :% ! php_beautifier --filters "phpBB() IndentStyles(style=k&r) ArrayNested() NewLines(before=if:switch:foreach:elseif:else:T_CLASS,after=T_COMMENT)"<CR>
"map <c-f> :call JsBeautify()<cr>
" or
" autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
" autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
" autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
set tags=~/tags
