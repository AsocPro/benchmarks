BENCHMARKS = pi reduce

all: $(BENCHMARKS)

$(BENCHMARKS):
	$(MAKE) -C $@

# There has just got to be a better way to do this
clean:
	$(MAKE) -C pi     $@ 
	$(MAKE) -C reduce $@ 

.PHONY: pi reduce clean
