#!/bin/bash

sed '1! d' todo_list.txt | xargs firefox --private-window
sed -i '/search_pattern/a new_text' todo_list.txt 
sed -i '/pattern/a\ \tnew_string' todo_list.txt
sed -i '/pattern/a\    foo' todo_list.txt

#delete lines starting from the 2 till the 5
sed -i '2,5d' foo_file

#replacing through the line number:
sed -i '307s/search_pattern/replace_pattern/' todo_list.txt

#replacing the character:
sed -i 's/+tod/!tod/g' todo_list.txt

#delete lines through matching pattern:
sed -i '/pattern/d' foo_file

#delete lines through its numbers:
sed -i '135d;144d' foo_file

#make special symbol replacing:
sed -i 's/\[x\]/\[!\]/g' foo_file


#label manual from the todo.txt file:
[!] - todo today;
[ ] - todo tomorrow;
[?] - todo later; 
[x] - done;

#grep through the todo_list:
grep '\[ \]' todo_list.txt
grep '\[!\]' todo_list.txt
grep '\[x\]' todo_list.txt

#grep without regular expressions:
grep -F [!] todo_list.txt

grep '!tod' todo_list.txt | grep house | less
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

#opening the browser of catalogues from the left side:
:Vexplore!

#mplayer changing the audio track in the video file:
#

#mplayer fullscreeen video:
-fs

#save vim folding:
:mkview

#restore previous vim folding 
:loadview

#browsing from *.txt file (works not correct):
xargs -n1 firefox -private-window < foo_file.txt

#browsing from *.txt file (works not correct):
xargs -a foo_file.txt firefox -private-window "$line"

#browsing from *.txt file (works not correct):
xargs -a foo_file.txt firefox -private-window

#browsing urls from the file (works not correct):
#!/bin/bash
I=2;
while [ $I -le 3 ]; do
	sed '2! d' $HOME/data_file.txt | xargs firefox -private-window
	I=$(( I+1 ))
done

#browsing urls from the file:
while read line; do
	firefox -private-window "$line"
	sleep 1
done < /home/us/data_file.txt

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

#vim: delete all lines in the file after the cursor:
:dG

#show the first/last 10 lines of the foo_file:
head/tail foo_file

#terminal pomodoro_tool script:
#!/bin/bash
msg='########## TIME! ##########'
sleep 1500 && notify-send "$msg"

#today date to the end of the foo_file:
echo $(date +%F) >> foo_file

#ls command + group directories first:
ls -F --g

#-n flag is for the line numbers:
grep -nF '[!]' foo_file

#extracting the archive:
tar -xf palemoon-29.1.0.linux-x86_64-gtk2.tar.xz

#list of sleeping processes:
jobs

#xterm fullscreen:
<alt+enter>

#disabled beep sound on dell inspiron (freebsd os):
echo "sysctl kern.vt.enable_bell=0" >> /etc/sysctl.conf

#renaming several files:
for file in st*.sh ; do
	mv st3.sh stol_3.sh;
done

#renaming cyrillic files (not working):
mv cyrillic_named_file $(echo cyrillic_named_file | sed -e $(cat renaming_rule_file))
cat renaming_rule_file:
	's/ФФФ/fff/g'

#mounting on freebsd: 
mount -v -t msdosfs /dev/da0s1 /mnt/usb/
