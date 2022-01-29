syntax off
set number relativenumber

" set terminal emulator below vim file:
" manage <\>+<t> hotkey:
nmap <leader>t :bel ter<esc>
	" underlined cursor:
	"\/bin/echo -e -n "\x1b[\x34 q"<enter>
	"\clear<enter>
	"<cr><c-W><c-W>:resize +5<cr><c-W><c-W>

" scrolling buffers with <tab> (<shift>+<tab):
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly 
	\&& &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly 
	\&& &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

"automatic closing brackets:
inoremap {<CR>  {<CR>}<Esc>O
"inoremap {<CR> {<CR>}<C-o>0

inoremap /*          /**/<Left><Left>

" constant showing the file name: 
set laststatus=0

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

set autoindent
"set cindent

"space characters whenever the tab key is pressed:
"set expandtab

"set noexpandtab

"controling the number of 'space' characters while tab key pressed:
set tabstop=2

"indentation several lines at once:
set shiftwidth=2

"set list
"set listchars=tab:>-

"hi Error NONE
hi ErrorMsg NONE
hi LineNr NONE
hi CursorLineNr NONE
hi Folded NONE
hi Search NONE
"hi Visual cterm=bold
"hi StatusLineTerm ctermbg=darkgrey
"dark-dark grey:
hi StatusLineTerm cterm=none ctermbg=black ctermfg=233
"set (as well) style of brackets while autocompletes:  
hi MatchParen cterm=bold ctermbg=none ctermfg=none

"hi Folded ctermfg=darkgrey
"hi Folded ctermbg=darkgrey

"############################
"# saving the text folding: #
"############################
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview 

"set softtabstop=0
"highlight Special ctermfg=darkgrey
"set nohlsearch
"set nuw=6
"set linespace=4
"set t_Co=0
"botright split
"set cursorline
"bel vert term
"vsp
"lefta vert term
"rightb vert term
"set backspace=indent,eol,start
"set showcmd
"set autoindent
"set expandtab
"set autoindent
"set numberwidth=8	
