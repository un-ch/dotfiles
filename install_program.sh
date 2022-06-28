#!/bin/bash

PROGRAM_LIST="eog \
	vim \
	gcc \
	g++ \
	nasm \
	redshift \
	geoclue-2.0 \
	libncurses5-dev \
	libncursesw5-dev \
	qbittorrent \
	texlive-base \
	texlive-latex-base\
	universal-ctags \
	mplayer \
	vlc \
	atril \
	evince \
	gimp \
	chromium \
	firefox-esr \
	"
apt-get install  $PROGRAM_LIST
