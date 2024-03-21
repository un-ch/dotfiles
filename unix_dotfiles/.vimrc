call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'sickill/vim-monokai'
Plug 'tomtom/tcomment_vim'
" Plug 'Yggdroot/indentLine'
Plug 'morhetz/gruvbox'
" Plug 'nathanaelkane/vim-indent-guides'
"Plug 'prabirshrestha/vim-lsp'

call plug#end()

if 0
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
set fillchars+=vert::
" set list listchars=tab:⁞\ 
"set list listchars=tab:..,trail:·,extends:»,precedes:«,space:. 

let g:NERDTreeNodeDelimiter = "\u00a0"
let NERDTreeShowHidden=1

" to close automatically when open a file for editing:
let NERDTreeQuitOnOpen=1

" toggle FZF plugin with <leader+f>:
nnoremap <silent> <leader>f :FZF<CR>
"nmap <C-P> :FZF<CR>

" toggle Rg option (FZF) with <leader+r>:
nnoremap <silent> <leader>r :Rg<CR>

" toggle NERDTree with <ctrl+n>:
" map <C-n> :NERDTreeToggle<CR>

" toggle NERDTree with <\-key+n>:
nnoremap <silent> <leader>n :NERDTreeToggle<CR>

" toggle a terminal emulator window below a vim file, manage <\>+<t> hotkey:
nmap <leader>t :bel ter<esc>

" scrolling buffers with <tab> (<shift>+<tab):
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly 
	\&& &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly 
	\&& &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

"automatic closing brackets:
" inoremap {<CR>  {<CR>}<Esc>O
" inoremap {<CR> {<CR>}<C-o>0

" constant showing the file name: 
set laststatus=2
"set statusline=%F

" hi StatusLineTerm cterm=none ctermbg=darkgray ctermfg=black
" hi StatusLineTermNC cterm=none ctermbg=darkgray ctermfg=black

hi StatusLine cterm=none ctermbg=239 ctermfg=233
hi StatusLineNC cterm=none ctermbg=239 ctermfg=black
hi StatusLineTerm cterm=none ctermbg=239 ctermfg=233
hi StatusLineTermNC cterm=none ctermbg=239 ctermfg=233

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

" Case insensitive search if all lowercase
set ignorecase smartcase

set incsearch hlsearch showmatch

" set autoindent
" set smartindent

"controling the number of 'space' characters while tab key pressed:
set tabstop=4

"indentation several lines at once:
set shiftwidth=4

" tabs -> spaces:
set expandtab

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
hi MatchParen cterm=none ctermbg=none ctermfg=gray

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

" remap caps lock -> escape keys:
" au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

"  au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
"  au BufEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au BufLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
" xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" EOF symbol changed (tilda -> '-'):
set fillchars+=eob:-

" hi DiffText   cterm=none ctermfg=blue ctermbg=black gui=none "guifg=Black "guibg=Red
" hi DiffChange cterm=none ctermfg=green ctermbg=black gui=none "guifg=Black "guibg=LightMagenta

hi DiffText   cterm=none ctermfg=Black ctermbg=Red gui=none guifg=Black guibg=Red
hi DiffChange cterm=none ctermfg=Black ctermbg=LightMagenta gui=none guifg=Black guibg=LightMagenta

" FZF
nmap <C-P> :FZF<CR>
