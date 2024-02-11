call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'sickill/vim-monokai'
Plug 'tomtom/tcomment_vim'
Plug 'morhetz/gruvbox'
call plug#end()

if 1
	syntax off
	hi SpecialKey ctermbg=black ctermfg=239
else
	syntax on
	set termguicolors
	colorscheme gruvbox
	" let g:gruvbox_italic=1
	" let g:gruvbox_italicize_comments=1
	set bg=dark
	let g:gruvbox_contrast_dark = 'light'
endif

set number relativenumber

highlight VertSplit cterm=NONE
"set fillchars+=vert:»
set fillchars+=vert::
"set fillchars+=vert:⁞
"set listchars=tab:⁞\
"set list listchars=tab:⁞\ ,trail:·,extends:»,precedes:«
set list listchars=tab:⁞\ 
"set list listchars=tab:..,trail:·,extends:»,precedes:«
"set list listchars=tab:..,trail:·,extends:»,precedes:«

let g:NERDTreeNodeDelimiter = "\u00a0"
let NERDTreeShowHidden=1

" to close automatically when open a file for editing:
let NERDTreeQuitOnOpen=1

" toggle FZF plugin with <leader+f>:
nnoremap <silent> <leader>f :FZF<CR>
"nmap <C-P> :FZF<CR>

" toggle NERDTree with <tab+n>:
map <C-n> :NERDTreeToggle<CR>

" toggle a terminal emulator window below a vim file, manage <\>+<t> hotkey:
nmap <leader>t :bel ter<esc>

" scrolling buffers with <tab> (<shift>+<tab):
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly 
	\&& &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly 
	\&& &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

"automatic closing brackets:
"inoremap {<CR>  {<CR>}<Esc>O
"inoremap {<CR> {<CR>}<C-o>0

" constant showing the file name: 
set laststatus=2
"set statusline=%F

hi StatusLine cterm=none ctermbg=darkgray ctermfg=233
hi StatusLineNC cterm=none ctermbg=darkgray ctermfg=black
hi StatusLineTerm cterm=none ctermbg=darkgray ctermfg=black
hi StatusLineTermNC cterm=none ctermbg=233 ctermfg=black

" [buffer number] followed by filename:
"set statusline=[%n]\ %t
set statusline=\ %t
" for Syntastic messages:
set statusline+=%#warningmsg#
set statusline+=%*
" show line#:column# on the right hand side
set statusline+=%=%l:%c\ 

" turn off vim autoindentation:
set paste 

set noshowcmd
set hidden "move to another buffer without saving the current file 
set noincsearch
set smartcase
set ignorecase
set nowrapscan
set foldmethod=manual
set foldnestmax=10
set nofoldenable
set foldlevel=2

"set autoindent
"controling the number of 'space' characters while tab key pressed:
set tabstop=2

"indentation several lines at once:
set shiftwidth=2

hi Error NONE
hi ErrorMsg NONE
hi LineNr NONE
hi CursorLineNr NONE
hi Folded NONE
hi Search NONE
hi NonText NONE

" hi MoreMsg NONE

" hit-enter prompt and yes/no question:
hi Question NONE

"set (as well) style of brackets while autocompletes:
hi MatchParen cterm=none ctermbg=none ctermfg=darkgray

" bash-like TAB completion
" set wildmode=longest,list

" Navigate through completion variants using ← and →
set wildmenu

" popup CtrlP menu hi:
hi Pmenu ctermbg=darkgrey ctermfg=black
hi PmenuSel ctermbg=grey
hi SignColumn guifg=white
"hi EndOfBuffer ctermfg=darkgrey guifg=black
hi Visual ctermbg=darkgrey ctermfg=black
