syntax off
set number relativenumber
nmap <leader>t :bel ter<cr><c-W><c-W>:resize +20<cr><c-W><c-W>

"space characters whenever the tab key is pressed:
"set expandtab

set noexpandtab

"controling the number of 'space' characters while tab key pressed:
set tabstop=4

"automatic indentation:
"set shiftwidth=4

set list
set listchars=tab:>-

hi LineNr NONE
hi CursorLineNr NONE
hi Folded NONE

"hi Folded ctermfg=green
"hi Folded ctermbg=darkgrey

"############################
"# saving the text folding: #
"############################
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

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
