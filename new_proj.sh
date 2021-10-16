#!/bin/bash

if [ "$1" = "" ]; then
	echo "ERROR: no project name";
	exit 1;
fi

# directories definitions:
PROJECT_DIR=$1	
PROJECT_NAME=$1
BUILD_DIR=build
INCLUDE_DIR=include
SRC_DIR=src

mkdir	$PROJECT_DIR \
		$PROJECT_DIR/$BUILD_DIR \
		$PROJECT_DIR/$INCLUDE_DIR \
		$PROJECT_DIR/$SRC_DIR

touch $PROJECT_DIR/Makefile

cat > $PROJECT_DIR/Makefile << EOF

CC			=	gcc
CFLAGS 		=	-Wall -g -I

# directories definitions:
BUILD_DIR	=	build
INCLUDE_DIR	=	include
SRC_DIR		=	src

SRC_FILES	=	\$(BUILD_DIR)/.c

OBJECT_FILES	=	\$(SRC_FILES:.c=.o)
HEADER_FILES	=	\$(wildcard \$(INCLUDE_DIR)/*.h)
#OBJECT_FILE = \$(patsubst \$(SRC_DIR)/%.c,\$(BUILD_DIR)/%.o,\$(SRC_FILES))

\$(BUILD_DIR)/%.o: \$(SRC_DIR)/%.c \$(INCLUDE_DIR)/%.h
	@\$(CC) \$(CFLAGS)\$(INCLUDE_DIR) -c \$< -o \$@

# targets:
$PROJECT_NAME: \$(SRC_DIR)/$PROJECT_NAME.c \$(OBJECT_FILES)
	@\$(CC) \$(CFLAGS) \$(INCLUDE_DIR) \$^ -o \$(BUILD_DIR)/\$@

.PHONY: run
run: $PROJECT_NAME
	@./\$(BUILD_DIR)/$PROJECT_NAME

.PHONY: clean
clean:
	@rm -f	\$(BUILD_DIR)/*.o \$(BUILD_DIR)/$PROJECT_NAME

.PHONY: delete_files
delete_files:
	@rm -f	\$(BUILD_DIR)/* \$(SRC_DIR)/* \$(INCLUDE_DIR)/*

EOF
