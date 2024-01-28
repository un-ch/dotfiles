syntax off
set number relativenumber

highlight VertSplit cterm=NONE
"set fillchars+=vert:»
set fillchars+=vert::
"set fillchars+=vert:⁞

let g:NERDTreeNodeDelimiter = "\u00a0"
let NERDTreeShowHidden=1

" to close automatically when open a file for editing:
let NERDTreeQuitOnOpen=1

" toggle NERDTree with Ctrl+n:
map <C-n> :NERDTreeToggle<CR>

" set terminal emulator below vim file:
" manage <\>+<t> hotkey:
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
hi StatusLine cterm=none ctermbg=black ctermfg=233
hi StatusLineNC cterm=none ctermbg=black ctermfg=black

hi StatusLineTerm cterm=none ctermbg=black ctermfg=black
hi StatusLineTermNC cterm=none ctermbg=black ctermfg=black

" [buffer number] followed by filename:
"set statusline=[%n]\ %t
set statusline=\ %t
" for Syntastic messages:
set statusline+=%#warningmsg#
set statusline+=%*
" show line#:column# on the right hand side
set statusline+=%=%l:%c\ 

set noshowcmd
set hidden					"move to another buffer without saving the current file 
set noincsearch
set smartcase
set ignorecase
set nowrapscan
set foldmethod=manual
set foldnestmax=10
set nofoldenable
set foldlevel=2

set autoindent
"set cindent

"controling the number of 'space' characters while tab key pressed:
set tabstop=2

"indentation several lines at once:
set shiftwidth=2

"hi Error NONE
hi ErrorMsg NONE
hi LineNr NONE
hi CursorLineNr NONE
hi Folded NONE
hi Search NONE
"set (as well) style of brackets while autocompletes:  
hi MatchParen cterm=bold ctermbg=none ctermfg=none
