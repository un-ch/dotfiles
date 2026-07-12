syntax off
filetype off
hi SpecialKey ctermbg=black ctermfg=239

""""" status line always visible:
set laststatus=2
set statusline=\"%f\"\ [%l/%L,\ %v\]

"set number relativenumber
"set textwidth=75
set colorcolumn=81
highlight ColorColumn ctermbg=232

"""" tabs -> spaces:
"set expandtab

"""" controling the number of 'space' characters while tab key pressed:
set tabstop=8

highlight VertSplit cterm=NONE

""""" set the split window vertical separator:
set fillchars+=vert:│

"""" toggle a tmux window, manage <\>+<m> hotkey:
nmap <leader>m :!tmux<esc>

"""" toggle a tmux window, manage <\>+<t> hotkey:
nmap <leader>t :!tmux<esc>

"""" toggle a vertical xterm window, manage <\>+<x> hotkey:
nmap <leader>x :vertical rightbelow terminal<CR>

"""" toggle a vertical xterm shell window, manage <\>+<s> hotkey:
nmap <leader>s :vertical rightbelow terminal<CR>

" toggle a terminal emulator window below a vim file, manage <\>+<t> hotkey:
" nmap <leader>t :bel ter<esc>
" toggle a terminal emulator window on the right side, manage <\>+<t> hotkey:
" nmap <leader>t :vert botr term<esc>

"""" binding "clear + make run" command:
nmap <leader>r :! clear && make run<esc>

"""" binding "clear + make" command (build the project):
nmap <leader>b :! clear && make <esc>

"""" scrolling buffers with <tab> (<shift>+<tab):
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly 
	\&& &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly 
	\&& &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

" disable the highlighting completely:
" set nohlsearch " set hlsearch

" ??? When a bracket is inserted, briefly jump to the matching one.  The
" ??? jump is only done if the match can be seen on the screen:
" set showmatch

"""" move to another buffer without saving the current file: 
set hidden

set noshowcmd

set report=0

"""" case insensitive search if all lowercase:
set ignorecase smartcase

"""" while typing a search command, show where the pattern:
set incsearch

set nowrapscan

"""" copy indent from current line when starting a new line:
set autoindent

"""" do smart autoindenting when starting a new line, check man page:
set smartindent

"""" indent lines at once:
set shiftwidth=8

"""" bash-like TAB completion
set wildmode=longest,list

"""" hit-enter prompt and yes/no question:
hi Question NONE

hi Error NONE
hi ErrorMsg NONE
hi LineNr NONE
hi CursorLineNr NONE
hi Folded NONE
hi NonText NONE
hi Search NONE
hi Visual NONE

"""" set (as well) highlight style of open-closed brackets:
hi MatchParen cterm=none ctermbg=none ctermfg=grey

"""" popup CtrlP menu hi:
hi Pmenu ctermbg=darkgrey ctermfg=black

hi PmenuSel ctermbg=grey
hi SignColumn guifg=white
" hi EndOfBuffer ctermfg=darkgrey guifg=black
hi Visual ctermbg=darkgrey ctermfg=black
hi StatusLine ctermbg=black ctermfg=236

set splitright
"set splitbelow

set tags=tags;/

"""" keeps the cursor in the same column when moving between lines:
set nostartofline

"""" cursor in the same  column when moving between lines:
set ruler

command! -nargs=1 VspWide execute 'vsp <args>' | vertical resize -20
