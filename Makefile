BENCHMARKS = pi reduce

all: $(BENCHMARKS)

$(BENCHMARKS):
	$(MAKE) -C $@

test: $(BENCHMARKS)
	$(MAKE) -C pi     $@
	$(MAKE) -C reduce $@

# There has just got to be a better way to do this
clean:
	$(MAKE) -C pi     $@
	$(MAKE) -C reduce $@


.PHONY: pi reduce clean
