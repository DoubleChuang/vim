" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)                          
call plug#begin('~/.vim/plugged')

Plug 'Shougo/neocomplcache'
Plug 'scrooloose/nerdtree'
map <F5> :NERDTreeToggle<CR>

call plug#end()

let g:neocomplcache_enable_at_startup = 1 
let g:neocomplcache_enable_smart_case = 1 
inoremap <expr><TAB> pumvisible()?"\<C-n>" : "\<TAB>"


set nu
set cursorline " 啟用游標提示
set tabstop=4 " Tab所需的空白字元數
set shiftwidth=4 "縮排所需的空白鍵位元數
set ai " 自動縮排 複製貼上可能會有問題 可使用:set paste

" Color configuration

set bg=dark " 暗色背景模式
color evening  " Same as :colorscheme evening

hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE

" 按下F4開關行號
map <F4> : set nu!<BAR>set nonu?<CR>
