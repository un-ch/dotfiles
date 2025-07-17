# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export TERM=xterm-256color
#export TERM=xterm-mono
export EDITOR=vim

# Show a current active git branch in the shell prompt
# export PS1='\t \[\033[01;32m\]\u\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '

# Shortcat for the pretty git log. Can be extended with the commit count parameter (last -10, last -35)
alias last='git log --graph --all --oneline --decorate '

alias pp='mpv --ytdl-format="bestvideo[height<=?1080][fps<=?60][vcodec!=?vp9][vcodec!=?av1]+bestaudio/best" $1'
alias emu='/usr/bin/qemu-system-x86_64'
alias lofi_radio='/home/us/scripts/lofi_radio.sh &'
alias puml='plantuml -DPLANTUML_LIMIT_SIZE=8192 $1'

alias prj='cd /home/us/prj/ ; pwd'
alias foowm='cd /home/us/prj/foowm/ ; pwd'
alias another_snake_game='cd /home/us/prj/another_snake_game/ ; pwd'
alias quest_game='cd /home/us/prj/quest_game/ ; pwd'
alias mcu1='cd /home/us/downloads/udemy_courses/mcu1_mastering_mc_and_embed_driver_develop_discov_vers ; pwd'
alias motyga='cd /home/us/prj/motyga/src ; pwd'
alias tetris='cd /home/us/prj/tetris/src ; pwd'
alias anki='cd /home/us/.soft/anki-25.02.6-linux-qt6/ ; pwd'
alias resume='cd /home/us/prj/resume_latex ; pwd'

alias pomodoro='/home/us/./pomodoro_tool.sh &'
alias eclipse='/home/us/eclipse/cpp-2024-03/eclipse/eclipse & exit'
#alias ll='ls -l'
alias ll='ls -lFh --group-directories-first --color=auto'
#alias ls='ls -F --group-directories-first'
alias la='ls -lAF'
alias e='exit'
alias fox='firefox & exit'
alias foxp='firefox --private-window & exit'
alias wfox='/home/us/.soft/waterfox/waterfox & exit'
alias pal='/home/us/.soft/palemoon_gtk2/palemoon & exit'
alias chrom='chromium & exit'
alias mplayer_faster='mplayer -fs -af scaletempo -speed 1.5'
alias minder='/usr/bin/com.github.phase1geo.minder & exit'
alias cubemx='/home/us/.soft/STM32CubeMX/STM32CubeMX & exit'
alias cubeide_bak='/home/us/st/stm32cubeide_1.15.1/stm32cubeide & exit'
alias cubeide='/home/us/.soft/st/stm32cubeide/stm32cubeide & exit'

alias gitstatus='git status'
alias gitcommit='git commit -s'
alias gitdiff='git diff'
alias gitbranch='git branch -a'

alias manage_windows='/home/us/./workspace_manage.sh &'
alias ohne_js_firefox='/home/us/.soft/firefox_portable/firefox/firefox & exit'
alias ctags_with_git_ls='git ls-files | ctags --links=no --languages=c,c++ -L-'

DATA_FILE=/home/us/todo
# today task:
# alias tod='grep -n "^0" $DATA_FILE | cut -d':' -f1,3,4'
alias tod='grep -n -e "^0:" -e "\[0\]" $DATA_FILE | cut -d':' -f1,3,4'
alias too='/home/us/scripts/tod.sh'

# nextday task:
alias tom='grep -n "^1:" $DATA_FILE | cut -d':' -f1,3,4'
# later task:
#alias lat='grep -n "^!:" $DATA_FILE | cut -d':' -f1,3,4'
alias lat='grep -En "^!:|^[0-9][0-9]-[0-9][0-9]:|^2:" $DATA_FILE | cut -d':' -f1,2,3,4'
alias now='grep -n  -e "\[\*\]" -e "^\*" $DATA_FILE'

# done task:
# alias don='grep -n "^x:" $DATA_FILE | cut -d':' -f1,3,4'
# dated task:
alias dat='grep -n "^[0-9][0-9]-[0-9][0-9]:" $DATA_FILE'

alias press='/home/us/./press.sh & exit'
alias shutdown='sudo /sbin/shutdown now'
alias telegram='.soft/telegram/telegram & exit'
alias mmp3='youtube-dl -x --audio-format mp3 $1'
alias tor='/home/us/.soft/tor-browser/Browser/start-tor-browser & exit'

function del()
{
	if [ "$1" = "" ]; then
		echo "error: no task number";
		return 1;
	fi
	sed -i "$1d" $DATA_FILE
}

function don()
{
	if [ "$1" = "" ]; then
		grep -n -e "^x:" -e "^\[x\]" $DATA_FILE | cut -d':' -f1,2,3,4
		return 1;
	fi
	sed -i "$1s/^0:/x:/" $DATA_FILE
}

function xt()
{
	if [ "$1" = "" ]; then
		echo "error: no workspace number";
		exit;
	fi

	WORKSPACE_NUMBER=$1

	CURRENT_DIR=$(pwd)

	/usr/bin/i3-msg workspace $1 1>/dev/null ; xterm -e "cd $CURRENT_DIR; $SHELL" &
}



# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = no ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    #PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    #PS1='${debian_chroot:+($debian_chroot)}> '
    #PS1='${debian_chroot:+($debian_chroot)}[\W]# '

    PS1='${debian_chroot:+($debian_chroot)}(\W): '
    
    # PS1='${debian_chroot:+($debian_chroot)}\u@\h> '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    #alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi


# colored GCC warnings and errors
# export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export GCC_COLORS='error=01;31:warning=01;33:note=01;36:caret=01;32:locus=01:quote=01'


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

