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

# generating directories:
mkdir	$PROJECT_DIR \
		$PROJECT_DIR/$BUILD_DIR \
		$PROJECT_DIR/$INCLUDE_DIR \
		$PROJECT_DIR/$SRC_DIR

# generating the Makefile:
touch $PROJECT_DIR/Makefile

cat > $PROJECT_DIR/Makefile << EOF

CC			=	gcc
CFLAGS		=	-Wall -g -I

# directories definitions:
BUILD_DIR	=	build
INCLUDE_DIR	=	include
SRC_DIR		=	src

SRC_FILES	=	\$(BUILD_DIR)/.c

OBJECT_FILES=	\$(SRC_FILES:.c=.o)
HEADER_FILES=	\$(wildcard \$(INCLUDE_DIR)/*.h)

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

# generating the .gitignore file:
if [ "$2" = "-i" ]; then
	touch $PROJECT_DIR/.gitignore
	cat > $PROJECT_DIR/.gitignore << EOF
# The gitignore file specifies intentionally untracked files that Git
# should ignore.
#

*
!Makefile
!*.c
!*.h
!*/
EOF
fi
