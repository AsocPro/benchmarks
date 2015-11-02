CFLAGS = -std=gnu11

ITERATIONS ?= 5

all: reduce_scm reduce_c

reduce_c: reduce_c.c

reduce_scm: reduce_scm.scm
	csc $^

test: 
	@zsh -c 'for b in *.sh; do for (( i=0; i < $(ITERATIONS); ++i )) LIMIT=999999 =time ./$$b; done'

clean:
	-rm reduce_c reduce_scm

.PHONY: test clean
