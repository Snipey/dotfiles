call plug#begin()

Plug 'rakr/vim-one'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'racer-rust/vim-racer'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()

let g:racer_cmd = "/home/user/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

" Theme
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme one

let g:airline_theme='one'
set encoding=UTF-8
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nosmarttab
set autoindent
set sw=2
set go-=T
set go-=m
set ls=2
set background=dark
syntax on


"Nerdtree stuff
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" open new split panes to right and below
set splitright
set splitbelow
" " turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" " start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" " open terminal on ctrl+n
function! OpenTerminal()
   split term://bash
     resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let airline#extensions#tabline#show_splits = 0
let airline#extensions#tabline#tabs_label = ''

" Disable tabline close button
 let g:airline#extensions#tabline#show_close_button = 0
 let g:airline#extensions#tabline#show_tab_type = 0
 let g:airline#extensions#tabline#show_tab_nr = 0
 let g:airline#extensions#tabline#fnamecollapse = 1

 let g:airline#extensions#tabline#show_tab_type = 0
 let g:airline#extensions#tabline#buffers_label = ''
 let g:airline#extensions#tabline#tabs_label = ''

" " Just show the file name
 let g:airline#extensions#tabline#fnamemod = ':t'

" " enable powerline fonts
 let g:airline_powerline_fonts = 1
 let g:airline_left_sep = ''
 let g:airline_right_sep = ''
 let g:airline_right_alt_sep = ''

 let g:airline#extensions#tabline#formatter = 'unique_tail'

 set showtabline=2
 set noshowmode

 let g:webdevicons_enable_airline_tabline = 1

 " Switch Tabs
 nmap <Tab> :bnext<cr>
 nmap <S-Tab> :bprev<cr>
 nmap <S-W> :bd<cr>

 nmap <C-w> :q<cr>

source ~/.coc.vimrc
