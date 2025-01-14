#MSVC makefile for getopt
CC = cl

COPTS = 
LOPTS = 

ygo_static.lib: ygo_static.obj
	lib ygo_static.obj

ygo_dynamic.lib: ygo_dynamic.obj
	lib ygo_dynamic.obj

ygo_static.obj: ya_getopt.c
	$(CC) $(COPTS) /MT /Fo"ygo_static" /c ya_getopt.c

ygo_dynamic.obj: ya_getopt.c
	$(CC) $(COPTS) /MD /Fo"ygo_dynamic" /c ya_getopt.c

all: ygo_static.lib ygo_dynamic.lib

install: all
	move ygo_static.lib ..\msvc\lib
	move ygo_dynamic.lib ..\msvc\lib
	copy ya_getopt.h ..\msvc\include\getopt.h


clean: 
	del *.obj *.pdb *.ilk *.exe *.res
