PREFIX ?= /usr/local

CC = $(shell xcrun --sdk macosx --find clang)
SDK = $(shell xcrun --sdk macosx --show-sdk-path)
INSTALL = $(shell xcrun --find install) -c

watch-sim: watch-sim.m
	$(CC) -isysroot $(SDK) -ObjC -fobjc-arc -framework Foundation -g -o watch-sim watch-sim.m

all: watch-sim

install: all
	$(INSTALL) watch-sim $(PREFIX)/bin
