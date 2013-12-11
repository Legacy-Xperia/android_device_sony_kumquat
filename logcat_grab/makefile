# logcat dumper by munjeni @ XDA 2013
CC=/root/arm-none-linux-gnueabi/arm-2011.03/bin/arm-none-linux-gnueabi-gcc

CFLAGS = -O2 -Wall -fpic -march=armv7-a -mfloat-abi=softfp -mfpu=vfp -static -I.

default:logcat_grab

logcat_grab:
	${CC} ${CFLAGS} system.c logcat_grab.c  -o logcat_grab

clean:
	rm -f logcat_grab *.o

distclean:
	rm -f logcat_grab *.o
