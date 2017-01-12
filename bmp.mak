#makefile for bmp.c, bmp.h, bmp_utils.c, bmp_utils.h

#you can comment out the all target in this file and
#include this makefile in another one

CC = gcc
FLAGS = -Wall -std=c99

all: bmp.o bmp_utils.o
	
bmp.o: bmp.c bmp.h
	$(CC) $(FLAGS) -c bmp.c

bmp_utils.o: bmp_utils.c bmp_utils.h
	$(CC) $(FLAGS) -c bmp_utils.c

bmp.h: bmp_utils.h

