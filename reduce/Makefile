CFLAGS = -std=gnu11 -lm -O3
CXXFLAGS = -O3
CSC_OPTIONS = -O4 -vv
HC_OPTIONS = -O2

ITERATIONS ?= 5
LIMIT ?= 999999

BINARIES = reduce_scm reduce_c reduce_cpp reduce_java.class reduce_go reduce_rust reduce_haskell 

all: $(BINARIES)

reduce_scm: reduce_scm.scm
	csc $(CSC_OPTIONS) $^

reduce_java.class: reduce_java.java
	javac $^

reduce_go: reduce_go.go
	gccgo -o $@ $^

reduce_rust: reduce_rust.rs
	rustc -C opt-level=3 -o $@ $^

reduce_haskell: reduce_haskell.hs
	ghc $(HC_OPTIONS) $^

test: 
	@zsh -c 'for b in *.sh(*); do for (( i=0; i < $(ITERATIONS); ++i )) LIMIT=$(LIMIT) =time ./$$b; done'

clean:
	-rm -f $(BINARIES) *.o *.hi

.PHONY: test clean
