CFLAGS = -std=gnu11 -lm

ITERATIONS ?= 5
LIMIT ?= 999999

BINARIES = reduce_scm reduce_c reduce_cpp reduce_java.class go reduce_cobol

all: $(BINARIES)

reduce_scm: reduce_scm.scm
	csc $^

reduce_java.class:
	javac reduce_java.java

go: reduce_go.go
	gccgo -o reduce_go reduce_go.go

reduce_cobol:
	cobc -x reduce_cobol.cbl

test: 
	@zsh -c 'for b in *.sh(*); do for (( i=0; i < $(ITERATIONS); ++i )) LIMIT=$(LIMIT) =time ./$$b; done'

clean:
	-rm -f $(BINARIES) *.o

.PHONY: test clean
