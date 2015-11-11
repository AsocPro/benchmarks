CFLAGS = -std=gnu11 -lm

ITERATIONS ?= 5
LIMIT ?= 999999

BINARIES = reduce_scm reduce_c reduce_cpp reduce_java.class

all: $(BINARIES)

reduce_scm: reduce_scm.scm
	csc $^

reduce_java.class:
	javac reduce_java.java

test: 
	@zsh -c 'for b in *.sh(*); do for (( i=0; i < $(ITERATIONS); ++i )) LIMIT=$(LIMIT) =time ./$$b; done'

clean:
	-rm -f $(BINARIES) *.class *.o

.PHONY: test clean
