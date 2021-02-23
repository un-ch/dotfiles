#!/bin/bash

sed '1! d' todo_list.txt | xargs firefox --private-window
sed -i '/search_pattern/a new_text' todo_list.txt 
sed -i '/pattern/a\ \tnew_string' todo_list.txt
sed -i '/pattern/a\    foo' todo_list.txt

#replacing the character:
sed -i 's/+tod/!tod/g' todo_list.txt

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

#examples with find tool:
find . -name '*.flac' -o -name '*mp3' >> my_playlist_file

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
