syntax off
filetype off
hi SpecialKey ctermbg=black ctermfg=239


""""" status line always visible:
set laststatus=2
set statusline=\"%f\"\ [%l/%L,\ %v\]

"set number relativenumber

" tabs -> spaces:
"set expandtab

highlight VertSplit cterm=NONE

""""" set the split window vertical separator:
set fillchars+=vert:│

"""" BINDING <\+t> COMBINATION: """"
"""" toggle a tmux window, manage <\>+<m> hotkey:
nmap <leader>m :!tmux<esc>

"""" toggle a tmux window, manage <\>+<t> hotkey:
nmap <leader>t :!tmux<esc>

" toggle a terminal emulator window below a vim file, manage <\>+<t> hotkey:
" nmap <leader>t :bel ter<esc>
" toggle a terminal emulator window on the right side, manage <\>+<t> hotkey:
" nmap <leader>t :vert botr term<esc>

"""" ### BINDING <\+r> COMBINATION:
"""" clear screen + make run command from vim:
nmap <leader>r :! clear && make run<esc>

"""" ### BINDING <\+b> COMBINATION: (smth like B-build process)
"""" clear screen + make command from vim:
nmap <leader>b :! clear && make <esc>

"""" ### BINDING <\+c> COMBINATION (smth like C-compilation process):
"""" clear screen + make command from vim:
nmap <leader>c :! clear && make <esc>

" scrolling buffers with <tab> (<shift>+<tab):
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly 
	\&& &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly 
	\&& &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

" disable the highlighting completely:
" set nohlsearch " set hlsearch

" ??? When a bracket is inserted, briefly jump to the matching one.  The
" ??? jump is only done if the match can be seen on the screen:
" set showmatch

"move to another buffer without saving the current file:
set hidden

set noshowcmd

set report=0

" Case insensitive search if all lowercase:
set ignorecase smartcase

" While typing a search command, show where the pattern:
set incsearch

set nowrapscan

"controling the number of 'space' characters while tab key pressed:
set tabstop=8

" Copy indent from current line when starting a new line:
set autoindent

" Do smart autoindenting when starting a new line, check man page:
set smartindent

"indentation several lines at once:
set shiftwidth=8

" bash-like TAB completion
set wildmode=longest,list

" hit-enter prompt and yes/no question:
hi Question NONE

hi Error NONE
hi ErrorMsg NONE
hi LineNr NONE
hi CursorLineNr NONE
hi Folded NONE
hi NonText NONE
hi Search NONE
hi Visual NONE

"set (as well) highlight style of open-closed brackets:
hi MatchParen cterm=none ctermbg=none ctermfg=grey

" popup CtrlP menu hi:
hi Pmenu ctermbg=darkgrey ctermfg=black

hi PmenuSel ctermbg=grey
hi SignColumn guifg=white
" hi EndOfBuffer ctermfg=darkgrey guifg=black
hi Visual ctermbg=darkgrey ctermfg=black
hi StatusLine ctermbg=black ctermfg=236

au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

"au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
"au BufLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
"xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" not working - artefacts appeares:
"au BufEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'


"set splitbelow
set splitright

set tags=tags;/

"""" test a few features:
""""  Keeps the cursor in the same column when moving between lines:
set nostartofline

"""" cursor in the same  column when moving between lines:
set ruler

command! -nargs=1 VspWide execute 'vsp <args>' | vertical resize -20
