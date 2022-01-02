#!/bin/bash

sed '1! d' foo_file | xargs firefox --private-window
sed -i '/search_pattern/a new_text' foo_file 
sed -i '/pattern/a\ \tnew_string' foo_file
sed -i '/pattern/a\    foo' foo_file

#delete lines starting from the 2 till the 5
sed -i '2,5d' foo_file

#replacing through the line number:
sed -i '307s/search_pattern/replace_pattern/' foo_file

#replacing the character:
sed -i 's/+tod/!tod/g' foo_file

#delete lines through matching pattern:
sed -i '/pattern/d' foo_file

#delete lines through its numbers:
sed -i '135d;144d' foo_file

#make special symbol replacing:
sed -i 's/\[x\]/\[!\]/g' foo_file

#dealing with todo file:
grep -n '^0:' todo_file | cut -d':' -f1,3-

#grep without regular expressions:
grep -F [!] foo_file

ps aux | grep mysql | grep -V grep
mysql -u root -p my_db_name

#vim folding:
:zf = create fold;
:zo = open fold;
:zc = close fold

#vim save file in buffer and close this file:
:write | bdelete; ==
:w|bd;

#vim ls buffers:
:ls

#vim switching between buffers:
Ctrl-^;

#vim switching between buffers:
:bprev;
:bnext;

#vim repalce character under the cursor:
<s>;

#vim: searching for the whole word:
* (search forwards);
# (search backwards);

#examples with find tool:
find . -name '*.flac' -o -name '*mp3' >> playlist

#terminal configuration:
vim ~/.config/xfce4/terminal/terminalrc

#replace spaces with tabs:
:set ts=4
:set noet
:%retab!

#replace spaces with tabs:
:1,$s/  /\t/g

#add symbol before the lines:
:5,10s/^/#/
#uncomment lines:
:5,10s/^#//

#opening the browser of catalogues from the left side:
:Vexplore!

#mplayer changing the audio track in the video file:
<#>

#mplayer fullscreeen video:
-fs

#save vim folding:
:mkview

#restore previous vim folding 
:loadview

#browsing urls from the data_file:
while read line; do
	firefox -private-window "$line" &
	sleep 1
done < data_file

#vim: replacing in the whole text:
:%s/<search_text>/<replace_text>/g

#the case with the special characters:
:%s/\[x\]/[!]/g

#path of the foo_file:
realpath foo_file

#vim: move to the bottom of the file:
:$ 
<Shift+g>

#vim: move to the top of the file:
<gg>

#vim: delete all lines in the file:
:%d

#vim: delete all characters in the line after the cursor:
:D

#vim: delete all lines in the file after the cursor:
:dG

#show foo_file 5 first lines:
~$ head -5 foo_file

#show foo_file 5 last lines:
~$ tail -5 foo_file

#terminal pomodoro_tool script:
#!/bin/bash
msg='########## TIME! ##########'
sleep 1500 && notify-send "$msg"

#today date to the end of the foo_file:
echo $(date +%F) >> foo_file

#ls command + group directories first:
ls -F --g

tar -xf foo_file*.tar.xz

#list of sleeping processes:
jobs

#xterm fullscreen:
<alt+enter>

#xterm: enable recognition of ansi color-change escape seq.;
#it sets the colorMode resource to "false":
xterm -cm

#disabled beep sound on dell inspiron (freebsd os):
echo "sysctl kern.vt.enable_bell=0" >> /etc/sysctl.conf

# rotate the screen:
xrandr --output DP1 --rotate left

# grep with ignore case:
grep -i foo_pattern foo_file;
grep -y foo_pattern foo_file;

# vim: replacing on concrete lines:
:250,+19s/search_pattern/new_pattern/g

# grepping through the dictionary file and show \
# first line of matching result:
grep <word> *.dict_file| head -n 1

wget -qO- 'https://en.wikipedia.org/wiki/Comparison_of_X_window_managers' | grep \<title\>

setxkbmap us
setxkbmap ru

#change the volume:
amixer sset 'Master' 75%

redshift -l 10.23:88.55 & exit

vim: undolist

#execute one command through its line number from script file:
#'160' - number of the line
$(sed -n 160p command_script.sh)

# vim: centered cursor in the screen:
<zz>

# running wicd_network_manager:
wicd-client

# xterm: paste to the file from buffer
<ctrl + insert>

git push origin --delete not_needed_branch

time ./a.out

# execute grep results
grep time ~/commands.sh | bash

# run gcc from vim:
!gcc %

apt-get install gimagereader
apt-get install tesseract-ocr-rus

killall -HUP foo_soft

# firefox: back key:
CTRL + [

# mplayer: disable album art:
mplayer -vo null

# xterm cursor changed to steady bar:
echo -e -n "\x1b[\x36 q" # changes to steady bar

make 2>&1 | less

# vim: delete line by pattern:
:g/pattern/d

# vim: save file and exit (<wq!> analog):
ZZ

# git: use specified name for the initial branch in a newly \
# created repo:
git init -b main

# move firefox window to workspace 1;
wmctrl -r Firefox -t 0

# vim: jump to this next word occurrence:
* foo_word
N - navigate back
n - forth the result

# vim: page up or move back:
ctrl+b (1/2 screen: ctrl+u)
# vim: page down or move forward:
ctrl+f (1/2 screen: ctlr+d)

# kill qbit process by its pid:
~$ kill $(ps aux | grep qbit | grep -v grep | cut -d' ' -f 8)

# execute the command through its line number in commands.sh file:
~$ sed '217q;d' commands.sh | bash

# vim: go to the beginning of current or previous word:
<b>

# vim: go to the beginning of next word:
<w>

# vim: cut the line
<dd>

# vim: cut from cursor to the end of line:
<D>

# ctags:
ctrl-] / ctrl-t

