ifeq ($(CC),cc)
CC = gcc
endif
AR = ar rcv
ifeq ($(windir),)
EXE =
RM = rm -f
else
EXE = .exe
RM = del
endif

CFLAGS = -ffunction-sections -O3

ifneq (,$(findstring darwin,$(CROSS_COMPILE)))
    UNAME_S := Darwin
else
    UNAME_S := $(shell uname -s)
endif
ifeq ($(UNAME_S),Darwin)
    LDFLAGS += -Wl,-dead_strip
else
    LDFLAGS += -Wl,--gc-sections -s
endif

all:libmincrypt.a pxa-mkbootimg$(EXE) pxa-unpackbootimg$(EXE) pxa1088-dtbTool$(EXE) pxa1908-dtbTool$(EXE)

static:
	make LDFLAGS="$(LDFLAGS) -static"

libmincrypt.a:
	make -C libmincrypt

pxa-mkbootimg$(EXE):mkbootimg/mkbootimg.o
	$(CROSS_COMPILE)$(CC) -o $@ $^ -Llib -lmincrypt $(LDFLAGS)

pxa-mkbootimg/mkbootimg.o:mkbootimg/mkbootimg.c
	$(CROSS_COMPILE)$(CC) -o $@ $(CFLAGS) -c $< -I. -Icommon -Werror

pxa-unpackbootimg$(EXE):unpackbootimg/unpackbootimg.o
	$(CROSS_COMPILE)$(CC) -o $@ $^ $(LDFLAGS)

unpackbootimg/unpackbootimg.o:unpackbootimg/unpackbootimg.c
	$(CROSS_COMPILE)$(CC) -o $@ $(CFLAGS) -c $< -Icommon -Werror

pxa1088-dtbTool$(EXE):dtbtool/pxa1088-dtbtool.o
	$(CROSS_COMPILE)$(CC) -o $@ $^ $(LDFLAGS)

pxa1088-dtbtool.o:dtbtool/pxa1088-dtbtool.c
	$(CROSS_COMPILE)$(CC) -o $@ $(CFLAGS) -c $< -Werror

pxa1908-dtbTool$(EXE):dtbtool/pxa1908-dtbtool.o
	$(CROSS_COMPILE)$(CC) -o $@ $^ $(LDFLAGS)

pxa1908-dtbtool.o:dtbtool/pxa1908-dtbtool.c
	$(CROSS_COMPILE)$(CC) -o $@ $(CFLAGS) -c $< -Werror

clean:
	$(RM) pxa-mkbootimg pxa-unpackbootimg pxa1908-dtbTool pxa1088-dtbTool
	$(RM) *.a *.~ *.exe *.o
	make -C libmincrypt clean

