PREFIX ?= /usr/local

CC = $(shell xcrun --sdk macosx --find clang)
SDK = $(shell xcrun --sdk macosx --show-sdk-path)
INSTALL = $(shell xcrun --find install) -c

watch-sim:
	$(CC) -isysroot $(SDK) -ObjC -fobjc-arc -framework Foundation -o watch-sim watch-sim.m

all: watch-sim

install: all
	$(INSTALL) watch-sim $(PREFIX)/bin
