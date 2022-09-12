#!/bin/bash

PROGRAM_LIST="eog \
	vim \
	gcc \
	g++ \
	clang \
	nasm \
	ssh \
	redshift \
	geoclue-2.0 \
	libncurses5-dev \
	libncursesw5-dev \
	qbittorrent \
	texlive-base \
	texlive-latex-base\
	texlive-latex-extra \
	universal-ctags \
	mplayer \
	vlc \
	atril \
	evince \
	gimp \
	chromium \
	firefox-esr \
	doxygen \
	make \
	cmake \
	i3 \
	i3-status \
	youtube-dl \
	bpftrace \
	strace \
	atop \
	htop \
	"

apt-get install  $PROGRAM_LIST
