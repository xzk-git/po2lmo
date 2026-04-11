# Compiler
ifeq ($(OS),Windows_NT)
LDFLAGS += -lws2_32
endif

CC ?= cc
HOSTCC ?= cc
CFLAGS ?= -O2 -Wall -Wextra

all: po2lmo

contrib/lemon: contrib/lemon.c contrib/lempar.c
	$(HOSTCC) -std=gnu17 -O2 -o $@ contrib/lemon.c

lib/plural_formula.c lib/plural_formula.h: lib/plural_formula.y contrib/lemon
	./contrib/lemon -q lib/plural_formula.y

lib/lmo.o: lib/lmo.c lib/lmo.h lib/plural_formula.h
	$(CC) $(CFLAGS) -c -o $@ lib/lmo.c

po2lmo.o: po2lmo.c lib/lmo.h lib/plural_formula.h
	$(CC) $(CFLAGS) -c -o $@ po2lmo.c

lib/plural_formula.o: lib/plural_formula.c lib/plural_formula.h
	$(CC) $(CFLAGS) -c -o $@ lib/plural_formula.c

po2lmo: po2lmo.o lib/lmo.o lib/plural_formula.o
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

clean:
	rm -f po2lmo *.o lib/*.o lib/plural_formula.c lib/plural_formula.h contrib/lemon
