# Compiler 
CC ?= cc
CFLAGS ?= -O2 -Wall -Wextra

# Build po2lmo only (no core.so, no jsmin, no ucode)
all: po2lmo

# Build lemon parser generator
contrib/lemon: contrib/lemon.c contrib/lempar.c
    $(CC) -std=gnu17 -O2 -o $@ contrib/lemon.c

# Generate plural_formula.c and plural_formula.h from plural_formula.y
lib/plural_formula.c lib/plural_formula.h: lib/plural_formula.y contrib/lemon
    ./contrib/lemon -q lib/plural_formula.y

# Build object files
lib/lmo.o: lib/lmo.c lib/lmo.h lib/plural_formula.h
    $(CC) $(CFLAGS) -c -o $@ lib/lmo.c

po2lmo.o: po2lmo.c lib/lmo.h lib/plural_formula.h
    $(CC) $(CFLAGS) -c -o $@ po2lmo.c

lib/plural_formula.o: lib/plural_formula.c lib/plural_formula.h
    $(CC) $(CFLAGS) -c -o $@ lib/plural_formula.c

# Link final po2lmo binary
po2lmo: po2lmo.o lib/lmo.o lib/plural_formula.o
    $(CC) $(CFLAGS) -o $@ $^

clean:
    rm -f po2lmo *.o lib/*.o lib/plural_formula.c lib/plural_formula.h contrib/lemon
