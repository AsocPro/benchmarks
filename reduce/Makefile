CFLAGS = -std=gnu11 -lm

ITERATIONS ?= 5
LIMIT ?= 999999

all: reduce_scm reduce_c go

reduce_scm: reduce_scm.scm
	csc $^

go: go.go
	gccgo -o go go.go

test: 
	@zsh -c 'for b in *.sh(*); do for (( i=0; i < $(ITERATIONS); ++i )) LIMIT=$(LIMIT) =time ./$$b; done'

clean:
	-rm -f reduce_c reduce_scm go

.PHONY: test clean
