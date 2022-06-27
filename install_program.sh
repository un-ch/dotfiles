#!/bin/bash

SOFT_LIST="eog \
	gcc \
	g++ \
	libncurses5-dev \
	libncursesw5-dev \
	"

apt-get install -y $SOFT_LIST
