CFLAGS = -std=gnu11 -lm

ITERATIONS ?= 5
LIMIT ?= 999999

all: pi


test: 
	@zsh -c 'for b in *.sh(*); do for (( i=0; i < $(ITERATIONS); ++i )) LIMIT=$(LIMIT) =time ./$$b; done'

clean:
	-rm pi

.PHONY: test clean
