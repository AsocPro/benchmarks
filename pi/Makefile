CFLAGS = -std=gnu11 -lm

ITERATIONS ?= 5
LIMIT ?= 999999
SEED ?= $(LIMIT)

all: pi_c pi_cpp


test: 
	@zsh -c 'for b in *.sh(*); do for (( i=0; i < $(ITERATIONS); ++i )) LIMIT=$(LIMIT) SEED=$(SEED) =time ./$$b; done'

clean:
	-rm pi_c pi_cpp *.o

.PHONY: test clean
