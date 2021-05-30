syntax off
set number relativenumber
nmap <leader>t :bel ter<cr><c-W><c-W>:resize +5<cr><c-W><c-W>

set noincsearch
set ignorecase
set smartcase

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
set tabstop=4

"indentation several lines at once:
set shiftwidth=4

"set list
"set listchars=tab:>-

"hi Error NONE
hi ErrorMsg NONE
hi LineNr NONE
hi CursorLineNr NONE
hi Folded NONE
hi Search NONE

"hi Folded ctermfg=green
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
