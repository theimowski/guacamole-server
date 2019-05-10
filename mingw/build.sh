#!/bin/sh

cd ..

autoreconf -fi
CC=i686-w64-mingw32-gcc ./configure --host=i686-w64-mingw32 --disable-guacd
make