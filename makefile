#MSVC makefile for getopt
CC = cl

COPTS = /MD 
LOPTS = 

ya_getopt.obj: ya_getopt.c
	$(CC) $(COPTS) /c ya_getopt.c

all: ya_getopt.obj

install: ya_getopt.obj
	lib /OUT:getopt.lib ya_getopt.obj
	move getopt.lib ..\msvc\lib
	copy ya_getopt.h ..\msvc\include\getopt.h


clean: 
	del *.obj *.pdb *.ilk *.exe *.res
