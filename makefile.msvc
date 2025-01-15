#MSVC makefile for getopt
CC = cl

COPTS = 
LOPTS = 

getopt.lib: getopt.obj
	lib getopt.obj

getopt-static.lib: getopt-static.obj
	lib getopt-static.obj

getopt.obj: ya_getopt.c
	$(CC) $(COPTS) /MD /Fo"getopt" /c ya_getopt.c

getopt-static.obj: ya_getopt.c
	$(CC) $(COPTS) /MT /Fo"getopt-static" /c ya_getopt.c

all: getopt.lib getopt-static.lib

install: all
	move getopt.lib ..\msvc\lib
	move getopt-static.lib ..\msvc\lib
	copy ya_getopt.h ..\msvc\include\getopt.h


clean: 
	del *.obj *.pdb *.ilk *.exe *.res
