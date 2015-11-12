CFLAGS = -std=gnu11 -lm

ITERATIONS ?= 5
LIMIT ?= 999999

all: reduce_scm reduce_c reduce_cpp reduce_java go reduce_cobol

reduce_scm: reduce_scm.scm
	csc $^

go: reduce_go.go
	gccgo -o reduce_go reduce_go.go

reduce_cobol:
	cobc -x reduce_cobol.cbl

reduce_java:
	javac reduce_java.java

test: 
	@zsh -c 'for b in *.sh(*); do for (( i=0; i < $(ITERATIONS); ++i )) LIMIT=$(LIMIT) =time ./$$b; done'

clean:
	-rm -f reduce_c reduce_scm reduce_go reduce_cobol

.PHONY: test clean
