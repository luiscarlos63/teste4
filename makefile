CC=gcc
CFLAGS=-g -I./hdr
DEPS=./hdr/esrg.h


OBJFIL=main.o esrg.o 
OBJDIR=./objct
OBJ=$(patsubst %,$(OBJDIR)/%,$(OBJFIL))

SRC=./src

$(OBJDIR)/%.o: $(SRC)/%.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

esrg: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)




.PHONY=clean print_vars
clean:
	rm -rf esrg $(OBJ)
	
